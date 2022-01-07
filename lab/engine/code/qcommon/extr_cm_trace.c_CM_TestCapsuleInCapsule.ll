; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TestCapsuleInCapsule.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TestCapsuleInCapsule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i8*, i8* }
%struct.TYPE_5__ = type { double*, float }

@qtrue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TestCapsuleInCapsule(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca [2 x double*], align 16
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load double*, double** %6, align 8
  %22 = load double*, double** %7, align 8
  %23 = call i32 @CM_ModelBounds(i32 %20, double* %21, double* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load double*, double** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load double*, double** %29, align 8
  %31 = load double*, double** %8, align 8
  %32 = call i32 @VectorAdd(double* %26, double* %30, double* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load double*, double** %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load double*, double** %38, align 8
  %40 = load double*, double** %9, align 8
  %41 = call i32 @VectorSubtract(double* %35, double* %39, double* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %94, %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load double*, double** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double*, double** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fadd double %50, %55
  %57 = fmul double %56, 5.000000e-01
  %58 = load double*, double** %13, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  store double %57, double* %61, align 8
  %62 = load double*, double** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %13, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fsub double %66, %71
  %73 = getelementptr inbounds [2 x double*], [2 x double*]* %14, i64 0, i64 0
  %74 = load double*, double** %73, align 16
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  store double %72, double* %77, align 8
  %78 = load double*, double** %7, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load double*, double** %13, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fsub double %82, %87
  %89 = getelementptr inbounds [2 x double*], [2 x double*]* %14, i64 0, i64 1
  %90 = load double*, double** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  store double %88, double* %93, align 8
  br label %94

94:                                               ; preds = %45
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %42

97:                                               ; preds = %42
  %98 = getelementptr inbounds [2 x double*], [2 x double*]* %14, i64 0, i64 1
  %99 = load double*, double** %98, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = fptrunc double %101 to float
  store float %102, float* %16, align 4
  %103 = getelementptr inbounds [2 x double*], [2 x double*]* %14, i64 0, i64 1
  %104 = load double*, double** %103, align 8
  %105 = getelementptr inbounds double, double* %104, i64 2
  %106 = load double, double* %105, align 8
  %107 = fptrunc double %106 to float
  store float %107, float* %17, align 4
  %108 = load float, float* %16, align 4
  %109 = load float, float* %17, align 4
  %110 = fcmp ogt float %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = load float, float* %17, align 4
  br label %115

113:                                              ; preds = %97
  %114 = load float, float* %16, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi float [ %112, %111 ], [ %114, %113 ]
  store float %116, float* %15, align 4
  %117 = load float, float* %17, align 4
  %118 = load float, float* %15, align 4
  %119 = fsub float %117, %118
  store float %119, float* %18, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load float, float* %122, align 8
  %124 = load float, float* %15, align 4
  %125 = fadd float %123, %124
  %126 = call float @Square(float %125)
  store float %126, float* %19, align 4
  %127 = load double*, double** %13, align 8
  %128 = load double*, double** %10, align 8
  %129 = call i32 @VectorCopy(double* %127, double* %128)
  %130 = load float, float* %18, align 4
  %131 = fpext float %130 to double
  %132 = load double*, double** %10, align 8
  %133 = getelementptr inbounds double, double* %132, i64 2
  %134 = load double, double* %133, align 8
  %135 = fadd double %134, %131
  store double %135, double* %133, align 8
  %136 = load double*, double** %10, align 8
  %137 = load double*, double** %8, align 8
  %138 = load double*, double** %12, align 8
  %139 = call i32 @VectorSubtract(double* %136, double* %137, double* %138)
  %140 = load double*, double** %12, align 8
  %141 = call float @VectorLengthSquared(double* %140)
  %142 = load float, float* %19, align 4
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %115
  %145 = load i8*, i8** @qtrue, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i8* %145, i8** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  store i8* %145, i8** %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %144, %115
  %156 = load double*, double** %10, align 8
  %157 = load double*, double** %9, align 8
  %158 = load double*, double** %12, align 8
  %159 = call i32 @VectorSubtract(double* %156, double* %157, double* %158)
  %160 = load double*, double** %12, align 8
  %161 = call float @VectorLengthSquared(double* %160)
  %162 = load float, float* %19, align 4
  %163 = fcmp olt float %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %155
  %165 = load i8*, i8** @qtrue, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  store i8* %165, i8** %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  store i8* %165, i8** %171, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %164, %155
  %176 = load double*, double** %13, align 8
  %177 = load double*, double** %11, align 8
  %178 = call i32 @VectorCopy(double* %176, double* %177)
  %179 = load float, float* %18, align 4
  %180 = fpext float %179 to double
  %181 = load double*, double** %11, align 8
  %182 = getelementptr inbounds double, double* %181, i64 2
  %183 = load double, double* %182, align 8
  %184 = fsub double %183, %180
  store double %184, double* %182, align 8
  %185 = load double*, double** %11, align 8
  %186 = load double*, double** %8, align 8
  %187 = load double*, double** %12, align 8
  %188 = call i32 @VectorSubtract(double* %185, double* %186, double* %187)
  %189 = load double*, double** %12, align 8
  %190 = call float @VectorLengthSquared(double* %189)
  %191 = load float, float* %19, align 4
  %192 = fcmp olt float %190, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %175
  %194 = load i8*, i8** @qtrue, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  store i8* %194, i8** %200, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %193, %175
  %205 = load double*, double** %11, align 8
  %206 = load double*, double** %9, align 8
  %207 = load double*, double** %12, align 8
  %208 = call i32 @VectorSubtract(double* %205, double* %206, double* %207)
  %209 = load double*, double** %12, align 8
  %210 = call float @VectorLengthSquared(double* %209)
  %211 = load float, float* %19, align 4
  %212 = fcmp olt float %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %204
  %214 = load i8*, i8** @qtrue, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i8* %214, i8** %217, align 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  store i8* %214, i8** %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %213, %204
  %225 = load double*, double** %8, align 8
  %226 = getelementptr inbounds double, double* %225, i64 2
  %227 = load double, double* %226, align 8
  %228 = load double*, double** %10, align 8
  %229 = getelementptr inbounds double, double* %228, i64 2
  %230 = load double, double* %229, align 8
  %231 = fcmp oge double %227, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %224
  %233 = load double*, double** %8, align 8
  %234 = getelementptr inbounds double, double* %233, i64 2
  %235 = load double, double* %234, align 8
  %236 = load double*, double** %11, align 8
  %237 = getelementptr inbounds double, double* %236, i64 2
  %238 = load double, double* %237, align 8
  %239 = fcmp ole double %235, %238
  br i1 %239, label %256, label %240

240:                                              ; preds = %232, %224
  %241 = load double*, double** %9, align 8
  %242 = getelementptr inbounds double, double* %241, i64 2
  %243 = load double, double* %242, align 8
  %244 = load double*, double** %10, align 8
  %245 = getelementptr inbounds double, double* %244, i64 2
  %246 = load double, double* %245, align 8
  %247 = fcmp oge double %243, %246
  br i1 %247, label %248, label %281

248:                                              ; preds = %240
  %249 = load double*, double** %9, align 8
  %250 = getelementptr inbounds double, double* %249, i64 2
  %251 = load double, double* %250, align 8
  %252 = load double*, double** %11, align 8
  %253 = getelementptr inbounds double, double* %252, i64 2
  %254 = load double, double* %253, align 8
  %255 = fcmp ole double %251, %254
  br i1 %255, label %256, label %281

256:                                              ; preds = %248, %232
  %257 = load double*, double** %10, align 8
  %258 = getelementptr inbounds double, double* %257, i64 2
  store double 0.000000e+00, double* %258, align 8
  %259 = load double*, double** %8, align 8
  %260 = getelementptr inbounds double, double* %259, i64 2
  store double 0.000000e+00, double* %260, align 8
  %261 = load double*, double** %8, align 8
  %262 = load double*, double** %10, align 8
  %263 = load double*, double** %12, align 8
  %264 = call i32 @VectorSubtract(double* %261, double* %262, double* %263)
  %265 = load double*, double** %12, align 8
  %266 = call float @VectorLengthSquared(double* %265)
  %267 = load float, float* %19, align 4
  %268 = fcmp olt float %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %256
  %270 = load i8*, i8** @qtrue, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  store i8* %270, i8** %273, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 2
  store i8* %270, i8** %276, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  store i64 0, i64* %279, align 8
  br label %280

280:                                              ; preds = %269, %256
  br label %281

281:                                              ; preds = %280, %248, %240
  ret void
}

declare dso_local i32 @CM_ModelBounds(i32, double*, double*) #1

declare dso_local i32 @VectorAdd(double*, double*, double*) #1

declare dso_local i32 @VectorSubtract(double*, double*, double*) #1

declare dso_local float @Square(float) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local float @VectorLengthSquared(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
