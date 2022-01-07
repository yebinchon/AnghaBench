; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwSetTime.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwSetTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid time %f\00", align 1
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetTime(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %4 = load double, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp une double %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load double, double* %2, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load double, double* %2, align 8
  %12 = fcmp ogt double %11, 0x42112E0BE8240000
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %7, %1
  %14 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %15 = load double, double* %2, align 8
  %16 = call i32 @_glfwInputError(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %15)
  br label %24

17:                                               ; preds = %10
  %18 = call i64 (...) @_glfwPlatformGetTimerValue()
  %19 = load double, double* %2, align 8
  %20 = call double (...) @_glfwPlatformGetTimerFrequency()
  %21 = fmul double %19, %20
  %22 = fptosi double %21 to i64
  %23 = sub nsw i64 %18, %22
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*, double) #1

declare dso_local i64 @_glfwPlatformGetTimerValue(...) #1

declare dso_local double @_glfwPlatformGetTimerFrequency(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
