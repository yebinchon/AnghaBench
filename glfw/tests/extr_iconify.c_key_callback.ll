; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_iconify.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_iconify.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%0.2f Key %s\0A\00", align 1
@GLFW_PRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_AUTO_ICONIFY = common dso_local global i32 0, align 4
@GLFW_RESIZABLE = common dso_local global i32 0, align 4
@GLFW_DECORATED = common dso_local global i32 0, align 4
@GLFW_FLOATING = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@windowed_xpos = common dso_local global i32 0, align 4
@windowed_ypos = common dso_local global i32 0, align 4
@windowed_width = common dso_local global i32 0, align 4
@windowed_height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %13 = call double (...) @glfwGetTime()
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @GLFW_PRESS, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %13, i8* %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GLFW_PRESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %120

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %120 [
    i32 130, label %26
    i32 129, label %29
    i32 128, label %32
    i32 133, label %35
    i32 137, label %39
    i32 136, label %49
    i32 135, label %59
    i32 132, label %69
    i32 131, label %79
    i32 134, label %79
  ]

26:                                               ; preds = %24
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @glfwIconifyWindow(i32* %27)
  br label %120

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @glfwMaximizeWindow(i32* %30)
  br label %120

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @glfwRestoreWindow(i32* %33)
  br label %120

35:                                               ; preds = %24
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @GLFW_TRUE, align 4
  %38 = call i32 @glfwSetWindowShouldClose(i32* %36, i32 %37)
  br label %120

39:                                               ; preds = %24
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @GLFW_AUTO_ICONIFY, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @GLFW_AUTO_ICONIFY, align 4
  %44 = call i32 @glfwGetWindowAttrib(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @glfwSetWindowAttrib(i32* %40, i32 %41, i32 %47)
  br label %120

49:                                               ; preds = %24
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @GLFW_RESIZABLE, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @GLFW_RESIZABLE, align 4
  %54 = call i32 @glfwGetWindowAttrib(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @glfwSetWindowAttrib(i32* %50, i32 %51, i32 %57)
  br label %120

59:                                               ; preds = %24
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @GLFW_DECORATED, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @GLFW_DECORATED, align 4
  %64 = call i32 @glfwGetWindowAttrib(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @glfwSetWindowAttrib(i32* %60, i32 %61, i32 %67)
  br label %120

69:                                               ; preds = %24
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @GLFW_FLOATING, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @GLFW_FLOATING, align 4
  %74 = call i32 @glfwGetWindowAttrib(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @glfwSetWindowAttrib(i32* %70, i32 %71, i32 %77)
  br label %120

79:                                               ; preds = %24, %24
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @GLFW_MOD_ALT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %120

84:                                               ; preds = %79
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @glfwGetWindowMonitor(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @windowed_xpos, align 4
  %91 = load i32, i32* @windowed_ypos, align 4
  %92 = load i32, i32* @windowed_width, align 4
  %93 = load i32, i32* @windowed_height, align 4
  %94 = call i32 @glfwSetWindowMonitor(i32* %89, i32* null, i32 %90, i32 %91, i32 %92, i32 %93, i32 0)
  br label %119

95:                                               ; preds = %84
  %96 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %96, i32** %11, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load i32*, i32** %11, align 8
  %101 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %100)
  store %struct.TYPE_3__* %101, %struct.TYPE_3__** %12, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @glfwGetWindowPos(i32* %102, i32* @windowed_xpos, i32* @windowed_ypos)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @glfwGetWindowSize(i32* %104, i32* @windowed_width, i32* @windowed_height)
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @glfwSetWindowMonitor(i32* %106, i32* %107, i32 0, i32 0, i32 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %99, %95
  br label %119

119:                                              ; preds = %118, %88
  br label %120

120:                                              ; preds = %23, %83, %24, %119, %69, %59, %49, %39, %35, %32, %29, %26
  ret void
}

declare dso_local i32 @printf(i8*, double, i8*) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glfwIconifyWindow(i32*) #1

declare dso_local i32 @glfwMaximizeWindow(i32*) #1

declare dso_local i32 @glfwRestoreWindow(i32*) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @glfwSetWindowAttrib(i32*, i32, i32) #1

declare dso_local i32 @glfwGetWindowAttrib(i32*, i32) #1

declare dso_local i32 @glfwGetWindowMonitor(i32*) #1

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
