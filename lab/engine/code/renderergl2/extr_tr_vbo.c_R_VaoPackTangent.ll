; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_VaoPackTangent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_VaoPackTangent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_VaoPackTangent(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = fmul float %7, 3.276700e+04
  %9 = load float*, float** %4, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = fcmp ogt float %11, 0.000000e+00
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, float 5.000000e-01, float -5.000000e-01
  %15 = fadd float %8, %14
  %16 = load float*, float** %3, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float %15, float* %17, align 4
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = fmul float %20, 3.276700e+04
  %22 = load float*, float** %4, align 8
  %23 = getelementptr inbounds float, float* %22, i64 1
  %24 = load float, float* %23, align 4
  %25 = fcmp ogt float %24, 0.000000e+00
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, float 5.000000e-01, float -5.000000e-01
  %28 = fadd float %21, %27
  %29 = load float*, float** %3, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  store float %28, float* %30, align 4
  %31 = load float*, float** %4, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  %33 = load float, float* %32, align 4
  %34 = fmul float %33, 3.276700e+04
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  %37 = load float, float* %36, align 4
  %38 = fcmp ogt float %37, 0.000000e+00
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, float 5.000000e-01, float -5.000000e-01
  %41 = fadd float %34, %40
  %42 = load float*, float** %3, align 8
  %43 = getelementptr inbounds float, float* %42, i64 2
  store float %41, float* %43, align 4
  %44 = load float*, float** %4, align 8
  %45 = getelementptr inbounds float, float* %44, i64 3
  %46 = load float, float* %45, align 4
  %47 = fmul float %46, 3.276700e+04
  %48 = load float*, float** %4, align 8
  %49 = getelementptr inbounds float, float* %48, i64 3
  %50 = load float, float* %49, align 4
  %51 = fcmp ogt float %50, 0.000000e+00
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, float 5.000000e-01, float -5.000000e-01
  %54 = fadd float %47, %53
  %55 = load float*, float** %3, align 8
  %56 = getelementptr inbounds float, float* %55, i64 3
  store float %54, float* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
