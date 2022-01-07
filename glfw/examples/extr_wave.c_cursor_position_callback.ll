; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_wave.c_cursor_position_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_wave.c_cursor_position_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8
@cursorX = common dso_local global double 0.000000e+00, align 8
@alpha = common dso_local global float 0.000000e+00, align 4
@cursorY = common dso_local global double 0.000000e+00, align 8
@beta = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_position_callback(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @GLFW_CURSOR, align 4
  %9 = call i64 @glfwGetInputMode(i32* %7, i32 %8)
  %10 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load double, double* %5, align 8
  %14 = load double, double* @cursorX, align 8
  %15 = fsub double %13, %14
  %16 = fptrunc double %15 to float
  %17 = fdiv float %16, 1.000000e+01
  %18 = load float, float* @alpha, align 4
  %19 = fadd float %18, %17
  store float %19, float* @alpha, align 4
  %20 = load double, double* %6, align 8
  %21 = load double, double* @cursorY, align 8
  %22 = fsub double %20, %21
  %23 = fptrunc double %22 to float
  %24 = fdiv float %23, 1.000000e+01
  %25 = load float, float* @beta, align 4
  %26 = fadd float %25, %24
  store float %26, float* @beta, align 4
  %27 = load double, double* %5, align 8
  store double %27, double* @cursorX, align 8
  %28 = load double, double* %6, align 8
  store double %28, double* @cursorY, align 8
  br label %29

29:                                               ; preds = %12, %3
  ret void
}

declare dso_local i64 @glfwGetInputMode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
