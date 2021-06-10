//
//  TestFairy.m
//

#import "TestFairy.h"

@implementation TestFairyFeedbackContent
- (instancetype)initWith:(NSString *)text email:(NSString *)email timestamp:(long)timestamp  { self = [super init]; return self; }
- (instancetype)initWith:(NSString *)text email:(NSString *)email timestamp:(long)timestamp bitmap:(UIImage *)bitmap  { self = [super init]; return self; }
- (instancetype)initWith:(NSString *)text email:(NSString *)email timestamp:(long)timestamp bitmap:(UIImage *)bitmap attributes:(NSDictionary *)attributes { self = [super init]; return self; }
@end

@implementation TestFairyStringFeedbackFormField
- (instancetype)initWithAttribute:(NSString *)attribute
                            label:(NSString *)label
                      placeholder:(NSString *)placeholder
                     defaultValue:(NSString *)value { self = [super init]; return self; }
- (NSString *)getAttribute { return nil;}
- (NSString *)getValue { return nil; }
- (UIView *)onCreateView { return nil; }

@end

@implementation TestFairyTextAreaFeedbackFormField
- (instancetype)initWithAttribute:(NSString *)attribute
                      placeholder:(NSString *)placeholder
                     defaultValue:(NSString *)value { self = [super init]; return self; }
- (NSString *)getAttribute { return nil;}
- (NSString *)getValue { return nil; }
- (UIView *)onCreateView { return nil; }
@end

@implementation TestFairySelectFeedbackFormField
- (instancetype)initWithAttribute:(NSString *)attribute
                            label:(NSString *)label
                           values:(NSDictionary *)values
                     defaultValue:(NSString *)value { self = [super init]; return self; }
- (NSString *)getAttribute { return nil;}
- (NSString *)getValue { return nil; }
- (UIView *)onCreateView { return nil; }
@end

@implementation TestFairyFeedbackOptions

+ (instancetype)createWithBlock:(void (^)(TestFairyFeedbackOptionsBuilder *))block  { return [[TestFairyFeedbackOptions alloc] init]; }
@end

@implementation TestFairyFeedbackOptionsBuilder: NSObject
- (TestFairyFeedbackOptions *)build { return [[TestFairyFeedbackOptions alloc] init]; }
@end

@implementation TestFairy: NSObject
+ (void)begin:(NSString *)appToken {}
+ (void)begin:(NSString *)appToken withOptions:(NSDictionary *)options {}
+ (void)installCrashHandler:(NSString *)appToken {}
+ (void)installFeedbackHandler:(NSString *)appToken {}
+ (void)installFeedbackHandler:(NSString *)appToken method:(NSString *)method {}
+ (void)setServerEndpoint:(NSString *)serverOverride {}
+ (NSString *)version { return @""; }
+ (void)hideView:(UIView *)view {}
+ (void)unhideView:(UIView *)view {}
+ (void)hideWebViewElements:(NSString *)selector {}
+ (void)pushFeedbackController {}
+ (void)showFeedbackForm {}
+ (void)showFeedbackForm:(NSString *)appToken takeScreenshot:(BOOL)takeScreenshot {}
+ (void)startFeedback:(NSString *)appToken withIntent:(NSString *)intent {}
+ (void)sendUserFeedback:(NSString *)feedback {}
+ (void)sendUserFeedback:(NSString *)appToken text:(NSString *)text screenshot:(UIImage *)image {}
+ (void)updateLocation:(NSArray *)locations {}
+ (void)checkpoint:(NSString *)name {}
+ (void)addEvent:(NSString *)name {}
+ (void)addUserInteraction:(int)kind label:(NSString *)label info:(NSDictionary *)info {}
+ (void)setCorrelationId:(NSString *)correlationId {}
+ (void)identify:(NSString *)correlationId {};
+ (void)identify:(NSString *)correlationId traits:(NSDictionary *)traits {}
+ (void)pause {}
+ (void)resume {}
+ (NSString *)sessionUrl { return nil; }
+ (void)takeScreenshot {}
+ (void)takeScreenshot:(void(^)(UIImage *))callback {}
+ (void)addScreenshot:(UIImage *)image {}
+ (void)setScreenName:(NSString *)name {}
+ (void)stop {}
+ (BOOL)setAttribute:(NSString *)key withValue:(NSString *)value { return NO; }
+ (void)setUserId:(NSString *)userId {}
+ (void)log:(NSString *)message {}
+ (void)attachFile:(NSURL *)file {}
+ (BOOL)didLastSessionCrash { return NO; }
+ (void)enableCrashHandler {}
+ (void)disableCrashHandler {}
+ (void)enableMetric:(NSString *)metric {}
+ (void)disableMetric:(NSString *)metric {}
+ (void)enableVideo:(NSString *)policy quality:(NSString *)quality framesPerSecond:(float)fps {}
+ (void)enableVideo:(NSString *)policy {}
+ (void)disableVideo {}
+ (void)enableFeedbackForm:(NSString *) method {}
+ (void)disableFeedbackForm {}
+ (void)disableAutoUpdate {}
+ (void)setMaxSessionLength:(float)seconds {}
+ (void)setFeedbackEmailVisible:(BOOL)visible {}
+ (void)setFeedbackOptions:(NSDictionary *)options {}
+ (void)setTestFairyFeedbackOptions:(TestFairyFeedbackOptions *)options {}
+ (void)getDistributionStatus:(NSString *)appToken callback:(void(^)(NSDictionary<NSString *, NSString *> *, NSError*))callback {}
+ (void)setPublicKey:(NSString *)publicKey {}
+ (void)setEncryptionPolicy:(BOOL)encryptScreenshots encryptLogs:(BOOL)encryptLogs {}
+ (void)setSessionStateDelegate:(id<TestFairySessionStateDelegate>)delegate {}
+ (void)addNetwork:(NSURLSessionTask *)task error:(NSError *)error {}
+ (void)addNetwork:(NSURL *)url
            method:(NSString *)method
            code:(int)code
 startTimeInMillis:(long)startTime
   endTimeInMillis:(long)endTime
       requestSize:(long)requestSize
      responseSize:(long)responseSize
      errorMessage:(NSString*)error {}
+ (void)addNetwork:(NSURL *)url
            method:(NSString *)method
              code:(int)code
 startTimeInMillis:(long)startTime
   endTimeInMillis:(long)endTime
       requestSize:(long)requestSize
      responseSize:(long)responseSize
      errorMessage:(NSString*)error
    requestHeaders:(NSString*)requestHeaders
       requestBody:(NSData *)requestBody
   responseHeaders:(NSString *)responseHeaders
      responseBody:(NSData*)responseBody {}
+ (void)logError:(NSError *)error stacktrace:(NSArray *)trace {}
+ (void)logError:(NSError *)error {}
+ (void)crash {}

@end
