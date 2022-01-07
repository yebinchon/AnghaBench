; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_CalcSplit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_CalcSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @CalcSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CalcSplit(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = load float, float* %5, align 4
  %12 = fdiv float %10, %11
  %13 = load float, float* %7, align 4
  %14 = load float, float* %8, align 4
  %15 = fdiv float %13, %14
  %16 = call float @pow(float %12, float %15)
  %17 = fmul float %9, %16
  %18 = load float, float* %6, align 4
  %19 = load float, float* %5, align 4
  %20 = fsub float %18, %19
  %21 = load float, float* %7, align 4
  %22 = fmul float %20, %21
  %23 = load float, float* %8, align 4
  %24 = fdiv float %22, %23
  %25 = fadd float %17, %24
  %26 = fdiv float %25, 2.000000e+00
  ret float %26
}

declare dso_local float @pow(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
