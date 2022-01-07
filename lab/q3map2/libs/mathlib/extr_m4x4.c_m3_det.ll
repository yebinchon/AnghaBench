; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m3_det.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m3_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @m3_det(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  store float* %0, float** %2, align 8
  %4 = load float*, float** %2, align 8
  %5 = getelementptr inbounds float, float* %4, i64 0
  %6 = load float, float* %5, align 4
  %7 = load float*, float** %2, align 8
  %8 = getelementptr inbounds float, float* %7, i64 4
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %2, align 8
  %11 = getelementptr inbounds float, float* %10, i64 8
  %12 = load float, float* %11, align 4
  %13 = fmul float %9, %12
  %14 = load float*, float** %2, align 8
  %15 = getelementptr inbounds float, float* %14, i64 7
  %16 = load float, float* %15, align 4
  %17 = load float*, float** %2, align 8
  %18 = getelementptr inbounds float, float* %17, i64 5
  %19 = load float, float* %18, align 4
  %20 = fmul float %16, %19
  %21 = fsub float %13, %20
  %22 = fmul float %6, %21
  %23 = load float*, float** %2, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %2, align 8
  %27 = getelementptr inbounds float, float* %26, i64 3
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %2, align 8
  %30 = getelementptr inbounds float, float* %29, i64 8
  %31 = load float, float* %30, align 4
  %32 = fmul float %28, %31
  %33 = load float*, float** %2, align 8
  %34 = getelementptr inbounds float, float* %33, i64 6
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %2, align 8
  %37 = getelementptr inbounds float, float* %36, i64 5
  %38 = load float, float* %37, align 4
  %39 = fmul float %35, %38
  %40 = fsub float %32, %39
  %41 = fmul float %25, %40
  %42 = fsub float %22, %41
  %43 = load float*, float** %2, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %2, align 8
  %47 = getelementptr inbounds float, float* %46, i64 3
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %2, align 8
  %50 = getelementptr inbounds float, float* %49, i64 7
  %51 = load float, float* %50, align 4
  %52 = fmul float %48, %51
  %53 = load float*, float** %2, align 8
  %54 = getelementptr inbounds float, float* %53, i64 6
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %2, align 8
  %57 = getelementptr inbounds float, float* %56, i64 4
  %58 = load float, float* %57, align 4
  %59 = fmul float %55, %58
  %60 = fsub float %52, %59
  %61 = fmul float %45, %60
  %62 = fadd float %42, %61
  store float %62, float* %3, align 4
  %63 = load float, float* %3, align 4
  ret float %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
