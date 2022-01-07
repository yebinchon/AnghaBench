; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TraceThroughSphere.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TraceThroughSphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { float, i32, %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@qtrue = common dso_local global i8* null, align 8
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4
@RADIUS_EPSILON = common dso_local global float 0.000000e+00, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughSphere(%struct.TYPE_7__* %0, float* %1, float %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store float* %1, float** %7, align 8
  store float %2, float* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %23 = load float*, float** %9, align 8
  %24 = load float*, float** %7, align 8
  %25 = load float*, float** %21, align 8
  %26 = call i32 @VectorSubtract(float* %23, float* %24, float* %25)
  %27 = load float*, float** %21, align 8
  %28 = call float @VectorLengthSquared(float* %27)
  store float %28, float* %11, align 4
  %29 = load float, float* %11, align 4
  %30 = load float, float* %8, align 4
  %31 = call float @Square(float %30)
  %32 = fcmp olt float %29, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %5
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store float 0.000000e+00, float* %36, align 8
  %37 = load i8*, i8** @qtrue, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i8* %37, i8** %40, align 8
  %41 = load float*, float** %10, align 8
  %42 = load float*, float** %7, align 8
  %43 = load float*, float** %21, align 8
  %44 = call i32 @VectorSubtract(float* %41, float* %42, float* %43)
  %45 = load float*, float** %21, align 8
  %46 = call float @VectorLengthSquared(float* %45)
  store float %46, float* %11, align 4
  %47 = load float, float* %11, align 4
  %48 = load float, float* %8, align 4
  %49 = call float @Square(float %48)
  %50 = fcmp olt float %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load i8*, i8** @qtrue, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %33
  br label %237

57:                                               ; preds = %5
  %58 = load float*, float** %10, align 8
  %59 = load float*, float** %9, align 8
  %60 = load float*, float** %21, align 8
  %61 = call i32 @VectorSubtract(float* %58, float* %59, float* %60)
  %62 = load float*, float** %21, align 8
  %63 = call float @VectorNormalize(float* %62)
  store float %63, float* %13, align 4
  %64 = load float*, float** %7, align 8
  %65 = load float*, float** %9, align 8
  %66 = load float*, float** %10, align 8
  %67 = load float*, float** %21, align 8
  %68 = call float @CM_DistanceFromLineSquared(float* %64, float* %65, float* %66, float* %67)
  store float %68, float* %11, align 4
  %69 = load float*, float** %10, align 8
  %70 = load float*, float** %7, align 8
  %71 = load float*, float** %20, align 8
  %72 = call i32 @VectorSubtract(float* %69, float* %70, float* %71)
  %73 = load float*, float** %20, align 8
  %74 = call float @VectorLengthSquared(float* %73)
  store float %74, float* %12, align 4
  %75 = load float, float* %11, align 4
  %76 = load float, float* %8, align 4
  %77 = call float @Square(float %76)
  %78 = fcmp oge float %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %57
  %80 = load float, float* %12, align 4
  %81 = load float, float* %8, align 4
  %82 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %83 = fadd float %81, %82
  %84 = call float @Square(float %83)
  %85 = fcmp ogt float %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %237

87:                                               ; preds = %79, %57
  %88 = load float*, float** %9, align 8
  %89 = load float*, float** %7, align 8
  %90 = load float*, float** %20, align 8
  %91 = call i32 @VectorSubtract(float* %88, float* %89, float* %90)
  %92 = load float*, float** %21, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %20, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = fmul float %94, %97
  %99 = load float*, float** %21, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %20, align 8
  %103 = getelementptr inbounds float, float* %102, i64 1
  %104 = load float, float* %103, align 4
  %105 = fmul float %101, %104
  %106 = fadd float %98, %105
  %107 = load float*, float** %21, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %20, align 8
  %111 = getelementptr inbounds float, float* %110, i64 2
  %112 = load float, float* %111, align 4
  %113 = fmul float %109, %112
  %114 = fadd float %106, %113
  %115 = fmul float 2.000000e+00, %114
  store float %115, float* %16, align 4
  %116 = load float*, float** %20, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %20, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  %121 = load float, float* %120, align 4
  %122 = fmul float %118, %121
  %123 = load float*, float** %20, align 8
  %124 = getelementptr inbounds float, float* %123, i64 1
  %125 = load float, float* %124, align 4
  %126 = load float*, float** %20, align 8
  %127 = getelementptr inbounds float, float* %126, i64 1
  %128 = load float, float* %127, align 4
  %129 = fmul float %125, %128
  %130 = fadd float %122, %129
  %131 = load float*, float** %20, align 8
  %132 = getelementptr inbounds float, float* %131, i64 2
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %20, align 8
  %135 = getelementptr inbounds float, float* %134, i64 2
  %136 = load float, float* %135, align 4
  %137 = fmul float %133, %136
  %138 = fadd float %130, %137
  %139 = load float, float* %8, align 4
  %140 = load float, float* @RADIUS_EPSILON, align 4
  %141 = fadd float %139, %140
  %142 = load float, float* %8, align 4
  %143 = load float, float* @RADIUS_EPSILON, align 4
  %144 = fadd float %142, %143
  %145 = fmul float %141, %144
  %146 = fsub float %138, %145
  store float %146, float* %17, align 4
  %147 = load float, float* %16, align 4
  %148 = load float, float* %16, align 4
  %149 = fmul float %147, %148
  %150 = load float, float* %17, align 4
  %151 = fmul float 4.000000e+00, %150
  %152 = fsub float %149, %151
  store float %152, float* %18, align 4
  %153 = load float, float* %18, align 4
  %154 = fcmp ogt float %153, 0.000000e+00
  br i1 %154, label %155, label %232

155:                                              ; preds = %87
  %156 = load float, float* %18, align 4
  %157 = call float @SquareRootFloat(float %156)
  store float %157, float* %19, align 4
  %158 = load float, float* %16, align 4
  %159 = fneg float %158
  %160 = load float, float* %19, align 4
  %161 = fsub float %159, %160
  %162 = fmul float %161, 5.000000e-01
  store float %162, float* %15, align 4
  %163 = load float, float* %15, align 4
  %164 = fcmp olt float %163, 0.000000e+00
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  store float 0.000000e+00, float* %15, align 4
  br label %170

166:                                              ; preds = %155
  %167 = load float, float* %13, align 4
  %168 = load float, float* %15, align 4
  %169 = fdiv float %168, %167
  store float %169, float* %15, align 4
  br label %170

170:                                              ; preds = %166, %165
  %171 = load float, float* %15, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load float, float* %174, align 8
  %176 = fcmp olt float %171, %175
  br i1 %176, label %177, label %231

177:                                              ; preds = %170
  %178 = load float, float* %15, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store float %178, float* %181, align 8
  %182 = load float*, float** %10, align 8
  %183 = load float*, float** %9, align 8
  %184 = load float*, float** %21, align 8
  %185 = call i32 @VectorSubtract(float* %182, float* %183, float* %184)
  %186 = load float*, float** %9, align 8
  %187 = load float, float* %15, align 4
  %188 = load float*, float** %21, align 8
  %189 = load float*, float** %22, align 8
  %190 = call i32 @VectorMA(float* %186, float %187, float* %188, float* %189)
  %191 = load float*, float** %22, align 8
  %192 = load float*, float** %7, align 8
  %193 = load float*, float** %21, align 8
  %194 = call i32 @VectorSubtract(float* %191, float* %192, float* %193)
  %195 = load float, float* %8, align 4
  %196 = load float, float* @RADIUS_EPSILON, align 4
  %197 = fadd float %195, %196
  %198 = fdiv float 1.000000e+00, %197
  store float %198, float* %14, align 4
  %199 = load float*, float** %21, align 8
  %200 = load float, float* %14, align 4
  %201 = load float*, float** %21, align 8
  %202 = call i32 @VectorScale(float* %199, float %200, float* %201)
  %203 = load float*, float** %21, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @VectorCopy(float* %203, i32 %208)
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load float*, float** %22, align 8
  %214 = load float*, float** %22, align 8
  %215 = call i32 @VectorAdd(i32 %212, float* %213, float* %214)
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load float*, float** %22, align 8
  %222 = call i32 @DotProduct(i32 %220, float* %221)
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  store i32 %222, i32* %226, align 4
  %227 = load i32, i32* @CONTENTS_BODY, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 4
  br label %231

231:                                              ; preds = %177, %170
  br label %237

232:                                              ; preds = %87
  %233 = load float, float* %18, align 4
  %234 = fcmp oeq float %233, 0.000000e+00
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %236

236:                                              ; preds = %235, %232
  br label %237

237:                                              ; preds = %56, %86, %236, %231
  ret void
}

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @VectorLengthSquared(float*) #1

declare dso_local float @Square(float) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local float @CM_DistanceFromLineSquared(float*, float*, float*, float*) #1

declare dso_local float @SquareRootFloat(float) #1

declare dso_local i32 @VectorMA(float*, float, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local i32 @VectorAdd(i32, float*, float*) #1

declare dso_local i32 @DotProduct(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
