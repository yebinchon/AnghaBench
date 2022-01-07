; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TransformedBoxTrace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TransformedBoxTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double* }
%struct.TYPE_9__ = type { i32, float, float, double* }

@vec3_origin = common dso_local global double* null, align 8
@BOX_MODEL_HANDLE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TransformedBoxTrace(%struct.TYPE_8__* %0, double* %1, double* %2, double* %3, double* %4, i32 %5, i32 %6, double* %7, double* %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i64, align 8
  %25 = alloca double*, align 8
  %26 = alloca [2 x double*], align 16
  %27 = alloca [3 x double*], align 16
  %28 = alloca [3 x double*], align 16
  %29 = alloca i32, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %11, align 8
  store double* %1, double** %12, align 8
  store double* %2, double** %13, align 8
  store double* %3, double** %14, align 8
  store double* %4, double** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store double* %7, double** %18, align 8
  store double* %8, double** %19, align 8
  store i32 %9, i32* %20, align 4
  %34 = load double*, double** %14, align 8
  %35 = icmp ne double* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %10
  %37 = load double*, double** @vec3_origin, align 8
  store double* %37, double** %14, align 8
  br label %38

38:                                               ; preds = %36, %10
  %39 = load double*, double** %15, align 8
  %40 = icmp ne double* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load double*, double** @vec3_origin, align 8
  store double* %42, double** %15, align 8
  br label %43

43:                                               ; preds = %41, %38
  store i32 0, i32* %29, align 4
  br label %44

44:                                               ; preds = %126, %43
  %45 = load i32, i32* %29, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %129

47:                                               ; preds = %44
  %48 = load double*, double** %14, align 8
  %49 = load i32, i32* %29, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double*, double** %15, align 8
  %54 = load i32, i32* %29, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fadd double %52, %57
  %59 = fmul double %58, 5.000000e-01
  %60 = load double*, double** %25, align 8
  %61 = load i32, i32* %29, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double %59, double* %63, align 8
  %64 = load double*, double** %14, align 8
  %65 = load i32, i32* %29, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load double*, double** %25, align 8
  %70 = load i32, i32* %29, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fsub double %68, %73
  %75 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 0
  %76 = load double*, double** %75, align 16
  %77 = load i32, i32* %29, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double %74, double* %79, align 8
  %80 = load double*, double** %15, align 8
  %81 = load i32, i32* %29, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load double*, double** %25, align 8
  %86 = load i32, i32* %29, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fsub double %84, %89
  %91 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 1
  %92 = load double*, double** %91, align 8
  %93 = load i32, i32* %29, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  store double %90, double* %95, align 8
  %96 = load double*, double** %12, align 8
  %97 = load i32, i32* %29, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load double*, double** %25, align 8
  %102 = load i32, i32* %29, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fadd double %100, %105
  %107 = load double*, double** %22, align 8
  %108 = load i32, i32* %29, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  store double %106, double* %110, align 8
  %111 = load double*, double** %13, align 8
  %112 = load i32, i32* %29, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %25, align 8
  %117 = load i32, i32* %29, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fadd double %115, %120
  %122 = load double*, double** %23, align 8
  %123 = load i32, i32* %29, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %122, i64 %124
  store double %121, double* %125, align 8
  br label %126

126:                                              ; preds = %47
  %127 = load i32, i32* %29, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %29, align 4
  br label %44

129:                                              ; preds = %44
  %130 = load double*, double** %22, align 8
  %131 = load double*, double** %18, align 8
  %132 = load double*, double** %22, align 8
  %133 = call i32 @VectorSubtract(double* %130, double* %131, double* %132)
  %134 = load double*, double** %23, align 8
  %135 = load double*, double** %18, align 8
  %136 = load double*, double** %23, align 8
  %137 = call i32 @VectorSubtract(double* %134, double* %135, double* %136)
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @BOX_MODEL_HANDLE, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %129
  %142 = load double*, double** %19, align 8
  %143 = getelementptr inbounds double, double* %142, i64 0
  %144 = load double, double* %143, align 8
  %145 = fcmp une double %144, 0.000000e+00
  br i1 %145, label %156, label %146

146:                                              ; preds = %141
  %147 = load double*, double** %19, align 8
  %148 = getelementptr inbounds double, double* %147, i64 1
  %149 = load double, double* %148, align 8
  %150 = fcmp une double %149, 0.000000e+00
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load double*, double** %19, align 8
  %153 = getelementptr inbounds double, double* %152, i64 2
  %154 = load double, double* %153, align 8
  %155 = fcmp une double %154, 0.000000e+00
  br i1 %155, label %156, label %158

156:                                              ; preds = %151, %146, %141
  %157 = load i64, i64* @qtrue, align 8
  store i64 %157, i64* %24, align 8
  br label %160

158:                                              ; preds = %151, %129
  %159 = load i64, i64* @qfalse, align 8
  store i64 %159, i64* %24, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 1
  %162 = load double*, double** %161, align 8
  %163 = getelementptr inbounds double, double* %162, i64 0
  %164 = load double, double* %163, align 8
  %165 = fptrunc double %164 to float
  store float %165, float* %30, align 4
  %166 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 1
  %167 = load double*, double** %166, align 8
  %168 = getelementptr inbounds double, double* %167, i64 2
  %169 = load double, double* %168, align 8
  %170 = fptrunc double %169 to float
  store float %170, float* %31, align 4
  %171 = load i32, i32* %20, align 4
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %171, i32* %172, align 8
  %173 = load float, float* %30, align 4
  %174 = load float, float* %31, align 4
  %175 = fcmp ogt float %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %160
  %177 = load float, float* %31, align 4
  br label %180

178:                                              ; preds = %160
  %179 = load float, float* %30, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi float [ %177, %176 ], [ %179, %178 ]
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store float %181, float* %182, align 4
  %183 = load float, float* %31, align 4
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  store float %183, float* %184, align 8
  %185 = load float, float* %31, align 4
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %187 = load float, float* %186, align 4
  %188 = fsub float %185, %187
  store float %188, float* %32, align 4
  %189 = load i64, i64* %24, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %232

191:                                              ; preds = %180
  %192 = load double*, double** %19, align 8
  %193 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 0
  %194 = call i32 @CreateRotationMatrix(double* %192, double** %193)
  %195 = load double*, double** %22, align 8
  %196 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 0
  %197 = call i32 @RotatePoint(double* %195, double** %196)
  %198 = load double*, double** %23, align 8
  %199 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 0
  %200 = call i32 @RotatePoint(double* %198, double** %199)
  %201 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 0
  %202 = load double*, double** %201, align 16
  %203 = getelementptr inbounds double, double* %202, i64 2
  %204 = load double, double* %203, align 8
  %205 = load float, float* %32, align 4
  %206 = fpext float %205 to double
  %207 = fmul double %204, %206
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %209 = load double*, double** %208, align 8
  %210 = getelementptr inbounds double, double* %209, i64 0
  store double %207, double* %210, align 8
  %211 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 1
  %212 = load double*, double** %211, align 8
  %213 = getelementptr inbounds double, double* %212, i64 2
  %214 = load double, double* %213, align 8
  %215 = fneg double %214
  %216 = load float, float* %32, align 4
  %217 = fpext float %216 to double
  %218 = fmul double %215, %217
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %220 = load double*, double** %219, align 8
  %221 = getelementptr inbounds double, double* %220, i64 1
  store double %218, double* %221, align 8
  %222 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 2
  %223 = load double*, double** %222, align 16
  %224 = getelementptr inbounds double, double* %223, i64 2
  %225 = load double, double* %224, align 8
  %226 = load float, float* %32, align 4
  %227 = fpext float %226 to double
  %228 = fmul double %225, %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %230 = load double*, double** %229, align 8
  %231 = getelementptr inbounds double, double* %230, i64 2
  store double %228, double* %231, align 8
  br label %237

232:                                              ; preds = %180
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %234 = load double*, double** %233, align 8
  %235 = load float, float* %32, align 4
  %236 = call i32 @VectorSet(double* %234, i32 0, i32 0, float %235)
  br label %237

237:                                              ; preds = %232, %191
  %238 = load double*, double** %22, align 8
  %239 = load double*, double** %23, align 8
  %240 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 0
  %241 = load double*, double** %240, align 16
  %242 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 1
  %243 = load double*, double** %242, align 8
  %244 = load i32, i32* %16, align 4
  %245 = load double*, double** %18, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %20, align 4
  %248 = call i32 @CM_Trace(%struct.TYPE_8__* %21, double* %238, double* %239, double* %241, double* %243, i32 %244, double* %245, i32 %246, i32 %247, %struct.TYPE_9__* %33)
  %249 = load i64, i64* %24, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %237
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %253 = load double, double* %252, align 8
  %254 = fcmp une double %253, 1.000000e+00
  br i1 %254, label %255, label %264

255:                                              ; preds = %251
  %256 = getelementptr inbounds [3 x double*], [3 x double*]* %27, i64 0, i64 0
  %257 = getelementptr inbounds [3 x double*], [3 x double*]* %28, i64 0, i64 0
  %258 = call i32 @TransposeMatrix(double** %256, double** %257)
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load double*, double** %260, align 8
  %262 = getelementptr inbounds [3 x double*], [3 x double*]* %28, i64 0, i64 0
  %263 = call i32 @RotatePoint(double* %261, double** %262)
  br label %264

264:                                              ; preds = %255, %251, %237
  %265 = load double*, double** %12, align 8
  %266 = getelementptr inbounds double, double* %265, i64 0
  %267 = load double, double* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %269 = load double, double* %268, align 8
  %270 = load double*, double** %13, align 8
  %271 = getelementptr inbounds double, double* %270, i64 0
  %272 = load double, double* %271, align 8
  %273 = load double*, double** %12, align 8
  %274 = getelementptr inbounds double, double* %273, i64 0
  %275 = load double, double* %274, align 8
  %276 = fsub double %272, %275
  %277 = fmul double %269, %276
  %278 = fadd double %267, %277
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %280 = load double*, double** %279, align 8
  %281 = getelementptr inbounds double, double* %280, i64 0
  store double %278, double* %281, align 8
  %282 = load double*, double** %12, align 8
  %283 = getelementptr inbounds double, double* %282, i64 1
  %284 = load double, double* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %286 = load double, double* %285, align 8
  %287 = load double*, double** %13, align 8
  %288 = getelementptr inbounds double, double* %287, i64 1
  %289 = load double, double* %288, align 8
  %290 = load double*, double** %12, align 8
  %291 = getelementptr inbounds double, double* %290, i64 1
  %292 = load double, double* %291, align 8
  %293 = fsub double %289, %292
  %294 = fmul double %286, %293
  %295 = fadd double %284, %294
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %297 = load double*, double** %296, align 8
  %298 = getelementptr inbounds double, double* %297, i64 1
  store double %295, double* %298, align 8
  %299 = load double*, double** %12, align 8
  %300 = getelementptr inbounds double, double* %299, i64 2
  %301 = load double, double* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %303 = load double, double* %302, align 8
  %304 = load double*, double** %13, align 8
  %305 = getelementptr inbounds double, double* %304, i64 2
  %306 = load double, double* %305, align 8
  %307 = load double*, double** %12, align 8
  %308 = getelementptr inbounds double, double* %307, i64 2
  %309 = load double, double* %308, align 8
  %310 = fsub double %306, %309
  %311 = fmul double %303, %310
  %312 = fadd double %301, %311
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %314 = load double*, double** %313, align 8
  %315 = getelementptr inbounds double, double* %314, i64 2
  store double %312, double* %315, align 8
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %317 = bitcast %struct.TYPE_8__* %316 to i8*
  %318 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %317, i8* align 8 %318, i64 24, i1 false)
  ret void
}

declare dso_local i32 @VectorSubtract(double*, double*, double*) #1

declare dso_local i32 @CreateRotationMatrix(double*, double**) #1

declare dso_local i32 @RotatePoint(double*, double**) #1

declare dso_local i32 @VectorSet(double*, i32, i32, float) #1

declare dso_local i32 @CM_Trace(%struct.TYPE_8__*, double*, double*, double*, double*, i32, double*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @TransposeMatrix(double**, double**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
