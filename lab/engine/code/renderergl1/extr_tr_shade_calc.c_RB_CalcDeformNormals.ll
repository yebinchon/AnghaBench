; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcDeformNormals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade_calc.c_RB_CalcDeformNormals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, float }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcDeformNormals(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %8 = inttoptr i64 %7 to float*
  store float* %8, float** %5, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %10 = inttoptr i64 %9 to float*
  store float* %10, float** %6, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %119, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %126

15:                                               ; preds = %11
  store float 0x3FEF5C2900000000, float* %4, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = load float, float* %4, align 4
  %20 = fmul float %18, %19
  %21 = fptosi float %20 to i32
  %22 = load float*, float** %5, align 8
  %23 = getelementptr inbounds float, float* %22, i64 1
  %24 = load float, float* %23, align 4
  %25 = load float, float* %4, align 4
  %26 = fmul float %24, %25
  %27 = load float*, float** %5, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = load float, float* %4, align 4
  %31 = fmul float %29, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = call float @R_NoiseGet4f(i32 %21, float %26, float %31, i32 %37)
  store float %38, float* %4, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = load float, float* %4, align 4
  %44 = fmul float %42, %43
  %45 = load float*, float** %6, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = fadd float %47, %44
  store float %48, float* %46, align 4
  store float 0x3FEF5C2900000000, float* %4, align 4
  %49 = load float*, float** %5, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = load float, float* %4, align 4
  %53 = fmul float %51, %52
  %54 = fadd float 1.000000e+02, %53
  %55 = fptosi float %54 to i32
  %56 = load float*, float** %5, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = load float, float* %4, align 4
  %60 = fmul float %58, %59
  %61 = load float*, float** %5, align 8
  %62 = getelementptr inbounds float, float* %61, i64 2
  %63 = load float, float* %62, align 4
  %64 = load float, float* %4, align 4
  %65 = fmul float %63, %64
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %66, %70
  %72 = call float @R_NoiseGet4f(i32 %55, float %60, float %65, i32 %71)
  store float %72, float* %4, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = load float, float* %4, align 4
  %78 = fmul float %76, %77
  %79 = load float*, float** %6, align 8
  %80 = getelementptr inbounds float, float* %79, i64 1
  %81 = load float, float* %80, align 4
  %82 = fadd float %81, %78
  store float %82, float* %80, align 4
  store float 0x3FEF5C2900000000, float* %4, align 4
  %83 = load float*, float** %5, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  %85 = load float, float* %84, align 4
  %86 = load float, float* %4, align 4
  %87 = fmul float %85, %86
  %88 = fadd float 2.000000e+02, %87
  %89 = fptosi float %88 to i32
  %90 = load float*, float** %5, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  %92 = load float, float* %91, align 4
  %93 = load float, float* %4, align 4
  %94 = fmul float %92, %93
  %95 = load float*, float** %5, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  %97 = load float, float* %96, align 4
  %98 = load float, float* %4, align 4
  %99 = fmul float %97, %98
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %100, %104
  %106 = call float @R_NoiseGet4f(i32 %89, float %94, float %99, i32 %105)
  store float %106, float* %4, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load float, float* %109, align 4
  %111 = load float, float* %4, align 4
  %112 = fmul float %110, %111
  %113 = load float*, float** %6, align 8
  %114 = getelementptr inbounds float, float* %113, i64 2
  %115 = load float, float* %114, align 4
  %116 = fadd float %115, %112
  store float %116, float* %114, align 4
  %117 = load float*, float** %6, align 8
  %118 = call i32 @VectorNormalizeFast(float* %117)
  br label %119

119:                                              ; preds = %15
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  %122 = load float*, float** %5, align 8
  %123 = getelementptr inbounds float, float* %122, i64 4
  store float* %123, float** %5, align 8
  %124 = load float*, float** %6, align 8
  %125 = getelementptr inbounds float, float* %124, i64 4
  store float* %125, float** %6, align 8
  br label %11

126:                                              ; preds = %11
  ret void
}

declare dso_local float @R_NoiseGet4f(i32, float, float, i32) #1

declare dso_local i32 @VectorNormalizeFast(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
