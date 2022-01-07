; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_init.c__glfw_fminf.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_init.c__glfw_fminf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_glfw_fminf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %4, align 4
  %8 = fcmp une float %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load float, float* %5, align 4
  store float %10, float* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load float, float* %5, align 4
  %13 = load float, float* %5, align 4
  %14 = fcmp une float %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load float, float* %4, align 4
  store float %16, float* %3, align 4
  br label %25

17:                                               ; preds = %11
  %18 = load float, float* %4, align 4
  %19 = load float, float* %5, align 4
  %20 = fcmp olt float %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load float, float* %4, align 4
  store float %22, float* %3, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load float, float* %5, align 4
  store float %24, float* %3, align 4
  br label %25

25:                                               ; preds = %23, %21, %15, %9
  %26 = load float, float* %3, align 4
  ret float %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
