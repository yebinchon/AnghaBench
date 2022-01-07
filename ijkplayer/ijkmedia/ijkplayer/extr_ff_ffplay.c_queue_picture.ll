; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_queue_picture.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_queue_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64, double, i64, i64, i64, %struct.TYPE_23__, i32, %struct.TYPE_21__, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, i64, %struct.TYPE_22__, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, double, double, i32, i32, %struct.TYPE_22__, %struct.TYPE_20__*, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }

@MAX_DEVIATION = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"video accurate_seek start, is->seek_pos=%lld, pts=%lf, is->accurate_seek_time = %lld\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"video accurate_seek is error, is->drop_vframe_count=%d, now = %lld, pts = %lf\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"video accurate_seek is ok, is->drop_vframe_count =%d, is->seek_pos=%lld, pts=%lf\0A\00", align 1
@FFP_MSG_ACCURATE_SEEK_COMPLETE = common dso_local global i32 0, align 4
@FFP_MSG_VIDEO_SIZE_CHANGED = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Cannot initialize the conversion context\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Video: first frame decoded\0A\00", align 1
@FFP_MSG_VIDEO_DECODED_START = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@linesize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, double, double, i64, i32)* @queue_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_picture(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, double %2, double %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %14, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %345

30:                                               ; preds = %6
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %345

35:                                               ; preds = %30
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %345, label %40

40:                                               ; preds = %35
  %41 = load double, double* %10, align 8
  %42 = call i32 @isnan(double %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %282, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %17, align 8
  %48 = load double, double* %10, align 8
  %49 = fmul double %48, 1.000000e+03
  %50 = fmul double %49, 1.000000e+03
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  store double %50, double* %52, align 8
  %53 = load double, double* %10, align 8
  %54 = fmul double %53, 1.000000e+03
  %55 = fmul double %54, 1.000000e+03
  %56 = fptosi double %55 to i64
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i64 @llabs(i64 %60)
  store i64 %61, i64* %19, align 8
  %62 = load double, double* %10, align 8
  %63 = fmul double %62, 1.000000e+03
  %64 = fmul double %63, 1.000000e+03
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = fcmp olt double %64, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %44
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @MAX_DEVIATION, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %196

74:                                               ; preds = %70, %44
  %75 = call i32 (...) @av_gettime_relative()
  %76 = sdiv i32 %75, 1000
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %18, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %74
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @SDL_LockMutex(i32 %85)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 12
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %91
  %102 = load i64, i64* %18, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %96, %82
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @SDL_UnlockMutex(i32 %108)
  %110 = load i32, i32* @AV_LOG_INFO, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load double, double* %10, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %110, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %113, double %114, i64 %117)
  br label %119

119:                                              ; preds = %105, %74
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %175, %119
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 12
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %129, %124
  %136 = phi i1 [ false, %124 ], [ %134, %129 ]
  br i1 %136, label %137, label %176

137:                                              ; preds = %135
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %22, align 8
  %141 = load i64, i64* %22, align 8
  %142 = sitofp i64 %141 to double
  %143 = load double, double* %10, align 8
  %144 = fmul double %143, 1.000000e+03
  %145 = fmul double %144, 1.000000e+03
  %146 = fsub double %142, %145
  %147 = fptosi double %146 to i64
  store i64 %147, i64* %20, align 8
  %148 = load i64, i64* %22, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  store i64 %152, i64* %21, align 8
  %153 = load i64, i64* %20, align 8
  %154 = icmp sgt i64 %153, -100000
  br i1 %154, label %155, label %159

155:                                              ; preds = %137
  %156 = load i64, i64* %21, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %176

159:                                              ; preds = %155, %137
  %160 = call i32 @av_usleep(i32 20000)
  br label %161

161:                                              ; preds = %159
  %162 = call i32 (...) @av_gettime_relative()
  %163 = sdiv i32 %162, 1000
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %18, align 8
  %165 = load i64, i64* %18, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %169, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %161
  br label %176

175:                                              ; preds = %161
  br label %124

176:                                              ; preds = %174, %158, %135
  %177 = load i64, i64* %18, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %177, %180
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sle i64 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  store i32 1, i32* %7, align 4
  br label %528

187:                                              ; preds = %176
  %188 = load i32, i32* @AV_LOG_WARNING, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 4
  %192 = load i64, i64* %18, align 8
  %193 = load double, double* %10, align 8
  %194 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %188, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %191, i64 %192, double %193)
  store i32 1, i32* %16, align 4
  br label %195

195:                                              ; preds = %187
  br label %281

196:                                              ; preds = %70
  %197 = load i32, i32* @AV_LOG_INFO, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 14
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load double, double* %10, align 8
  %205 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %197, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %200, i64 %203, double %204)
  %206 = load i64, i64* %17, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %280

211:                                              ; preds = %196
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 14
  store i32 0, i32* %213, align 4
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @SDL_LockMutex(i32 %216)
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @SDL_CondSignal(i32 %222)
  %224 = load i64, i64* %17, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %224, %227
  br i1 %228, label %229, label %250

229:                                              ; preds = %211
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 12
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %234
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @SDL_CondWaitTimeout(i32 %242, i32 %245, i64 %248)
  br label %257

250:                                              ; preds = %234, %229, %211
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %252 = load i32, i32* @FFP_MSG_ACCURATE_SEEK_COMPLETE, align 4
  %253 = load double, double* %10, align 8
  %254 = fmul double %253, 1.000000e+03
  %255 = fptosi double %254 to i32
  %256 = call i32 @ffp_notify_msg2(%struct.TYPE_26__* %251, i32 %252, i32 %255)
  br label %257

257:                                              ; preds = %250, %239
  %258 = load i64, i64* %17, align 8
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %258, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 11
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %275, label %268

268:                                              ; preds = %263
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  store i32 1, i32* %270, align 8
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @SDL_UnlockMutex(i32 %273)
  store i32 1, i32* %7, align 4
  br label %528

275:                                              ; preds = %263, %257
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @SDL_UnlockMutex(i32 %278)
  br label %280

280:                                              ; preds = %275, %196
  br label %281

281:                                              ; preds = %280, %195
  br label %283

282:                                              ; preds = %40
  store i32 1, i32* %16, align 4
  br label %283

283:                                              ; preds = %282, %281
  %284 = load i32, i32* %16, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %340

286:                                              ; preds = %283
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 14
  store i32 0, i32* %288, align 4
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 9
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @SDL_LockMutex(i32 %291)
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  store i32 0, i32* %294, align 8
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 13
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @SDL_CondSignal(i32 %297)
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 12
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %319

303:                                              ; preds = %286
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 11
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %303
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 10
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @SDL_CondWaitTimeout(i32 %311, i32 %314, i64 %317)
  br label %335

319:                                              ; preds = %303, %286
  %320 = load double, double* %10, align 8
  %321 = call i32 @isnan(double %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %319
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %325 = load i32, i32* @FFP_MSG_ACCURATE_SEEK_COMPLETE, align 4
  %326 = load double, double* %10, align 8
  %327 = fmul double %326, 1.000000e+03
  %328 = fptosi double %327 to i32
  %329 = call i32 @ffp_notify_msg2(%struct.TYPE_26__* %324, i32 %325, i32 %328)
  br label %334

330:                                              ; preds = %319
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %332 = load i32, i32* @FFP_MSG_ACCURATE_SEEK_COMPLETE, align 4
  %333 = call i32 @ffp_notify_msg2(%struct.TYPE_26__* %331, i32 %332, i32 0)
  br label %334

334:                                              ; preds = %330, %323
  br label %335

335:                                              ; preds = %334, %308
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 9
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @SDL_UnlockMutex(i32 %338)
  br label %340

340:                                              ; preds = %335, %283
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 3
  store i64 0, i64* %342, align 8
  store i32 0, i32* %16, align 4
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 2
  store double 0.000000e+00, double* %344, align 8
  br label %345

345:                                              ; preds = %340, %35, %30, %6
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 7
  %348 = call %struct.TYPE_25__* @frame_queue_peek_writable(i32* %347)
  store %struct.TYPE_25__* %348, %struct.TYPE_25__** %15, align 8
  %349 = icmp ne %struct.TYPE_25__* %348, null
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  store i32 -1, i32* %7, align 4
  br label %528

351:                                              ; preds = %345
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 7
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 3
  %356 = bitcast %struct.TYPE_22__* %353 to i8*
  %357 = bitcast %struct.TYPE_22__* %355 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %356, i8* align 8 %357, i64 8, i1 false)
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 8
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %359, align 8
  %361 = icmp ne %struct.TYPE_20__* %360, null
  br i1 %361, label %362, label %391

362:                                              ; preds = %351
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 10
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %391

367:                                              ; preds = %362
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %370, %373
  br i1 %374, label %391, label %375

375:                                              ; preds = %367
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %378, %381
  br i1 %382, label %391, label %383

383:                                              ; preds = %375
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %387, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %386, %389
  br i1 %390, label %391, label %447

391:                                              ; preds = %383, %375, %367, %362, %351
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %394, %397
  br i1 %398, label %407, label %399

399:                                              ; preds = %391
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %402, %405
  br i1 %406, label %407, label %417

407:                                              ; preds = %399, %391
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %409 = load i32, i32* @FFP_MSG_VIDEO_SIZE_CHANGED, align 4
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = call i32 @ffp_notify_msg3(%struct.TYPE_26__* %408, i32 %409, i64 %412, i64 %415)
  br label %417

417:                                              ; preds = %407, %399
  %418 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %419 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %418, i32 0, i32 10
  store i64 0, i64* %419, align 8
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i32 0, i32 0
  store i64 %422, i64* %424, align 8
  %425 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %429 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %428, i32 0, i32 1
  store i64 %427, i64* %429, align 8
  %430 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 2
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %434 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %433, i32 0, i32 2
  store i64 %432, i64* %434, align 8
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %436 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = call i32 @alloc_picture(%struct.TYPE_26__* %435, i64 %438)
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %417
  store i32 -1, i32* %7, align 4
  br label %528

446:                                              ; preds = %417
  br label %447

447:                                              ; preds = %446, %383
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %449 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i32 0, i32 8
  %450 = load %struct.TYPE_20__*, %struct.TYPE_20__** %449, align 8
  %451 = icmp ne %struct.TYPE_20__* %450, null
  br i1 %451, label %452, label %527

452:                                              ; preds = %447
  %453 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %454 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %453, i32 0, i32 8
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %454, align 8
  %456 = call i32 @SDL_VoutLockYUVOverlay(%struct.TYPE_20__* %455)
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %458 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i32 0, i32 8
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %458, align 8
  %460 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %461 = call i64 @SDL_VoutFillFrameYUVOverlay(%struct.TYPE_20__* %459, %struct.TYPE_27__* %460)
  %462 = icmp slt i64 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %452
  %464 = load i32, i32* @AV_LOG_FATAL, align 4
  %465 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %464, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %466 = call i32 @exit(i32 1) #4
  unreachable

467:                                              ; preds = %452
  %468 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %469 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %468, i32 0, i32 8
  %470 = load %struct.TYPE_20__*, %struct.TYPE_20__** %469, align 8
  %471 = call i32 @SDL_VoutUnlockYUVOverlay(%struct.TYPE_20__* %470)
  %472 = load double, double* %10, align 8
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 3
  store double %472, double* %474, align 8
  %475 = load double, double* %11, align 8
  %476 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %477 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %476, i32 0, i32 4
  store double %475, double* %477, align 8
  %478 = load i64, i64* %12, align 8
  %479 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %480 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %479, i32 0, i32 9
  store i64 %478, i64* %480, align 8
  %481 = load i32, i32* %13, align 4
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 5
  store i32 %481, i32* %483, align 8
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 7
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %487 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %486, i32 0, i32 3
  %488 = bitcast %struct.TYPE_22__* %485 to i8*
  %489 = bitcast %struct.TYPE_22__* %487 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %488, i8* align 8 %489, i64 8, i1 false)
  %490 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 7
  %492 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 8
  %496 = load %struct.TYPE_20__*, %struct.TYPE_20__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i32 0, i32 1
  store i32 %493, i32* %497, align 4
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 7
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 8
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i32 0, i32 0
  store i32 %501, i32* %505, align 4
  %506 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %507 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %506, i32 0, i32 7
  %508 = call i32 @frame_queue_push(i32* %507)
  %509 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %510 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %509, i32 0, i32 6
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %526, label %514

514:                                              ; preds = %467
  %515 = call i32 @ALOGD(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %516 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %517 = load i32, i32* @FFP_MSG_VIDEO_DECODED_START, align 4
  %518 = call i32 @ffp_notify_msg1(%struct.TYPE_26__* %516, i32 %517)
  %519 = call i32 (...) @SDL_GetTickHR()
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 6
  %522 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %521, i32 0, i32 1
  store i32 %519, i32* %522, align 4
  %523 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %524 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %523, i32 0, i32 6
  %525 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %524, i32 0, i32 0
  store i32 1, i32* %525, align 8
  br label %526

526:                                              ; preds = %514, %467
  br label %527

527:                                              ; preds = %526, %447
  store i32 0, i32* %7, align 4
  br label %528

528:                                              ; preds = %527, %445, %350, %268, %186
  %529 = load i32, i32* %7, align 4
  ret i32 %529
}

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @llabs(i64) #1

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @SDL_LockMutex(i32) #1

declare dso_local i32 @SDL_UnlockMutex(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @SDL_CondSignal(i32) #1

declare dso_local i32 @SDL_CondWaitTimeout(i32, i32, i64) #1

declare dso_local i32 @ffp_notify_msg2(%struct.TYPE_26__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @frame_queue_peek_writable(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ffp_notify_msg3(%struct.TYPE_26__*, i32, i64, i64) #1

declare dso_local i32 @alloc_picture(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @SDL_VoutLockYUVOverlay(%struct.TYPE_20__*) #1

declare dso_local i64 @SDL_VoutFillFrameYUVOverlay(%struct.TYPE_20__*, %struct.TYPE_27__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @SDL_VoutUnlockYUVOverlay(%struct.TYPE_20__*) #1

declare dso_local i32 @frame_queue_push(i32*) #1

declare dso_local i32 @ALOGD(i8*) #1

declare dso_local i32 @ffp_notify_msg1(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @SDL_GetTickHR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
