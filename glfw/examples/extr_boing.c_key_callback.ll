; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_boing.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_boing.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_KEY_ESCAPE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_KEY_ENTER = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@GLFW_KEY_F11 = common dso_local global i32 0, align 4
@windowed_xpos = common dso_local global i32 0, align 4
@windowed_ypos = common dso_local global i32 0, align 4
@windowed_width = common dso_local global i32 0, align 4
@windowed_height = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GLFW_PRESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %80

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GLFW_KEY_ESCAPE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @GLFW_TRUE, align 4
  %27 = call i32 @glfwSetWindowShouldClose(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21, %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GLFW_KEY_ENTER, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @GLFW_MOD_ALT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GLFW_KEY_F11, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @GLFW_MOD_ALT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %40, %32
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @glfwGetWindowMonitor(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @windowed_xpos, align 4
  %51 = load i32, i32* @windowed_ypos, align 4
  %52 = load i32, i32* @windowed_width, align 4
  %53 = load i32, i32* @windowed_height, align 4
  %54 = call i32 @glfwSetWindowMonitor(i32* %49, i32* null, i32 %50, i32 %51, i32 %52, i32 %53, i32 0)
  br label %79

55:                                               ; preds = %44
  %56 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %60)
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %12, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @glfwGetWindowPos(i32* %62, i32* @windowed_xpos, i32* @windowed_ypos)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @glfwGetWindowSize(i32* %64, i32* @windowed_width, i32* @windowed_height)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @glfwSetWindowMonitor(i32* %66, i32* %67, i32 0, i32 0, i32 %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %59, %55
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %16, %79, %40, %36
  ret void
}

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i64 @glfwGetWindowMonitor(i32*) #1

declare dso_local i32 @glfwSetWindowMonitor(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwGetWindowPos(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
