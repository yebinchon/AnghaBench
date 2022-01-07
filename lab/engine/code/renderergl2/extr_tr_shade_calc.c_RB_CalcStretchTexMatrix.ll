; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcStretchTexMatrix.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcStretchTexMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcStretchTexMatrix(i32* %0, float* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call float @EvalWaveForm(i32* %6)
  %8 = fdiv float 1.000000e+00, %7
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = load float*, float** %4, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  store float %9, float* %11, align 4
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 2
  store float 0.000000e+00, float* %13, align 4
  %14 = load float, float* %5, align 4
  %15 = fmul float 5.000000e-01, %14
  %16 = fsub float 5.000000e-01, %15
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i64 4
  store float %16, float* %18, align 4
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  store float 0.000000e+00, float* %20, align 4
  %21 = load float, float* %5, align 4
  %22 = load float*, float** %4, align 8
  %23 = getelementptr inbounds float, float* %22, i64 3
  store float %21, float* %23, align 4
  %24 = load float, float* %5, align 4
  %25 = fmul float 5.000000e-01, %24
  %26 = fsub float 5.000000e-01, %25
  %27 = load float*, float** %4, align 8
  %28 = getelementptr inbounds float, float* %27, i64 5
  store float %26, float* %28, align 4
  ret void
}

declare dso_local float @EvalWaveForm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
