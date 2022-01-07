; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_window.c__glfwInputWindowFocus.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_window.c__glfwInputWindowFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*, i32)* }

@GLFW_KEY_LAST = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i64 0, align 8
@GLFW_RELEASE = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputWindowFocus(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32 (i32*, i32)*, i32 (i32*, i32)** %10, align 8
  %12 = icmp ne i32 (i32*, i32)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32)*, i32 (i32*, i32)** %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = bitcast %struct.TYPE_7__* %18 to i32*
  %20 = load i32, i32* %4, align 4
  %21 = call i32 %17(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GLFW_KEY_LAST, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLFW_PRESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @_glfwPlatformGetKeyScancode(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GLFW_RELEASE, align 4
  %47 = call i32 @_glfwInputKey(%struct.TYPE_7__* %43, i32 %44, i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %40, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %26

52:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @GLFW_MOUSE_BUTTON_LAST, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @GLFW_PRESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GLFW_RELEASE, align 4
  %71 = call i32 @_glfwInputMouseClick(%struct.TYPE_7__* %68, i32 %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %67, %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %22
  ret void
}

declare dso_local i32 @_glfwPlatformGetKeyScancode(i32) #1

declare dso_local i32 @_glfwInputKey(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwInputMouseClick(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
