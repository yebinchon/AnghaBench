; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_null_monitor.c__glfwPlatformGetMonitorContentScale.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_null_monitor.c__glfwPlatformGetMonitorContentScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetMonitorContentScale(i32* %0, float* %1, float* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %5, align 8
  %8 = icmp ne float* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load float*, float** %5, align 8
  store float 1.000000e+00, float* %10, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = load float*, float** %6, align 8
  %13 = icmp ne float* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load float*, float** %6, align 8
  store float 1.000000e+00, float* %15, align 4
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
