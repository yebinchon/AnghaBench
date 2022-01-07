; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c__glfwPlatformPollJoystick.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c__glfwPlatformPollJoystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.input_event = type { i64, i64, i32 }

@errno = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@EV_SYN = common dso_local global i64 0, align 8
@SYN_DROPPED = common dso_local global i64 0, align 8
@GLFW_TRUE = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SYN_REPORT = common dso_local global i64 0, align 8
@GLFW_FALSE = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i64 0, align 8
@EV_ABS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformPollJoystick(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_event, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %73, %47, %2
  store i64 0, i64* @errno, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @read(i32 %10, %struct.input_event* %5, i32 24)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENODEV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i32 @closeJoystick(%struct.TYPE_12__* %18)
  br label %20

20:                                               ; preds = %17, %13
  br label %74

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EV_SYN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SYN_DROPPED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @GLFW_TRUE, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %43

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SYN_REPORT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = call i32 @pollAbsState(%struct.TYPE_12__* %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %6

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EV_KEY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @handleKeyEvent(%struct.TYPE_12__* %54, i64 %56, i32 %58)
  br label %73

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EV_ABS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.input_event, %struct.input_event* %5, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @handleAbsEvent(%struct.TYPE_12__* %66, i64 %68, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %53
  br label %6

74:                                               ; preds = %20
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  ret i32 %77
}

declare dso_local i64 @read(i32, %struct.input_event*, i32) #1

declare dso_local i32 @closeJoystick(%struct.TYPE_12__*) #1

declare dso_local i32 @pollAbsState(%struct.TYPE_12__*) #1

declare dso_local i32 @handleKeyEvent(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @handleAbsEvent(%struct.TYPE_12__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
