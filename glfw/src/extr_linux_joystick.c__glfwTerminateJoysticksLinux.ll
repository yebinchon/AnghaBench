; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c__glfwTerminateJoysticksLinux.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c__glfwTerminateJoysticksLinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@GLFW_JOYSTICK_LAST = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwTerminateJoysticksLinux() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %20, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 1), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %10
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %2, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = call i32 @closeJoystick(%struct.TYPE_6__* %17)
  br label %19

19:                                               ; preds = %16, %7
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %3

23:                                               ; preds = %3
  %24 = call i32 @regfree(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 2))
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 8
  %33 = call i32 @inotify_rm_watch(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  %36 = call i32 @close(i64 %35)
  br label %37

37:                                               ; preds = %34, %23
  ret void
}

declare dso_local i32 @closeJoystick(%struct.TYPE_6__*) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @inotify_rm_watch(i64, i64) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
