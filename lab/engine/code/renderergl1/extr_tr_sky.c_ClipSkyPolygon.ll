; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_sky.c_ClipSkyPolygon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_sky.c_ClipSkyPolygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@MAX_CLIP_VERTS = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ClipSkyPolygon: MAX_CLIP_VERTS\00", align 1
@qfalse = common dso_local global i32 0, align 4
@sky_clip = common dso_local global float** null, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, i32)* @ClipSkyPolygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClipSkyPolygon(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* @MAX_CLIP_VERTS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca float, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @MAX_CLIP_VERTS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* @MAX_CLIP_VERTS, align 4
  %29 = zext i32 %28 to i64
  %30 = mul nuw i64 2, %29
  %31 = alloca float*, i64 %30, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MAX_CLIP_VERTS, align 4
  %34 = sub nsw i32 %33, 2
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %38 = load i32, i32* @ERR_DROP, align 4
  %39 = call i32 %37(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 6
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load float*, float** %5, align 8
  %46 = call i32 @AddSkyPolygon(i32 %44, float* %45)
  store i32 1, i32* %20, align 4
  br label %307

47:                                               ; preds = %40
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  %49 = load float**, float*** @sky_clip, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float*, float** %49, i64 %51
  %53 = load float*, float** %52, align 8
  store float* %53, float** %7, align 8
  store i32 0, i32* %18, align 4
  %54 = load float*, float** %5, align 8
  store float* %54, float** %8, align 8
  br label %55

55:                                               ; preds = %91, %47
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %55
  %60 = load float*, float** %8, align 8
  %61 = load float*, float** %7, align 8
  %62 = call float @DotProduct(float* %60, float* %61)
  store float %62, float* %11, align 4
  %63 = load float, float* %11, align 4
  %64 = load float, float* @ON_EPSILON, align 4
  %65 = fcmp ogt float %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @qtrue, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %27, i64 %69
  store i32 129, i32* %70, align 4
  br label %86

71:                                               ; preds = %59
  %72 = load float, float* %11, align 4
  %73 = load float, float* @ON_EPSILON, align 4
  %74 = fneg float %73
  %75 = fcmp olt float %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @qtrue, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %27, i64 %79
  store i32 130, i32* %80, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %27, i64 %83
  store i32 128, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %76
  br label %86

86:                                               ; preds = %85, %66
  %87 = load float, float* %11, align 4
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %24, i64 %89
  store float %87, float* %90, align 4
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  %94 = load float*, float** %8, align 8
  %95 = getelementptr inbounds float, float* %94, i64 3
  store float* %95, float** %8, align 8
  br label %55

96:                                               ; preds = %55
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %4, align 4
  %104 = load float*, float** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  call void @ClipSkyPolygon(i32 %103, float* %104, i32 %106)
  store i32 1, i32* %20, align 4
  br label %307

107:                                              ; preds = %99
  %108 = getelementptr inbounds i32, i32* %27, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %27, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = getelementptr inbounds float, float* %24, i64 0
  %114 = load float, float* %113, align 16
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %24, i64 %116
  store float %114, float* %117, align 4
  %118 = load float*, float** %5, align 8
  %119 = load float*, float** %5, align 8
  %120 = load i32, i32* %18, align 4
  %121 = mul nsw i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  %124 = call i32 @VectorCopy(float* %118, float* %123)
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %126, align 4
  store i32 0, i32* %18, align 4
  %127 = load float*, float** %5, align 8
  store float* %127, float** %8, align 8
  br label %128

128:                                              ; preds = %285, %107
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %290

132:                                              ; preds = %128
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %27, i64 %134
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %188 [
    i32 129, label %137
    i32 130, label %150
    i32 128, label %163
  ]

137:                                              ; preds = %132
  %138 = load float*, float** %8, align 8
  %139 = mul nsw i64 0, %29
  %140 = getelementptr inbounds float*, float** %31, i64 %139
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float*, float** %140, i64 %143
  %145 = load float*, float** %144, align 8
  %146 = call i32 @VectorCopy(float* %138, float* %145)
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %188

150:                                              ; preds = %132
  %151 = load float*, float** %8, align 8
  %152 = mul nsw i64 1, %29
  %153 = getelementptr inbounds float*, float** %31, i64 %152
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float*, float** %153, i64 %156
  %158 = load float*, float** %157, align 8
  %159 = call i32 @VectorCopy(float* %151, float* %158)
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  br label %188

163:                                              ; preds = %132
  %164 = load float*, float** %8, align 8
  %165 = mul nsw i64 0, %29
  %166 = getelementptr inbounds float*, float** %31, i64 %165
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float*, float** %166, i64 %169
  %171 = load float*, float** %170, align 8
  %172 = call i32 @VectorCopy(float* %164, float* %171)
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load float*, float** %8, align 8
  %177 = mul nsw i64 1, %29
  %178 = getelementptr inbounds float*, float** %31, i64 %177
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float*, float** %178, i64 %181
  %183 = load float*, float** %182, align 8
  %184 = call i32 @VectorCopy(float* %176, float* %183)
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %132, %163, %150, %137
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %27, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 128
  br i1 %193, label %212, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %27, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 128
  br i1 %200, label %212, label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %27, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %27, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %206, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %201, %194, %188
  br label %285

213:                                              ; preds = %201
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %24, i64 %215
  %217 = load float, float* %216, align 4
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %24, i64 %219
  %221 = load float, float* %220, align 4
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %24, i64 %224
  %226 = load float, float* %225, align 4
  %227 = fsub float %221, %226
  %228 = fdiv float %217, %227
  store float %228, float* %11, align 4
  store i32 0, i32* %19, align 4
  br label %229

229:                                              ; preds = %275, %213
  %230 = load i32, i32* %19, align 4
  %231 = icmp slt i32 %230, 3
  br i1 %231, label %232, label %278

232:                                              ; preds = %229
  %233 = load float*, float** %8, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %233, i64 %235
  %237 = load float, float* %236, align 4
  %238 = load float, float* %11, align 4
  %239 = load float*, float** %8, align 8
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %239, i64 %242
  %244 = load float, float* %243, align 4
  %245 = load float*, float** %8, align 8
  %246 = load i32, i32* %19, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fsub float %244, %249
  %251 = fmul float %238, %250
  %252 = fadd float %237, %251
  store float %252, float* %12, align 4
  %253 = load float, float* %12, align 4
  %254 = mul nsw i64 0, %29
  %255 = getelementptr inbounds float*, float** %31, i64 %254
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float*, float** %255, i64 %258
  %260 = load float*, float** %259, align 8
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  store float %253, float* %263, align 4
  %264 = load float, float* %12, align 4
  %265 = mul nsw i64 1, %29
  %266 = getelementptr inbounds float*, float** %31, i64 %265
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float*, float** %266, i64 %269
  %271 = load float*, float** %270, align 8
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  store float %264, float* %274, align 4
  br label %275

275:                                              ; preds = %232
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %19, align 4
  br label %229

278:                                              ; preds = %229
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 4
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %278, %212
  %286 = load i32, i32* %18, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %18, align 4
  %288 = load float*, float** %8, align 8
  %289 = getelementptr inbounds float, float* %288, i64 3
  store float* %289, float** %8, align 8
  br label %128

290:                                              ; preds = %128
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i64 0, %29
  %294 = getelementptr inbounds float*, float** %31, i64 %293
  %295 = getelementptr inbounds float*, float** %294, i64 0
  %296 = load float*, float** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, 1
  call void @ClipSkyPolygon(i32 %292, float* %296, i32 %298)
  %299 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = mul nsw i64 1, %29
  %302 = getelementptr inbounds float*, float** %31, i64 %301
  %303 = getelementptr inbounds float*, float** %302, i64 0
  %304 = load float*, float** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  call void @ClipSkyPolygon(i32 %300, float* %304, i32 %306)
  store i32 0, i32* %20, align 4
  br label %307

307:                                              ; preds = %290, %102, %43
  %308 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load i32, i32* %20, align 4
  switch i32 %309, label %311 [
    i32 0, label %310
    i32 1, label %310
  ]

310:                                              ; preds = %307, %307
  ret void

311:                                              ; preds = %307
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AddSkyPolygon(i32, float*) #2

declare dso_local float @DotProduct(float*, float*) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
