; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_PositionTestInPatchCollide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_PositionTestInPatchCollide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float*, float**, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { float*, i64, i64 }
%struct.patchCollide_s = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { float*, i64 }
%struct.TYPE_9__ = type { i64, i32, i64*, i64* }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_PositionTestInPatchCollide(%struct.TYPE_7__* %0, %struct.patchCollide_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.patchCollide_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca [4 x float], align 16
  %13 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.patchCollide_s* %1, %struct.patchCollide_s** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %3, align 4
  br label %268

20:                                               ; preds = %2
  %21 = load %struct.patchCollide_s*, %struct.patchCollide_s** %5, align 8
  %22 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %261, %20
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.patchCollide_s*, %struct.patchCollide_s** %5, align 8
  %27 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %266

30:                                               ; preds = %24
  %31 = load %struct.patchCollide_s*, %struct.patchCollide_s** %5, align 8
  %32 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %10, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %42 = call i32 @VectorCopy(float* %40, float* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  %47 = load float, float* %46, align 4
  %48 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  store float %47, float* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %30
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to float
  %60 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %61 = load float, float* %60, align 4
  %62 = fadd float %61, %59
  store float %62, float* %60, align 4
  %63 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load float*, float** %66, align 8
  %68 = call float @DotProduct(float* %63, float* %67)
  store float %68, float* %9, align 4
  %69 = load float, float* %9, align 4
  %70 = fcmp ogt float %69, 0.000000e+00
  br i1 %70, label %71, label %81

71:                                               ; preds = %54
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load float*, float** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = load float*, float** %13, align 8
  %80 = call i32 @VectorSubtract(float* %74, float* %78, float* %79)
  br label %91

81:                                               ; preds = %54
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load float*, float** %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = load float*, float** %13, align 8
  %90 = call i32 @VectorAdd(float* %84, float* %88, float* %89)
  br label %91

91:                                               ; preds = %81, %71
  br label %112

92:                                               ; preds = %30
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load float**, float*** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds float*, float** %95, i64 %98
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %102 = call float @DotProduct(float* %100, float* %101)
  store float %102, float* %8, align 4
  %103 = load float, float* %8, align 4
  %104 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %105 = load float, float* %104, align 4
  %106 = fsub float %105, %103
  store float %106, float* %104, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load float*, float** %108, align 8
  %110 = load float*, float** %13, align 8
  %111 = call i32 @VectorCopy(float* %109, float* %110)
  br label %112

112:                                              ; preds = %92, %91
  %113 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %114 = load float*, float** %13, align 8
  %115 = call float @DotProduct(float* %113, float* %114)
  %116 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %117 = load float, float* %116, align 4
  %118 = fsub float %115, %117
  %119 = fcmp ogt float %118, 0.000000e+00
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %261

121:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %249, %121
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %252

128:                                              ; preds = %122
  %129 = load %struct.patchCollide_s*, %struct.patchCollide_s** %5, align 8
  %130 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %138
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %10, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %128
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load float*, float** %150, align 8
  %152 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %153 = call i32 @VectorNegate(float* %151, float* %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load float*, float** %155, align 8
  %157 = getelementptr inbounds float, float* %156, i64 3
  %158 = load float, float* %157, align 4
  %159 = fneg float %158
  %160 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  store float %159, float* %160, align 4
  br label %173

161:                                              ; preds = %128
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load float*, float** %163, align 8
  %165 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %166 = call i32 @VectorCopy(float* %164, float* %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load float*, float** %168, align 8
  %170 = getelementptr inbounds float, float* %169, i64 3
  %171 = load float, float* %170, align 4
  %172 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  store float %171, float* %172, align 4
  br label %173

173:                                              ; preds = %161, %148
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %173
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sitofp i64 %183 to float
  %185 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %186 = load float, float* %185, align 4
  %187 = fadd float %186, %184
  store float %187, float* %185, align 4
  %188 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load float*, float** %191, align 8
  %193 = call float @DotProduct(float* %188, float* %192)
  store float %193, float* %9, align 4
  %194 = load float, float* %9, align 4
  %195 = fcmp ogt float %194, 0.000000e+00
  br i1 %195, label %196, label %206

196:                                              ; preds = %179
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load float*, float** %198, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load float*, float** %202, align 8
  %204 = load float*, float** %13, align 8
  %205 = call i32 @VectorSubtract(float* %199, float* %203, float* %204)
  br label %216

206:                                              ; preds = %179
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load float*, float** %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load float*, float** %212, align 8
  %214 = load float*, float** %13, align 8
  %215 = call i32 @VectorAdd(float* %209, float* %213, float* %214)
  br label %216

216:                                              ; preds = %206, %196
  br label %239

217:                                              ; preds = %173
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load float**, float*** %219, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds float*, float** %220, i64 %223
  %225 = load float*, float** %224, align 8
  %226 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %227 = call float @DotProduct(float* %225, float* %226)
  store float %227, float* %8, align 4
  %228 = load float, float* %8, align 4
  %229 = call i64 @fabs(float %228)
  %230 = sitofp i64 %229 to float
  %231 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %232 = load float, float* %231, align 4
  %233 = fadd float %232, %230
  store float %233, float* %231, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load float*, float** %235, align 8
  %237 = load float*, float** %13, align 8
  %238 = call i32 @VectorCopy(float* %236, float* %237)
  br label %239

239:                                              ; preds = %217, %216
  %240 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %241 = load float*, float** %13, align 8
  %242 = call float @DotProduct(float* %240, float* %241)
  %243 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %244 = load float, float* %243, align 4
  %245 = fsub float %242, %244
  %246 = fcmp ogt float %245, 0.000000e+00
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  br label %252

248:                                              ; preds = %239
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %122

252:                                              ; preds = %247, %122
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %261

259:                                              ; preds = %252
  %260 = load i32, i32* @qtrue, align 4
  store i32 %260, i32* %3, align 4
  br label %268

261:                                              ; preds = %258, %120
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 1
  store %struct.TYPE_9__* %265, %struct.TYPE_9__** %11, align 8
  br label %24

266:                                              ; preds = %24
  %267 = load i32, i32* @qfalse, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %266, %259, %18
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @VectorNegate(float*, float*) #1

declare dso_local i64 @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
