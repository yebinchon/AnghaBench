; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_VectorLerp.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_VectorLerp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VectorLerp(float* %0, float* %1, float %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store float* %3, float** %8, align 8
  %9 = load float*, float** %5, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float, float* %7, align 4
  %13 = fsub float 1.000000e+00, %12
  %14 = fmul float %11, %13
  %15 = load float*, float** %6, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = load float, float* %7, align 4
  %19 = fmul float %17, %18
  %20 = fadd float %14, %19
  %21 = load float*, float** %8, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  store float %20, float* %22, align 4
  %23 = load float*, float** %5, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = load float, float* %7, align 4
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %25, %27
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  %31 = load float, float* %30, align 4
  %32 = load float, float* %7, align 4
  %33 = fmul float %31, %32
  %34 = fadd float %28, %33
  %35 = load float*, float** %8, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float %34, float* %36, align 4
  %37 = load float*, float** %5, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  %39 = load float, float* %38, align 4
  %40 = load float, float* %7, align 4
  %41 = fsub float 1.000000e+00, %40
  %42 = fmul float %39, %41
  %43 = load float*, float** %6, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  %45 = load float, float* %44, align 4
  %46 = load float, float* %7, align 4
  %47 = fmul float %45, %46
  %48 = fadd float %42, %47
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 2
  store float %48, float* %50, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
