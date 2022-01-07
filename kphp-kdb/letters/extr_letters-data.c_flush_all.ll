; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_flush_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MAX_PRIORITY = common dso_local global i32 0, align 4
@sync_active = common dso_local global i64* null, align 8
@sync_aiocb = common dso_local global %struct.TYPE_7__* null, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%d aio_sync didn't complete for 120 seconds, invoking fsync()!\0A\00", align 1
@sync_last = common dso_local global i64* null, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%d aio_fsync() completed successfully\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%d error syncing %s: %m\0A\00", align 1
@fnames = common dso_local global i8** null, align 8
@fd = common dso_local global i32* null, align 8
@O_DSYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%d aio_fsync() for %s failed: %m\0A\00", align 1
@letter_stat = common dso_local global i32** null, align 8
@log_drive = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"%d queued aio_fsync() for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%d error syncing %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%d sync ok for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%d error resyncing %s: %m\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Warning. fsync time = %.9lf at time %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @save_index()
  %8 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %9 = call double @get_utime(i32 %8)
  %10 = fneg double %9
  store double %10, double* %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %249, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAX_PRIORITY, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %252

15:                                               ; preds = %11
  %16 = load i64*, i64** @sync_active, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %118

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = call i32 @aio_error(%struct.TYPE_7__* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EINPROGRESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %22
  %32 = load i64, i64* @now, align 8
  %33 = load i64*, i64** @sync_active, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 120
  %39 = icmp sgt i64 %32, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = load i32, i32* @stderr, align 4
  %42 = load i64, i64* @now, align 8
  %43 = sitofp i64 %42 to double
  %44 = call i32 (i32, i8*, double, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), double %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = call i32 @aio_cancel(i32 %50, %struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @fsync(i32 %61)
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %40, %31, %22
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @EINPROGRESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %117

67:                                               ; preds = %63
  %68 = load i64*, i64** @sync_active, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = call i32 @aio_return(%struct.TYPE_7__* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %67
  %80 = load i64, i64* @now, align 8
  %81 = load i64*, i64** @sync_last, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %80, i64* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 4
  %90 = load i32, i32* @verbosity, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load i32, i32* @stderr, align 4
  %94 = load i64, i64* @now, align 8
  %95 = sitofp i64 %94 to double
  %96 = call i32 (i32, i8*, double, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), double %95)
  br label %97

97:                                               ; preds = %92, %79
  br label %116

98:                                               ; preds = %67
  %99 = load i32, i32* @stderr, align 4
  %100 = load i64, i64* @now, align 8
  %101 = sitofp i64 %100 to double
  %102 = load i8**, i8*** @fnames, align 8
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, double, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), double %101, i8* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @fsync(i32 %114)
  store i32 1, i32* %6, align 4
  br label %116

116:                                              ; preds = %98, %97
  br label %117

117:                                              ; preds = %116, %63
  br label %118

118:                                              ; preds = %117, %15
  %119 = load i64*, i64** @sync_active, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %204, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %204, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = call i32 @memset(%struct.TYPE_7__* %132, i32 0, i32 4)
  %134 = load i32*, i32** @fd, align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* @O_DSYNC, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sync_aiocb, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = call i64 @aio_fsync(i32 %145, %struct.TYPE_7__* %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %128
  %153 = load i32, i32* @stderr, align 4
  %154 = load i64, i64* @now, align 8
  %155 = sitofp i64 %154 to double
  %156 = load i8**, i8*** @fnames, align 8
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i32, i8*, double, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), double %155, i8* %161)
  %163 = load i32*, i32** @fd, align 8
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @fsync(i32 %168)
  store i32 1, i32* %6, align 4
  br label %170

170:                                              ; preds = %152, %128
  %171 = load i64, i64* @now, align 8
  %172 = load i64*, i64** @sync_active, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %171, i64* %175, align 8
  %176 = load i32, i32* %4, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %170
  %179 = load i32**, i32*** @letter_stat, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %179, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 5
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %178, %170
  %189 = load i32, i32* @verbosity, align 4
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i64, i64* @log_drive, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %191, %188
  %195 = load i64, i64* @now, align 8
  %196 = load i8**, i8*** @fnames, align 8
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %196, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %195, i8* %201)
  br label %203

203:                                              ; preds = %194, %191
  br label %204

204:                                              ; preds = %203, %125, %118
  %205 = load i32, i32* %2, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %248

207:                                              ; preds = %204
  %208 = load i32*, i32** @fd, align 8
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @fsync(i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %207
  %217 = load i32, i32* @stderr, align 4
  %218 = load i64, i64* @now, align 8
  %219 = sitofp i64 %218 to double
  %220 = load i8**, i8*** @fnames, align 8
  %221 = load i32, i32* %4, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %220, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i32, i8*, double, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), double %219, i8* %225)
  br label %247

227:                                              ; preds = %207
  %228 = load i64, i64* @now, align 8
  %229 = load i64*, i64** @sync_last, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  store i64 %228, i64* %232, align 8
  %233 = load i32, i32* @verbosity, align 4
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %246

235:                                              ; preds = %227
  %236 = load i32, i32* @stderr, align 4
  %237 = load i64, i64* @now, align 8
  %238 = sitofp i64 %237 to double
  %239 = load i8**, i8*** @fnames, align 8
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %239, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i32, i8*, double, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), double %238, i8* %244)
  br label %246

246:                                              ; preds = %235, %227
  br label %247

247:                                              ; preds = %246, %216
  br label %248

248:                                              ; preds = %247, %204
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %4, align 4
  br label %11

252:                                              ; preds = %11
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %290

255:                                              ; preds = %252
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %281, %255
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* @MAX_PRIORITY, align 4
  %259 = icmp sle i32 %257, %258
  br i1 %259, label %260, label %284

260:                                              ; preds = %256
  %261 = load i32*, i32** @fd, align 8
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i64 @fsync(i32 %266)
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %260
  %270 = load i32, i32* @stderr, align 4
  %271 = load i64, i64* @now, align 8
  %272 = sitofp i64 %271 to double
  %273 = load i8**, i8*** @fnames, align 8
  %274 = load i32, i32* %4, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %273, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 (i32, i8*, double, ...) @fprintf(i32 %270, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), double %272, i8* %278)
  store i32 1, i32* %6, align 4
  br label %280

280:                                              ; preds = %269, %260
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %4, align 4
  br label %256

284:                                              ; preds = %256
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = call i32 @exit(i32 3) #3
  unreachable

289:                                              ; preds = %284
  br label %290

290:                                              ; preds = %289, %252
  %291 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %292 = call double @get_utime(i32 %291)
  %293 = load double, double* %3, align 8
  %294 = fadd double %293, %292
  store double %294, double* %3, align 8
  %295 = load double, double* %3, align 8
  %296 = fcmp oge double %295, 1.000000e-01
  br i1 %296, label %297, label %302

297:                                              ; preds = %290
  %298 = load i32, i32* @stderr, align 4
  %299 = load double, double* %3, align 8
  %300 = load i64, i64* @now, align 8
  %301 = call i32 (i32, i8*, double, ...) @fprintf(i32 %298, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), double %299, i64 %300)
  br label %302

302:                                              ; preds = %297, %290
  ret void
}

declare dso_local i32 @save_index(...) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @aio_error(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, double, ...) #1

declare dso_local i32 @aio_cancel(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @aio_return(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @aio_fsync(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @kprintf(i8*, i64, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
