; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_is_spam_prob.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_is_spam_prob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__ }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bayes_is_spam_prob\0A%s\0A\00", align 1
@bl_head = common dso_local global %struct.TYPE_14__* null, align 8
@global_bayes = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@debug = common dso_local global i64 0, align 8
@debug_on = common dso_local global i32 0, align 4
@debug_buff = common dso_local global i8* null, align 8
@ds = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\01uid \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NOAIO = common dso_local global i32 0, align 4
@SPAM = common dso_local global i64 0, align 8
@HAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [73 x i8] c"mul_u = %.6lf, ngood = %lld, nbad = %lld, ngood_u = %lld, nbad_u = %lld\0A\00", align 1
@words = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"(%.3lf;%.3lf)%c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@words_prob = common dso_local global double* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"%lld : %.7lf     (%.3lf+%lf;%.3lf+%lf)\0A\00", align 1
@BAYES_MAX_WORDS = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@QR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%.3lf%c\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"RES: %.3lf\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @bayes_is_spam_prob(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @msg_verify(%struct.TYPE_13__* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store double -1.000000e+00, double* %3, align 8
  br label %608

35:                                               ; preds = %2
  %36 = load i32, i32* @verbosity, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bl_head, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %6, align 8
  br label %46

46:                                               ; preds = %65, %44
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @strstr(i8* %54, i8* %59)
  %61 = icmp ne i8* %60, null
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %51, %46
  %64 = phi i1 [ false, %46 ], [ %62, %51 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %6, align 8
  br label %46

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = icmp ne %struct.TYPE_14__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store double 1.000000e+00, double* %3, align 8
  br label %608

75:                                               ; preds = %69
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @global_bayes, i32 0, i32 0), align 8
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @global_bayes, i32 0, i32 1), align 8
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %78, %79
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %75
  store double 0.000000e+00, double* %3, align 8
  br label %608

87:                                               ; preds = %83
  store i64 0, i64* @debug, align 8
  %88 = load i64, i64* @debug, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  store i32 1, i32* @debug_on, align 4
  %91 = load i8*, i8** @debug_buff, align 8
  store i8* %91, i8** @ds, align 8
  br label %92

92:                                               ; preds = %90, %87
  store i32 0, i32* %10, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @strstr(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  %102 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @local_uid(i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.TYPE_12__* @conv_uid(i32 %106)
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %109 = icmp ne %struct.TYPE_12__* %108, null
  br i1 %109, label %110, label %173

110:                                              ; preds = %103
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @NOAIO, align 4
  %114 = call i32 @load_user_metafile(%struct.TYPE_12__* %111, i32 %112, i32 %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %116 = call i32 @user_loaded(%struct.TYPE_12__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  store double -2.000000e+00, double* %3, align 8
  br label %608

119:                                              ; preds = %110
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  %128 = load i64, i64* @SPAM, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %123, %131
  store i64 %132, i64* %14, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = load i64, i64* @HAM, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %136, %144
  store i64 %145, i64* %15, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %15, align 8
  %148 = add nsw i64 %146, %147
  store i64 %148, i64* %16, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp sge i64 %149, 50
  br i1 %150, label %151, label %172

151:                                              ; preds = %119
  %152 = load i64, i64* %14, align 8
  %153 = sitofp i64 %152 to double
  %154 = fmul double %153, 1.000000e+00
  %155 = load i64, i64* %15, align 8
  %156 = sitofp i64 %155 to double
  %157 = fdiv double %154, %156
  %158 = load i64, i64* %7, align 8
  %159 = sitofp i64 %158 to double
  %160 = fmul double 5.000000e+00, %159
  %161 = load i64, i64* %8, align 8
  %162 = sitofp i64 %161 to double
  %163 = fdiv double %160, %162
  %164 = fcmp ole double %157, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %151
  %166 = load i64, i64* %9, align 8
  %167 = sitofp i64 %166 to double
  %168 = load i64, i64* %16, align 8
  %169 = sitofp i64 %168 to double
  %170 = fdiv double %167, %169
  %171 = fdiv double %170, 1.000000e+01
  store double %171, double* %17, align 8
  br label %172

172:                                              ; preds = %165, %151, %119
  br label %173

173:                                              ; preds = %172, %103
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @get_words(i8* %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store double 1.000000e+00, double* %3, align 8
  br label %608

180:                                              ; preds = %173
  %181 = load i64, i64* %7, align 8
  %182 = sitofp i64 %181 to double
  %183 = fmul double 3.500000e+00, %182
  %184 = load i64, i64* %9, align 8
  %185 = sitofp i64 %184 to double
  %186 = fdiv double %183, %185
  store double %186, double* %18, align 8
  %187 = load i64, i64* %8, align 8
  %188 = sitofp i64 %187 to double
  %189 = fmul double 1.000000e+00, %188
  %190 = load i64, i64* %9, align 8
  %191 = sitofp i64 %190 to double
  %192 = fdiv double %189, %191
  store double %192, double* %19, align 8
  %193 = load i64, i64* @debug, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %180
  %196 = load i32, i32* @stderr, align 4
  %197 = load double, double* %17, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load i64, i64* %15, align 8
  %201 = load i64, i64* %14, align 8
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), double %197, i64 %198, i64 %199, i64 %200, i64 %201)
  br label %203

203:                                              ; preds = %195, %180
  %204 = load double, double* %17, align 8
  %205 = fptosi double %204 to i64
  %206 = load i64, i64* %8, align 8
  %207 = sitofp i64 %206 to double
  %208 = load i64, i64* %7, align 8
  %209 = sitofp i64 %208 to double
  %210 = load i64, i64* %15, align 8
  %211 = sitofp i64 %210 to double
  %212 = load i64, i64* %14, align 8
  %213 = sitofp i64 %212 to double
  %214 = call i32 (i8*, i64, double, double, double, double, ...) @debugp(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i64 %205, double %207, double %209, double %211, double %213)
  store i32 0, i32* %20, align 4
  br label %215

215:                                              ; preds = %476, %203
  %216 = load i64*, i64** @words, align 8
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %479

222:                                              ; preds = %215
  %223 = load i64*, i64** @words, align 8
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @HAM, align 8
  %229 = call double @bayes_get_count(%struct.TYPE_15__* @global_bayes, i64 %227, i64 %228)
  store double %229, double* %21, align 8
  %230 = load i64*, i64** @words, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @SPAM, align 8
  %236 = call double @bayes_get_count(%struct.TYPE_15__* @global_bayes, i64 %234, i64 %235)
  store double %236, double* %22, align 8
  %237 = load double, double* %21, align 8
  %238 = load double, double* %22, align 8
  %239 = fadd double %237, %238
  store double %239, double* %23, align 8
  %240 = load i64, i64* @debug, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %260

242:                                              ; preds = %222
  %243 = load i32, i32* @stderr, align 4
  %244 = load double, double* %21, align 8
  %245 = load double, double* %22, align 8
  %246 = load i64*, i64** @words, align 8
  %247 = load i32, i32* %20, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %246, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.5, i64 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), double %244, double %245, i32 %258)
  br label %260

260:                                              ; preds = %242, %222
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %262 = icmp ne %struct.TYPE_12__* %261, null
  br i1 %262, label %263, label %359

263:                                              ; preds = %260
  %264 = load double, double* %17, align 8
  %265 = fcmp ogt double %264, 1.000000e-09
  br i1 %265, label %266, label %359

266:                                              ; preds = %263
  %267 = load double, double* %17, align 8
  %268 = load i64, i64* %15, align 8
  %269 = sitofp i64 %268 to double
  %270 = fadd double %269, 0.000000e+00
  %271 = fmul double %267, %270
  %272 = load i64, i64* %14, align 8
  %273 = load i64, i64* %15, align 8
  %274 = add nsw i64 %272, %273
  %275 = add nsw i64 %274, 0
  %276 = sitofp i64 %275 to double
  %277 = fdiv double %271, %276
  %278 = load double, double* %23, align 8
  %279 = fmul double %277, %278
  %280 = load i64, i64* %9, align 8
  %281 = sitofp i64 %280 to double
  %282 = fdiv double %279, %281
  %283 = load double, double* %21, align 8
  %284 = fadd double %283, %282
  store double %284, double* %21, align 8
  %285 = load double, double* %17, align 8
  %286 = load i64, i64* %14, align 8
  %287 = sitofp i64 %286 to double
  %288 = fadd double %287, 0.000000e+00
  %289 = fmul double %285, %288
  %290 = load i64, i64* %14, align 8
  %291 = load i64, i64* %15, align 8
  %292 = add nsw i64 %290, %291
  %293 = add nsw i64 %292, 0
  %294 = sitofp i64 %293 to double
  %295 = fdiv double %289, %294
  %296 = load double, double* %23, align 8
  %297 = fmul double %295, %296
  %298 = load i64, i64* %9, align 8
  %299 = sitofp i64 %298 to double
  %300 = fdiv double %297, %299
  %301 = load double, double* %22, align 8
  %302 = fadd double %301, %300
  store double %302, double* %22, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load i64*, i64** @words, align 8
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @HAM, align 8
  %311 = call double @bayes_get_count(%struct.TYPE_15__* %304, i64 %309, i64 %310)
  %312 = load double, double* %17, align 8
  %313 = fmul double %311, %312
  %314 = load double, double* %21, align 8
  %315 = fadd double %314, %313
  store double %315, double* %21, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 1
  %318 = load i64*, i64** @words, align 8
  %319 = load i32, i32* %20, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @SPAM, align 8
  %324 = call double @bayes_get_count(%struct.TYPE_15__* %317, i64 %322, i64 %323)
  %325 = load double, double* %17, align 8
  %326 = fmul double %324, %325
  %327 = load double, double* %22, align 8
  %328 = fadd double %327, %326
  store double %328, double* %22, align 8
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = add i64 %331, 8
  %333 = load i64*, i64** @words, align 8
  %334 = load i32, i32* %20, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @HAM, align 8
  %339 = call double @bayes_local_get_count(i64 %332, i64 %337, i64 %338)
  %340 = load double, double* %17, align 8
  %341 = fmul double %339, %340
  %342 = load double, double* %21, align 8
  %343 = fadd double %342, %341
  store double %343, double* %21, align 8
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add i64 %346, 8
  %348 = load i64*, i64** @words, align 8
  %349 = load i32, i32* %20, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %348, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @SPAM, align 8
  %354 = call double @bayes_local_get_count(i64 %347, i64 %352, i64 %353)
  %355 = load double, double* %17, align 8
  %356 = fmul double %354, %355
  %357 = load double, double* %22, align 8
  %358 = fadd double %357, %356
  store double %358, double* %22, align 8
  br label %359

359:                                              ; preds = %266, %263, %260
  %360 = load i64, i64* @debug, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %380

362:                                              ; preds = %359
  %363 = load i32, i32* @stderr, align 4
  %364 = load double, double* %21, align 8
  %365 = load double, double* %22, align 8
  %366 = load i64*, i64** @words, align 8
  %367 = load i32, i32* %20, align 4
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %366, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  %373 = xor i1 %372, true
  %374 = zext i1 %373 to i32
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.5, i64 0, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = call i32 (i32, i8*, ...) @fprintf(i32 %363, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), double %364, double %365, i32 %378)
  br label %380

380:                                              ; preds = %362, %359
  %381 = load double, double* %18, align 8
  %382 = load double, double* %21, align 8
  %383 = load i64, i64* %8, align 8
  %384 = sitofp i64 %383 to double
  %385 = fadd double %384, 1.000000e+00
  %386 = load i64, i64* %7, align 8
  %387 = load i64, i64* %8, align 8
  %388 = add nsw i64 %386, %387
  %389 = add nsw i64 %388, 1
  %390 = sitofp i64 %389 to double
  %391 = fdiv double %385, %390
  %392 = fadd double %382, %391
  %393 = fmul double %381, %392
  store double %393, double* %24, align 8
  %394 = load double, double* %19, align 8
  %395 = load double, double* %22, align 8
  %396 = load i64, i64* %7, align 8
  %397 = sitofp i64 %396 to double
  %398 = fadd double %397, 1.000000e+00
  %399 = load i64, i64* %7, align 8
  %400 = load i64, i64* %8, align 8
  %401 = add nsw i64 %399, %400
  %402 = add nsw i64 %401, 1
  %403 = sitofp i64 %402 to double
  %404 = fdiv double %398, %403
  %405 = fadd double %395, %404
  %406 = fmul double %394, %405
  store double %406, double* %25, align 8
  %407 = load i64, i64* @debug, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %427

409:                                              ; preds = %380
  %410 = load i32, i32* @stderr, align 4
  %411 = load double, double* %24, align 8
  %412 = load double, double* %25, align 8
  %413 = load i64*, i64** @words, align 8
  %414 = load i32, i32* %20, align 4
  %415 = add nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i64, i64* %413, i64 %416
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  %420 = xor i1 %419, true
  %421 = zext i1 %420 to i32
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.5, i64 0, i64 %422
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = call i32 (i32, i8*, ...) @fprintf(i32 %410, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), double %411, double %412, i32 %425)
  br label %427

427:                                              ; preds = %409, %380
  %428 = load double, double* %25, align 8
  %429 = load double, double* %24, align 8
  %430 = load double, double* %25, align 8
  %431 = fadd double %429, %430
  %432 = fdiv double %428, %431
  %433 = load double*, double** @words_prob, align 8
  %434 = load i32, i32* %20, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds double, double* %433, i64 %435
  store double %432, double* %436, align 8
  %437 = load double*, double** @words_prob, align 8
  %438 = load i32, i32* %20, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds double, double* %437, i64 %439
  %441 = load double, double* %440, align 8
  %442 = fcmp olt double %441, 1.000000e-02
  br i1 %442, label %443, label %448

443:                                              ; preds = %427
  %444 = load double*, double** @words_prob, align 8
  %445 = load i32, i32* %20, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds double, double* %444, i64 %446
  store double 1.000000e-02, double* %447, align 8
  br label %448

448:                                              ; preds = %443, %427
  %449 = load double*, double** @words_prob, align 8
  %450 = load i32, i32* %20, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds double, double* %449, i64 %451
  %453 = load double, double* %452, align 8
  %454 = fcmp ogt double %453, 0x3FEFAE147AE147AE
  br i1 %454, label %455, label %460

455:                                              ; preds = %448
  %456 = load double*, double** @words_prob, align 8
  %457 = load i32, i32* %20, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds double, double* %456, i64 %458
  store double 0x3FEFAE147AE147AE, double* %459, align 8
  br label %460

460:                                              ; preds = %455, %448
  %461 = load i64*, i64** @words, align 8
  %462 = load i32, i32* %20, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i64, i64* %461, i64 %463
  %465 = load i64, i64* %464, align 8
  %466 = load double*, double** @words_prob, align 8
  %467 = load i32, i32* %20, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds double, double* %466, i64 %468
  %470 = load double, double* %469, align 8
  %471 = load double, double* %24, align 8
  %472 = load double, double* %21, align 8
  %473 = load double, double* %25, align 8
  %474 = load double, double* %22, align 8
  %475 = call i32 (i8*, i64, double, double, double, double, ...) @debugp(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %465, double %470, double %471, double %472, double %473, double %474)
  br label %476

476:                                              ; preds = %460
  %477 = load i32, i32* %20, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %20, align 4
  br label %215

479:                                              ; preds = %215
  %480 = load i32, i32* %20, align 4
  store i32 %480, i32* %26, align 4
  %481 = load i32, i32* @BAYES_MAX_WORDS, align 4
  %482 = sub nsw i32 %481, 1
  store i32 %482, i32* @QL, align 4
  %483 = load i32, i32* %26, align 4
  %484 = load i32, i32* @BAYES_MAX_WORDS, align 4
  %485 = sub nsw i32 %483, %484
  store i32 %485, i32* @QR, align 4
  %486 = load double*, double** @words_prob, align 8
  %487 = load i32, i32* %26, align 4
  %488 = sub nsw i32 %487, 1
  %489 = call i32 @my_qsort(double* %486, i32 0, i32 %488)
  %490 = load i64, i64* @debug, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %518

492:                                              ; preds = %479
  store i32 0, i32* %20, align 4
  br label %493

493:                                              ; preds = %514, %492
  %494 = load i32, i32* %20, align 4
  %495 = load i32, i32* %26, align 4
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %497, label %517

497:                                              ; preds = %493
  %498 = load i32, i32* @stderr, align 4
  %499 = load double*, double** @words_prob, align 8
  %500 = load i32, i32* %20, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds double, double* %499, i64 %501
  %503 = load double, double* %502, align 8
  %504 = load i32, i32* %20, align 4
  %505 = add nsw i32 %504, 1
  %506 = load i32, i32* %26, align 4
  %507 = icmp eq i32 %505, %506
  %508 = zext i1 %507 to i32
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.5, i64 0, i64 %509
  %511 = load i8, i8* %510, align 1
  %512 = sext i8 %511 to i32
  %513 = call i32 (i32, i8*, ...) @fprintf(i32 %498, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), double %503, i32 %512)
  br label %514

514:                                              ; preds = %497
  %515 = load i32, i32* %20, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %20, align 4
  br label %493

517:                                              ; preds = %493
  br label %518

518:                                              ; preds = %517, %479
  %519 = load i32, i32* @BAYES_MAX_WORDS, align 4
  store i32 %519, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %520 = load i32, i32* %26, align 4
  %521 = sub nsw i32 %520, 1
  store i32 %521, i32* %29, align 4
  store double 1.000000e+00, double* %18, align 8
  store double 1.000000e+00, double* %19, align 8
  br label %522

522:                                              ; preds = %579, %518
  %523 = load i32, i32* %27, align 4
  %524 = add nsw i32 %523, -1
  store i32 %524, i32* %27, align 4
  %525 = icmp sgt i32 %523, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %522
  %527 = load i32, i32* %28, align 4
  %528 = load i32, i32* %29, align 4
  %529 = icmp sle i32 %527, %528
  br label %530

530:                                              ; preds = %526, %522
  %531 = phi i1 [ false, %522 ], [ %529, %526 ]
  br i1 %531, label %532, label %580

532:                                              ; preds = %530
  %533 = load double*, double** @words_prob, align 8
  %534 = load i32, i32* %29, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds double, double* %533, i64 %535
  %537 = load double, double* %536, align 8
  %538 = load double*, double** @words_prob, align 8
  %539 = load i32, i32* %28, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds double, double* %538, i64 %540
  %542 = load double, double* %541, align 8
  %543 = fadd double %537, %542
  %544 = fcmp olt double 1.000000e+00, %543
  br i1 %544, label %545, label %562

545:                                              ; preds = %532
  %546 = load double*, double** @words_prob, align 8
  %547 = load i32, i32* %29, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds double, double* %546, i64 %548
  %550 = load double, double* %549, align 8
  %551 = load double, double* %18, align 8
  %552 = fmul double %551, %550
  store double %552, double* %18, align 8
  %553 = load double*, double** @words_prob, align 8
  %554 = load i32, i32* %29, align 4
  %555 = add nsw i32 %554, -1
  store i32 %555, i32* %29, align 4
  %556 = sext i32 %554 to i64
  %557 = getelementptr inbounds double, double* %553, i64 %556
  %558 = load double, double* %557, align 8
  %559 = fsub double 1.000000e+00, %558
  %560 = load double, double* %19, align 8
  %561 = fmul double %560, %559
  store double %561, double* %19, align 8
  br label %579

562:                                              ; preds = %532
  %563 = load double*, double** @words_prob, align 8
  %564 = load i32, i32* %28, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds double, double* %563, i64 %565
  %567 = load double, double* %566, align 8
  %568 = load double, double* %18, align 8
  %569 = fmul double %568, %567
  store double %569, double* %18, align 8
  %570 = load double*, double** @words_prob, align 8
  %571 = load i32, i32* %28, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %28, align 4
  %573 = sext i32 %571 to i64
  %574 = getelementptr inbounds double, double* %570, i64 %573
  %575 = load double, double* %574, align 8
  %576 = fsub double 1.000000e+00, %575
  %577 = load double, double* %19, align 8
  %578 = fmul double %577, %576
  store double %578, double* %19, align 8
  br label %579

579:                                              ; preds = %562, %545
  br label %522

580:                                              ; preds = %530
  %581 = load i64, i64* @debug, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %580
  %584 = load i32, i32* @stderr, align 4
  %585 = load double, double* %18, align 8
  %586 = load double, double* %18, align 8
  %587 = load double, double* %19, align 8
  %588 = fadd double %586, %587
  %589 = fdiv double %585, %588
  %590 = call i32 (i32, i8*, ...) @fprintf(i32 %584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), double %589)
  br label %591

591:                                              ; preds = %583, %580
  %592 = load i64, i64* @debug, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %598

594:                                              ; preds = %591
  %595 = load i32, i32* @stderr, align 4
  %596 = load i8*, i8** @debug_buff, align 8
  %597 = call i32 (i32, i8*, ...) @fprintf(i32 %595, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %596)
  br label %598

598:                                              ; preds = %594, %591
  %599 = load i64, i64* @debug, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %598
  store i32 0, i32* @debug_on, align 4
  store i64 0, i64* @debug, align 8
  br label %602

602:                                              ; preds = %601, %598
  %603 = load double, double* %18, align 8
  %604 = load double, double* %18, align 8
  %605 = load double, double* %19, align 8
  %606 = fadd double %604, %605
  %607 = fdiv double %603, %606
  store double %607, double* %3, align 8
  br label %608

608:                                              ; preds = %602, %179, %118, %86, %74, %34
  %609 = load double, double* %3, align 8
  ret double %609
}

declare dso_local i64 @msg_verify(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @local_uid(i32) #1

declare dso_local %struct.TYPE_12__* @conv_uid(i32) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_12__*) #1

declare dso_local i64 @get_words(i8*) #1

declare dso_local i32 @debugp(i8*, i64, double, double, double, double, ...) #1

declare dso_local double @bayes_get_count(%struct.TYPE_15__*, i64, i64) #1

declare dso_local double @bayes_local_get_count(i64, i64, i64) #1

declare dso_local i32 @my_qsort(double*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
