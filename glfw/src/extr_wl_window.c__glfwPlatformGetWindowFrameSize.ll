; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformGetWindowFrameSize.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformGetWindowFrameSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_GLFW_DECORATION_TOP = common dso_local global i32 0, align 4
@_GLFW_DECORATION_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetWindowFrameSize(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %5
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @_GLFW_DECORATION_TOP, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @_GLFW_DECORATION_WIDTH, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @_GLFW_DECORATION_WIDTH, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @_GLFW_DECORATION_WIDTH, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %20, %15, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
