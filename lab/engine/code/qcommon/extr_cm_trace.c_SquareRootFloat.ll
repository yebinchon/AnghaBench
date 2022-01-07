; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_SquareRootFloat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_SquareRootFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @SquareRootFloat(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_2__, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 1.500000e+00, float* %6, align 4
  %7 = load float, float* %2, align 4
  %8 = fmul float %7, 5.000000e-01
  store float %8, float* %4, align 4
  %9 = load float, float* %2, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store float %9, float* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 1
  %14 = sub nsw i32 1597463007, %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %17 = load float, float* %16, align 4
  store float %17, float* %5, align 4
  %18 = load float, float* %5, align 4
  %19 = load float, float* %4, align 4
  %20 = load float, float* %5, align 4
  %21 = fmul float %19, %20
  %22 = load float, float* %5, align 4
  %23 = fmul float %21, %22
  %24 = fsub float 1.500000e+00, %23
  %25 = fmul float %18, %24
  store float %25, float* %5, align 4
  %26 = load float, float* %5, align 4
  %27 = load float, float* %4, align 4
  %28 = load float, float* %5, align 4
  %29 = fmul float %27, %28
  %30 = load float, float* %5, align 4
  %31 = fmul float %29, %30
  %32 = fsub float 1.500000e+00, %31
  %33 = fmul float %26, %32
  store float %33, float* %5, align 4
  %34 = load float, float* %2, align 4
  %35 = load float, float* %5, align 4
  %36 = fmul float %34, %35
  ret float %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
