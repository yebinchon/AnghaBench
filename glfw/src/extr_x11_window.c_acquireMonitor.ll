; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_acquireMonitor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_acquireMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_17__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@DontPreferBlanking = common dso_local global i32 0, align 4
@DefaultExposures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @acquireMonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquireMonitor(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %10 = call i32 @XGetScreenSaver(i32 %9, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 4), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 3), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 2), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 1))
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* @DontPreferBlanking, align 4
  %13 = load i32, i32* @DefaultExposures, align 4
  %14 = call i32 @XSetScreenSaver(i32 %11, i32 0, i32 0, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = call i32 @_glfwSetVideoModeX11(%struct.TYPE_20__* %28, i32* %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %25
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = call i32 @_glfwPlatformGetMonitorPos(%struct.TYPE_20__* %40, i32* %3, i32* %4)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_20__* %44, %struct.TYPE_19__* %5)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @XMoveResizeWindow(i32 %46, i32 %50, i32 %51, i32 %52, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %37, %25
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %63 = call i32 @_glfwInputMonitorWindow(%struct.TYPE_20__* %61, %struct.TYPE_18__* %62)
  ret void
}

declare dso_local i32 @XGetScreenSaver(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @XSetScreenSaver(i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwSetVideoModeX11(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @_glfwPlatformGetMonitorPos(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @XMoveResizeWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwInputMonitorWindow(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
