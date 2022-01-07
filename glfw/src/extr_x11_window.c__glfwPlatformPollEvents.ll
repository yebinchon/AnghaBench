; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformPollEvents.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformPollEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformPollEvents() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @_glfwDetectJoystickConnectionLinux()
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %7 = call i32 @XPending(i32 %6)
  br label %8

8:                                                ; preds = %12, %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %10 = call i64 @XQLength(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %14 = call i32 @XNextEvent(i32 %13, i32* %2)
  %15 = call i32 @processEvent(i32* %2)
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %1, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %22 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_9__* %21, i32* %3, i32* %4)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 2
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30, %20
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sdiv i32 %40, 2
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 %42, 2
  %44 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_9__* %39, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %38, %30
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %48 = call i32 @XFlush(i32 %47)
  ret void
}

declare dso_local i32 @_glfwDetectJoystickConnectionLinux(...) #1

declare dso_local i32 @XPending(i32) #1

declare dso_local i64 @XQLength(i32) #1

declare dso_local i32 @XNextEvent(i32, i32*) #1

declare dso_local i32 @processEvent(i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetCursorPos(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
