; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_tjunction.c_FixBrokenSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_tjunction.c_FixBrokenSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { float*, float**, i32**, i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@SURFACE_FACE = common dso_local global i64 0, align 8
@DEGENERATE_EPSILON = common dso_local global float 0.000000e+00, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"WARNING: Degenerate T-junction edge found, fixing...\0A\00", align 1
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FixBrokenSurface(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @qtrue, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @qfalse, align 4
  store i32 %16, i32* %2, align 4
  br label %281

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SURFACE_FACE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %2, align 4
  br label %281

25:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %269, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %272

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %281

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = srem i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %55
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @VectorSubtract(i32 %59, i32 %62, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call float @VectorLength(i32 %67)
  store float %68, float* %11, align 4
  %69 = load float, float* %11, align 4
  %70 = load float, float* @DEGENERATE_EPSILON, align 4
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %268

72:                                               ; preds = %39
  %73 = load i32, i32* @qfalse, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @SYS_VRB, align 4
  %75 = call i32 @Sys_FPrintf(i32 %74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SnapWeldVector(i32 %78, i32 %81, i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @VectorAdd(i32 %87, i32 %90, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @VectorNormalize(i32 %95, i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  %103 = load float, float* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  %108 = load float, float* %107, align 4
  %109 = fadd float %103, %108
  %110 = fmul float %109, 5.000000e-01
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %112 = load float*, float** %111, align 8
  %113 = getelementptr inbounds float, float* %112, i64 0
  store float %110, float* %113, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load float*, float** %115, align 8
  %117 = getelementptr inbounds float, float* %116, i64 1
  %118 = load float, float* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load float*, float** %120, align 8
  %122 = getelementptr inbounds float, float* %121, i64 1
  %123 = load float, float* %122, align 4
  %124 = fadd float %118, %123
  %125 = fmul float %124, 5.000000e-01
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  store float %125, float* %128, align 4
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %229, %72
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %232

133:                                              ; preds = %129
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load float**, float*** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float*, float** %136, i64 %138
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load float, float* %141, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load float**, float*** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float*, float** %145, i64 %147
  %149 = load float*, float** %148, align 8
  %150 = getelementptr inbounds float, float* %149, i64 0
  %151 = load float, float* %150, align 4
  %152 = fadd float %142, %151
  %153 = fmul float %152, 5.000000e-01
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %155 = load float**, float*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float*, float** %155, i64 %157
  %159 = load float*, float** %158, align 8
  %160 = getelementptr inbounds float, float* %159, i64 0
  store float %153, float* %160, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load float**, float*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float*, float** %163, i64 %165
  %167 = load float*, float** %166, align 8
  %168 = getelementptr inbounds float, float* %167, i64 1
  %169 = load float, float* %168, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load float**, float*** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float*, float** %172, i64 %174
  %176 = load float*, float** %175, align 8
  %177 = getelementptr inbounds float, float* %176, i64 1
  %178 = load float, float* %177, align 4
  %179 = fadd float %169, %178
  %180 = fmul float %179, 5.000000e-01
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %182 = load float**, float*** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %182, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds float, float* %186, i64 1
  store float %180, float* %187, align 4
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %225, %133
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 4
  br i1 %190, label %191, label %228

191:                                              ; preds = %188
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32**, i32*** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %202, %213
  %215 = ashr i32 %214, 1
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %215, i32* %224, align 4
  br label %225

225:                                              ; preds = %191
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %188

228:                                              ; preds = %188
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %129

232:                                              ; preds = %129
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %234 = call i32 @memcpy(%struct.TYPE_7__* %233, %struct.TYPE_7__* %7, i32 32)
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 2
  store i32 %236, i32* %10, align 4
  br label %237

237:                                              ; preds = %260, %232
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %237
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 %248
  store %struct.TYPE_7__* %249, %struct.TYPE_7__** %5, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %255
  store %struct.TYPE_7__* %256, %struct.TYPE_7__** %6, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %259 = call i32 @memcpy(%struct.TYPE_7__* %257, %struct.TYPE_7__* %258, i32 32)
  br label %260

260:                                              ; preds = %243
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  br label %237

263:                                              ; preds = %237
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %263, %39
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %26

272:                                              ; preds = %26
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %275, 3
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, i32* @qfalse, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %277, %272
  %280 = load i32, i32* %4, align 4
  store i32 %280, i32* %2, align 4
  br label %281

281:                                              ; preds = %279, %37, %23, %15
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @SnapWeldVector(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
