; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_gears.c_key.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_gears.c_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@view_rotz = common dso_local global double 0.000000e+00, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@view_rotx = common dso_local global double 0.000000e+00, align 8
@view_roty = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @GLFW_PRESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %46

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %45 [
    i32 128, label %17
    i32 132, label %29
    i32 129, label %33
    i32 133, label %36
    i32 131, label %39
    i32 130, label %42
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load double, double* @view_rotz, align 8
  %24 = fsub double %23, 5.000000e+00
  store double %24, double* @view_rotz, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load double, double* @view_rotz, align 8
  %27 = fadd double %26, 5.000000e+00
  store double %27, double* @view_rotz, align 8
  br label %28

28:                                               ; preds = %25, %22
  br label %46

29:                                               ; preds = %15
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @GLFW_TRUE, align 4
  %32 = call i32 @glfwSetWindowShouldClose(i32* %30, i32 %31)
  br label %46

33:                                               ; preds = %15
  %34 = load double, double* @view_rotx, align 8
  %35 = fadd double %34, 5.000000e+00
  store double %35, double* @view_rotx, align 8
  br label %46

36:                                               ; preds = %15
  %37 = load double, double* @view_rotx, align 8
  %38 = fsub double %37, 5.000000e+00
  store double %38, double* @view_rotx, align 8
  br label %46

39:                                               ; preds = %15
  %40 = load double, double* @view_roty, align 8
  %41 = fadd double %40, 5.000000e+00
  store double %41, double* @view_roty, align 8
  br label %46

42:                                               ; preds = %15
  %43 = load double, double* @view_roty, align 8
  %44 = fsub double %43, 5.000000e+00
  store double %44, double* @view_roty, align 8
  br label %46

45:                                               ; preds = %15
  br label %46

46:                                               ; preds = %14, %45, %42, %39, %36, %33, %29, %28
  ret void
}

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
