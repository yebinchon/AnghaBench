; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_transform_normal.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_transform_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4x4_transform_normal(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = fmul float %10, %13
  store float %14, float* %5, align 4
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  store float %21, float* %6, align 4
  %22 = load float*, float** %3, align 8
  %23 = getelementptr inbounds float, float* %22, i64 2
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fmul float %24, %27
  store float %28, float* %7, align 4
  %29 = load float*, float** %3, align 8
  %30 = getelementptr inbounds float, float* %29, i64 4
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %4, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = fmul float %31, %34
  %36 = load float, float* %5, align 4
  %37 = fadd float %36, %35
  store float %37, float* %5, align 4
  %38 = load float*, float** %3, align 8
  %39 = getelementptr inbounds float, float* %38, i64 5
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %4, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = fmul float %40, %43
  %45 = load float, float* %6, align 4
  %46 = fadd float %45, %44
  store float %46, float* %6, align 4
  %47 = load float*, float** %3, align 8
  %48 = getelementptr inbounds float, float* %47, i64 6
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %4, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  %52 = load float, float* %51, align 4
  %53 = fmul float %49, %52
  %54 = load float, float* %7, align 4
  %55 = fadd float %54, %53
  store float %55, float* %7, align 4
  %56 = load float*, float** %3, align 8
  %57 = getelementptr inbounds float, float* %56, i64 8
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %4, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  %61 = load float, float* %60, align 4
  %62 = fmul float %58, %61
  %63 = load float, float* %5, align 4
  %64 = fadd float %63, %62
  store float %64, float* %5, align 4
  %65 = load float*, float** %3, align 8
  %66 = getelementptr inbounds float, float* %65, i64 9
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %4, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  %70 = load float, float* %69, align 4
  %71 = fmul float %67, %70
  %72 = load float, float* %6, align 4
  %73 = fadd float %72, %71
  store float %73, float* %6, align 4
  %74 = load float*, float** %3, align 8
  %75 = getelementptr inbounds float, float* %74, i64 10
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %4, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = load float, float* %7, align 4
  %82 = fadd float %81, %80
  store float %82, float* %7, align 4
  %83 = load float, float* %5, align 4
  %84 = load float*, float** %4, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float %83, float* %85, align 4
  %86 = load float, float* %6, align 4
  %87 = load float*, float** %4, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  store float %86, float* %88, align 4
  %89 = load float, float* %7, align 4
  %90 = load float*, float** %4, align 8
  %91 = getelementptr inbounds float, float* %90, i64 2
  store float %89, float* %91, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
