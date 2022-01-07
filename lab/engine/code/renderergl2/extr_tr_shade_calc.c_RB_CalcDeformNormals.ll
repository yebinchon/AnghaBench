; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcDeformNormals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcDeformNormals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, float }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcDeformNormals(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %9 = inttoptr i64 %8 to float*
  store float* %9, float** %5, align 8
  %10 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %127, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %134

17:                                               ; preds = %13
  %18 = load float*, float** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @R_VaoUnpackNormal(float* %18, i32* %19)
  store float 0x3FEF5C2900000000, float* %4, align 4
  %21 = load float*, float** %5, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float, float* %22, align 4
  %24 = load float, float* %4, align 4
  %25 = fmul float %23, %24
  %26 = fptosi float %25 to i32
  %27 = load float*, float** %5, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  %29 = load float, float* %28, align 4
  %30 = load float, float* %4, align 4
  %31 = fmul float %29, %30
  %32 = load float*, float** %5, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = load float, float* %4, align 4
  %36 = fmul float %34, %35
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  %43 = call float @R_NoiseGet4f(i32 %26, float %31, float %36, i32 %42)
  store float %43, float* %4, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load float, float* %4, align 4
  %49 = fmul float %47, %48
  %50 = load float*, float** %7, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = fadd float %52, %49
  store float %53, float* %51, align 4
  store float 0x3FEF5C2900000000, float* %4, align 4
  %54 = load float*, float** %5, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  %56 = load float, float* %55, align 4
  %57 = load float, float* %4, align 4
  %58 = fmul float %56, %57
  %59 = fadd float 1.000000e+02, %58
  %60 = fptosi float %59 to i32
  %61 = load float*, float** %5, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  %63 = load float, float* %62, align 4
  %64 = load float, float* %4, align 4
  %65 = fmul float %63, %64
  %66 = load float*, float** %5, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = load float, float* %4, align 4
  %70 = fmul float %68, %69
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %71, %75
  %77 = call float @R_NoiseGet4f(i32 %60, float %65, float %70, i32 %76)
  store float %77, float* %4, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load float, float* %80, align 4
  %82 = load float, float* %4, align 4
  %83 = fmul float %81, %82
  %84 = load float*, float** %7, align 8
  %85 = getelementptr inbounds float, float* %84, i64 1
  %86 = load float, float* %85, align 4
  %87 = fadd float %86, %83
  store float %87, float* %85, align 4
  store float 0x3FEF5C2900000000, float* %4, align 4
  %88 = load float*, float** %5, align 8
  %89 = getelementptr inbounds float, float* %88, i64 0
  %90 = load float, float* %89, align 4
  %91 = load float, float* %4, align 4
  %92 = fmul float %90, %91
  %93 = fadd float 2.000000e+02, %92
  %94 = fptosi float %93 to i32
  %95 = load float*, float** %5, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %96, align 4
  %98 = load float, float* %4, align 4
  %99 = fmul float %97, %98
  %100 = load float*, float** %5, align 8
  %101 = getelementptr inbounds float, float* %100, i64 2
  %102 = load float, float* %101, align 4
  %103 = load float, float* %4, align 4
  %104 = fmul float %102, %103
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %105, %109
  %111 = call float @R_NoiseGet4f(i32 %94, float %99, float %104, i32 %110)
  store float %111, float* %4, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load float, float* %114, align 4
  %116 = load float, float* %4, align 4
  %117 = fmul float %115, %116
  %118 = load float*, float** %7, align 8
  %119 = getelementptr inbounds float, float* %118, i64 2
  %120 = load float, float* %119, align 4
  %121 = fadd float %120, %117
  store float %121, float* %119, align 4
  %122 = load float*, float** %7, align 8
  %123 = call i32 @VectorNormalizeFast(float* %122)
  %124 = load i32*, i32** %6, align 8
  %125 = load float*, float** %7, align 8
  %126 = call i32 @R_VaoPackNormal(i32* %124, float* %125)
  br label %127

127:                                              ; preds = %17
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  %130 = load float*, float** %5, align 8
  %131 = getelementptr inbounds float, float* %130, i64 4
  store float* %131, float** %5, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32* %133, i32** %6, align 8
  br label %13

134:                                              ; preds = %13
  ret void
}

declare dso_local i32 @R_VaoUnpackNormal(float*, i32*) #1

declare dso_local float @R_NoiseGet4f(i32, float, float, i32) #1

declare dso_local i32 @VectorNormalizeFast(float*) #1

declare dso_local i32 @R_VaoPackNormal(i32*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
