; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_wave.c_scroll_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_wave.c_scroll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zoom = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scroll_callback(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = fptrunc double %7 to float
  %9 = fdiv float %8, 4.000000e+00
  %10 = load i64, i64* @zoom, align 8
  %11 = sitofp i64 %10 to float
  %12 = fadd float %11, %9
  %13 = fptosi float %12 to i64
  store i64 %13, i64* @zoom, align 8
  %14 = load i64, i64* @zoom, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* @zoom, align 8
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
