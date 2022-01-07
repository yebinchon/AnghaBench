; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_window.c_glfwWaitEventsTimeout.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_window.c_glfwWaitEventsTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid time %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwWaitEventsTimeout(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %4 = load double, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp oeq double %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load double, double* %2, align 8
  %10 = fcmp oge double %9, 0.000000e+00
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load double, double* %2, align 8
  %14 = load double, double* @DBL_MAX, align 8
  %15 = fcmp ole double %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load double, double* %2, align 8
  %19 = load double, double* %2, align 8
  %20 = fcmp une double %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load double, double* %2, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load double, double* %2, align 8
  %26 = load double, double* @DBL_MAX, align 8
  %27 = fcmp ogt double %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %21, %1
  %29 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %30 = load double, double* %2, align 8
  %31 = call i32 @_glfwInputError(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %30)
  br label %35

32:                                               ; preds = %24
  %33 = load double, double* %2, align 8
  %34 = call i32 @_glfwPlatformWaitEventsTimeout(double %33)
  br label %35

35:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, double) #1

declare dso_local i32 @_glfwPlatformWaitEventsTimeout(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
