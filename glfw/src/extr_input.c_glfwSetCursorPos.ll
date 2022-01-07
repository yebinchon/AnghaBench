; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwSetCursorPos.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwSetCursorPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, double, double }

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid cursor position %f %f\00", align 1
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetCursorPos(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %15 = load double, double* %5, align 8
  %16 = load double, double* %5, align 8
  %17 = fcmp une double %15, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %3
  %19 = load double, double* %5, align 8
  %20 = load double, double* @DBL_MAX, align 8
  %21 = fneg double %20
  %22 = fcmp olt double %19, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = load double, double* %5, align 8
  %25 = load double, double* @DBL_MAX, align 8
  %26 = fcmp ogt double %24, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load double, double* %6, align 8
  %29 = load double, double* %6, align 8
  %30 = fcmp une double %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load double, double* %6, align 8
  %33 = load double, double* @DBL_MAX, align 8
  %34 = fneg double %33
  %35 = fcmp olt double %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load double, double* %6, align 8
  %38 = load double, double* @DBL_MAX, align 8
  %39 = fcmp ogt double %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %31, %27, %23, %18, %3
  %41 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %42 = load double, double* %5, align 8
  %43 = load double, double* %6, align 8
  %44 = call i32 @_glfwInputError(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), double %42, double %43)
  br label %68

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = call i32 @_glfwPlatformWindowFocused(%struct.TYPE_4__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %68

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load double, double* %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store double %57, double* %59, align 8
  %60 = load double, double* %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store double %60, double* %62, align 8
  br label %68

63:                                               ; preds = %50
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = load double, double* %5, align 8
  %66 = load double, double* %6, align 8
  %67 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_4__* %64, double %65, double %66)
  br label %68

68:                                               ; preds = %40, %49, %63, %56
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*, double, double) #1

declare dso_local i32 @_glfwPlatformWindowFocused(%struct.TYPE_4__*) #1

declare dso_local i32 @_glfwPlatformSetCursorPos(%struct.TYPE_4__*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
