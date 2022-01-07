; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_waitForEvent.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_waitForEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i64, i64 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*)* @waitForEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitForEvent(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double* %0, double** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 4
  %14 = call i32 @ConnectionNumber(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %1
  br label %24

24:                                               ; preds = %93, %23
  %25 = call i32 @FD_ZERO(i32* %4)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FD_SET(i32 %26, i32* %4)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %4)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load double*, double** %3, align 8
  %35 = icmp ne double* %34, null
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load double*, double** %3, align 8
  %38 = load double, double* %37, align 8
  %39 = fptosi double %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load double*, double** %3, align 8
  %41 = load double, double* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sitofp i64 %42 to double
  %44 = fsub double %41, %43
  %45 = fmul double %44, 1.000000e+06
  %46 = fptosi double %45 to i64
  store i64 %46, i64* %8, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %49, align 8
  %51 = call double (...) @_glfwPlatformGetTimerValue()
  store double %51, double* %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @select(i32 %52, i32* %4, i32* null, i32* null, %struct.timeval* %9)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %12, align 4
  %55 = call double (...) @_glfwPlatformGetTimerValue()
  %56 = load double, double* %10, align 8
  %57 = fsub double %55, %56
  %58 = call i64 (...) @_glfwPlatformGetTimerFrequency()
  %59 = sitofp i64 %58 to double
  %60 = fdiv double %57, %59
  %61 = load double*, double** %3, align 8
  %62 = load double, double* %61, align 8
  %63 = fsub double %62, %60
  store double %63, double* %61, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %36
  %67 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %67, i32* %2, align 4
  br label %94

68:                                               ; preds = %36
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @EINTR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71, %68
  %76 = load double*, double** %3, align 8
  %77 = load double, double* %76, align 8
  %78 = fcmp ole double %77, 0.000000e+00
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %80, i32* %2, align 4
  br label %94

81:                                               ; preds = %75
  br label %93

82:                                               ; preds = %33
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @select(i32 %83, i32* %4, i32* null, i32* null, %struct.timeval* null)
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @errno, align 4
  %88 = load i32, i32* @EINTR, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %81
  br label %24

94:                                               ; preds = %90, %79, %66
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @ConnectionNumber(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local double @_glfwPlatformGetTimerValue(...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @_glfwPlatformGetTimerFrequency(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
