; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_Matrix34Invert.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_Matrix34Invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @Matrix34Invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Matrix34Invert(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  store float %10, float* %12, align 4
  %13 = load float*, float** %3, align 8
  %14 = getelementptr inbounds float, float* %13, i64 4
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %4, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  store float %15, float* %17, align 4
  %18 = load float*, float** %3, align 8
  %19 = getelementptr inbounds float, float* %18, i64 8
  %20 = load float, float* %19, align 4
  %21 = load float*, float** %4, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  store float %20, float* %22, align 4
  %23 = load float*, float** %3, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 4
  store float %25, float* %27, align 4
  %28 = load float*, float** %3, align 8
  %29 = getelementptr inbounds float, float* %28, i64 5
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %4, align 8
  %32 = getelementptr inbounds float, float* %31, i64 5
  store float %30, float* %32, align 4
  %33 = load float*, float** %3, align 8
  %34 = getelementptr inbounds float, float* %33, i64 9
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %4, align 8
  %37 = getelementptr inbounds float, float* %36, i64 6
  store float %35, float* %37, align 4
  %38 = load float*, float** %3, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %4, align 8
  %42 = getelementptr inbounds float, float* %41, i64 8
  store float %40, float* %42, align 4
  %43 = load float*, float** %3, align 8
  %44 = getelementptr inbounds float, float* %43, i64 6
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %4, align 8
  %47 = getelementptr inbounds float, float* %46, i64 9
  store float %45, float* %47, align 4
  %48 = load float*, float** %3, align 8
  %49 = getelementptr inbounds float, float* %48, i64 10
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %4, align 8
  %52 = getelementptr inbounds float, float* %51, i64 10
  store float %50, float* %52, align 4
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  store float* %54, float** %7, align 8
  %55 = load float*, float** %7, align 8
  %56 = load float*, float** %7, align 8
  %57 = call float @DotProduct(float* %55, float* %56)
  %58 = fdiv float 1.000000e+00, %57
  store float %58, float* %6, align 4
  %59 = load float*, float** %7, align 8
  %60 = load float, float* %6, align 4
  %61 = load float*, float** %7, align 8
  %62 = call i32 @VectorScale(float* %59, float %60, float* %61)
  %63 = load float*, float** %4, align 8
  %64 = getelementptr inbounds float, float* %63, i64 4
  store float* %64, float** %7, align 8
  %65 = load float*, float** %7, align 8
  %66 = load float*, float** %7, align 8
  %67 = call float @DotProduct(float* %65, float* %66)
  %68 = fdiv float 1.000000e+00, %67
  store float %68, float* %6, align 4
  %69 = load float*, float** %7, align 8
  %70 = load float, float* %6, align 4
  %71 = load float*, float** %7, align 8
  %72 = call i32 @VectorScale(float* %69, float %70, float* %71)
  %73 = load float*, float** %4, align 8
  %74 = getelementptr inbounds float, float* %73, i64 8
  store float* %74, float** %7, align 8
  %75 = load float*, float** %7, align 8
  %76 = load float*, float** %7, align 8
  %77 = call float @DotProduct(float* %75, float* %76)
  %78 = fdiv float 1.000000e+00, %77
  store float %78, float* %6, align 4
  %79 = load float*, float** %7, align 8
  %80 = load float, float* %6, align 4
  %81 = load float*, float** %7, align 8
  %82 = call i32 @VectorScale(float* %79, float %80, float* %81)
  %83 = load float*, float** %3, align 8
  %84 = getelementptr inbounds float, float* %83, i64 3
  %85 = load float, float* %84, align 4
  %86 = load float*, float** %5, align 8
  %87 = getelementptr inbounds float, float* %86, i64 0
  store float %85, float* %87, align 4
  %88 = load float*, float** %3, align 8
  %89 = getelementptr inbounds float, float* %88, i64 7
  %90 = load float, float* %89, align 4
  %91 = load float*, float** %5, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  store float %90, float* %92, align 4
  %93 = load float*, float** %3, align 8
  %94 = getelementptr inbounds float, float* %93, i64 11
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %5, align 8
  %97 = getelementptr inbounds float, float* %96, i64 2
  store float %95, float* %97, align 4
  %98 = load float*, float** %4, align 8
  %99 = getelementptr inbounds float, float* %98, i64 0
  %100 = load float*, float** %5, align 8
  %101 = call float @DotProduct(float* %99, float* %100)
  %102 = fneg float %101
  %103 = load float*, float** %4, align 8
  %104 = getelementptr inbounds float, float* %103, i64 3
  store float %102, float* %104, align 4
  %105 = load float*, float** %4, align 8
  %106 = getelementptr inbounds float, float* %105, i64 4
  %107 = load float*, float** %5, align 8
  %108 = call float @DotProduct(float* %106, float* %107)
  %109 = fneg float %108
  %110 = load float*, float** %4, align 8
  %111 = getelementptr inbounds float, float* %110, i64 7
  store float %109, float* %111, align 4
  %112 = load float*, float** %4, align 8
  %113 = getelementptr inbounds float, float* %112, i64 8
  %114 = load float*, float** %5, align 8
  %115 = call float @DotProduct(float* %113, float* %114)
  %116 = fneg float %115
  %117 = load float*, float** %4, align 8
  %118 = getelementptr inbounds float, float* %117, i64 11
  store float %116, float* %118, align 4
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
