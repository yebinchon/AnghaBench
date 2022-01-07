; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetCursorPos.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetCursorPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, double, double }

@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwGetCursorPos(i32* %0, double* %1, double* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load double*, double** %5, align 8
  %15 = icmp ne double* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %17, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load double*, double** %6, align 8
  %20 = icmp ne double* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load double*, double** %5, align 8
  %32 = icmp ne double* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = load double*, double** %5, align 8
  store double %36, double* %37, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = load double*, double** %6, align 8
  %40 = icmp ne double* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %6, align 8
  store double %44, double* %45, align 8
  br label %46

46:                                               ; preds = %41, %38
  br label %52

47:                                               ; preds = %23
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = load double*, double** %5, align 8
  %50 = load double*, double** %6, align 8
  %51 = call i32 @_glfwPlatformGetCursorPos(%struct.TYPE_3__* %48, double* %49, double* %50)
  br label %52

52:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwPlatformGetCursorPos(%struct.TYPE_3__*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
