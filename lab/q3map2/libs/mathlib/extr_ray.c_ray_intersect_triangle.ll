; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_ray.c_ray_intersect_triangle.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_ray.c_ray_intersect_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32 }

@VEC_MAX = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ray_intersect_triangle(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* @VEC_MAX, align 4
  %23 = sitofp i32 %22 to float
  store float %23, float* %21, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %27 = call i32 @VectorSubtract(i32 %24, i32 %25, float* %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %31 = call i32 @VectorSubtract(i32 %28, i32 %29, float* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %36 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %37 = call i32 @CrossProduct(float* %34, float* %35, float* %36)
  %38 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %39 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %40 = call float @DotProduct(float* %38, float* %39)
  store float %40, float* %17, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @qtrue, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %5
  %45 = load float, float* %17, align 4
  %46 = load float, float* @EPSILON, align 4
  %47 = fcmp olt float %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load float, float* %21, align 4
  store float %49, float* %6, align 4
  br label %164

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %56 = call i32 @VectorSubtract(i32 %53, i32 %54, float* %55)
  %57 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %58 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %59 = call float @DotProduct(float* %57, float* %58)
  store float %59, float* %19, align 4
  %60 = load float, float* %19, align 4
  %61 = fpext float %60 to double
  %62 = fcmp olt double %61, 0.000000e+00
  br i1 %62, label %67, label %63

63:                                               ; preds = %50
  %64 = load float, float* %19, align 4
  %65 = load float, float* %17, align 4
  %66 = fcmp ogt float %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %50
  %68 = load float, float* %21, align 4
  store float %68, float* %6, align 4
  br label %164

69:                                               ; preds = %63
  %70 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %71 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %72 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %73 = call i32 @CrossProduct(float* %70, float* %71, float* %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %78 = call float @DotProduct(float* %76, float* %77)
  store float %78, float* %20, align 4
  %79 = load float, float* %20, align 4
  %80 = fpext float %79 to double
  %81 = fcmp olt double %80, 0.000000e+00
  br i1 %81, label %88, label %82

82:                                               ; preds = %69
  %83 = load float, float* %19, align 4
  %84 = load float, float* %20, align 4
  %85 = fadd float %83, %84
  %86 = load float, float* %17, align 4
  %87 = fcmp ogt float %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %69
  %89 = load float, float* %21, align 4
  store float %89, float* %6, align 4
  br label %164

90:                                               ; preds = %82
  %91 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %92 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %93 = call float @DotProduct(float* %91, float* %92)
  store float %93, float* %21, align 4
  %94 = load float, float* %17, align 4
  %95 = fdiv float 1.000000e+00, %94
  store float %95, float* %18, align 4
  %96 = load float, float* %18, align 4
  %97 = load float, float* %21, align 4
  %98 = fmul float %97, %96
  store float %98, float* %21, align 4
  br label %162

99:                                               ; preds = %5
  %100 = load float, float* %17, align 4
  %101 = load float, float* @EPSILON, align 4
  %102 = fneg float %101
  %103 = fcmp ogt float %100, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load float, float* %17, align 4
  %106 = load float, float* @EPSILON, align 4
  %107 = fcmp olt float %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load float, float* %21, align 4
  store float %109, float* %6, align 4
  br label %164

110:                                              ; preds = %104, %99
  %111 = load float, float* %17, align 4
  %112 = fdiv float 1.000000e+00, %111
  store float %112, float* %18, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %118 = call i32 @VectorSubtract(i32 %115, i32 %116, float* %117)
  %119 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %120 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %121 = call float @DotProduct(float* %119, float* %120)
  %122 = load float, float* %18, align 4
  %123 = fmul float %121, %122
  store float %123, float* %19, align 4
  %124 = load float, float* %19, align 4
  %125 = fpext float %124 to double
  %126 = fcmp olt double %125, 0.000000e+00
  br i1 %126, label %131, label %127

127:                                              ; preds = %110
  %128 = load float, float* %19, align 4
  %129 = fpext float %128 to double
  %130 = fcmp ogt double %129, 1.000000e+00
  br i1 %130, label %131, label %133

131:                                              ; preds = %127, %110
  %132 = load float, float* %21, align 4
  store float %132, float* %6, align 4
  br label %164

133:                                              ; preds = %127
  %134 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %135 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %136 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %137 = call i32 @CrossProduct(float* %134, float* %135, float* %136)
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %142 = call float @DotProduct(float* %140, float* %141)
  %143 = load float, float* %18, align 4
  %144 = fmul float %142, %143
  store float %144, float* %20, align 4
  %145 = load float, float* %20, align 4
  %146 = fpext float %145 to double
  %147 = fcmp olt double %146, 0.000000e+00
  br i1 %147, label %154, label %148

148:                                              ; preds = %133
  %149 = load float, float* %19, align 4
  %150 = load float, float* %20, align 4
  %151 = fadd float %149, %150
  %152 = fpext float %151 to double
  %153 = fcmp ogt double %152, 1.000000e+00
  br i1 %153, label %154, label %156

154:                                              ; preds = %148, %133
  %155 = load float, float* %21, align 4
  store float %155, float* %6, align 4
  br label %164

156:                                              ; preds = %148
  %157 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %158 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 0
  %159 = call float @DotProduct(float* %157, float* %158)
  %160 = load float, float* %18, align 4
  %161 = fmul float %159, %160
  store float %161, float* %21, align 4
  br label %162

162:                                              ; preds = %156, %90
  %163 = load float, float* %21, align 4
  store float %163, float* %6, align 4
  br label %164

164:                                              ; preds = %162, %154, %131, %108, %88, %67, %48
  %165 = load float, float* %6, align 4
  ret float %165
}

declare dso_local i32 @VectorSubtract(i32, i32, float*) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
