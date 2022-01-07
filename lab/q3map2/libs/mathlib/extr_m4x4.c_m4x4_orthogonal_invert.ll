; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_orthogonal_invert.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_orthogonal_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4x4_orthogonal_invert(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  store float* %0, float** %2, align 8
  %4 = load float*, float** %2, align 8
  %5 = getelementptr inbounds float, float* %4, i64 3
  %6 = load float, float* %5, align 4
  %7 = fneg float %6
  store float %7, float* %3, align 4
  %8 = load float*, float** %2, align 8
  %9 = getelementptr inbounds float, float* %8, i64 12
  %10 = load float, float* %9, align 4
  %11 = load float*, float** %2, align 8
  %12 = getelementptr inbounds float, float* %11, i64 3
  store float %10, float* %12, align 4
  %13 = load float, float* %3, align 4
  %14 = load float*, float** %2, align 8
  %15 = getelementptr inbounds float, float* %14, i64 12
  store float %13, float* %15, align 4
  %16 = load float*, float** %2, align 8
  %17 = getelementptr inbounds float, float* %16, i64 7
  %18 = load float, float* %17, align 4
  %19 = fneg float %18
  store float %19, float* %3, align 4
  %20 = load float*, float** %2, align 8
  %21 = getelementptr inbounds float, float* %20, i64 13
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %2, align 8
  %24 = getelementptr inbounds float, float* %23, i64 7
  store float %22, float* %24, align 4
  %25 = load float, float* %3, align 4
  %26 = load float*, float** %2, align 8
  %27 = getelementptr inbounds float, float* %26, i64 13
  store float %25, float* %27, align 4
  %28 = load float*, float** %2, align 8
  %29 = getelementptr inbounds float, float* %28, i64 11
  %30 = load float, float* %29, align 4
  %31 = fneg float %30
  store float %31, float* %3, align 4
  %32 = load float*, float** %2, align 8
  %33 = getelementptr inbounds float, float* %32, i64 14
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %2, align 8
  %36 = getelementptr inbounds float, float* %35, i64 11
  store float %34, float* %36, align 4
  %37 = load float, float* %3, align 4
  %38 = load float*, float** %2, align 8
  %39 = getelementptr inbounds float, float* %38, i64 14
  store float %37, float* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
