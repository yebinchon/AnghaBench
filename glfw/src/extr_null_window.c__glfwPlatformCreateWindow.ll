; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_null_window.c__glfwPlatformCreateWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_null_window.c__glfwPlatformCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_NO_API = common dso_local global i64 0, align 8
@GLFW_NATIVE_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_OSMESA_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Null: EGL not available\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateWindow(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @createNativeWindow(i32* %10, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %15, i32* %5, align 4
  br label %55

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GLFW_NO_API, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GLFW_OSMESA_CONTEXT_API, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28, %22
  %35 = call i32 (...) @_glfwInitOSMesa()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @_glfwCreateContextOSMesa(i32* %40, %struct.TYPE_4__* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %28
  %49 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %50 = call i32 @_glfwInputError(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %16
  %54 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %48, %45, %37, %14
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @createNativeWindow(i32*, i32*) #1

declare dso_local i32 @_glfwInitOSMesa(...) #1

declare dso_local i32 @_glfwCreateContextOSMesa(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
