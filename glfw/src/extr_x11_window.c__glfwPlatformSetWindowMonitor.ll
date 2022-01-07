; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformSetWindowMonitor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformSetWindowMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_20__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetWindowMonitor(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %19 = icmp eq %struct.TYPE_20__* %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %7
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = icmp ne %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = icmp eq %struct.TYPE_19__* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = call i32 @acquireMonitor(%struct.TYPE_19__* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %54

33:                                               ; preds = %20
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @updateNormalHints(%struct.TYPE_19__* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @XMoveResizeWindow(i32 %44, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %32
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %56 = call i32 @XFlush(i32 %55)
  br label %111

57:                                               ; preds = %7
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = icmp ne %struct.TYPE_20__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = call i32 @releaseMonitor(%struct.TYPE_19__* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = call i32 @_glfwInputWindowMonitor(%struct.TYPE_19__* %66, %struct.TYPE_20__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @updateNormalHints(%struct.TYPE_19__* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = icmp ne %struct.TYPE_20__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %65
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = call i32 @_glfwPlatformWindowVisible(%struct.TYPE_19__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @XMapRaised(i32 %82, i32 %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = call i32 @waitForVisibilityNotify(%struct.TYPE_19__* %88)
  br label %90

90:                                               ; preds = %81, %77
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = call i32 @updateWindowMode(%struct.TYPE_19__* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = call i32 @acquireMonitor(%struct.TYPE_19__* %93)
  br label %108

95:                                               ; preds = %65
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = call i32 @updateWindowMode(%struct.TYPE_19__* %96)
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @XMoveResizeWindow(i32 %98, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %95, %90
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 4
  %110 = call i32 @XFlush(i32 %109)
  br label %111

111:                                              ; preds = %108, %54
  ret void
}

declare dso_local i32 @acquireMonitor(%struct.TYPE_19__*) #1

declare dso_local i32 @updateNormalHints(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @XMoveResizeWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

declare dso_local i32 @releaseMonitor(%struct.TYPE_19__*) #1

declare dso_local i32 @_glfwInputWindowMonitor(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @_glfwPlatformWindowVisible(%struct.TYPE_19__*) #1

declare dso_local i32 @XMapRaised(i32, i32) #1

declare dso_local i32 @waitForVisibilityNotify(%struct.TYPE_19__*) #1

declare dso_local i32 @updateWindowMode(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
