; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformCreateStandardCursor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformCreateStandardCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.wl_cursor*, i64, %struct.wl_cursor* }
%struct.wl_cursor = type { i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Wayland: Standard cursor \22%s\22 not found\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateStandardCursor(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl_cursor*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @translateCursorShape(i32 %8)
  %10 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64 %7, i32 %9)
  store %struct.wl_cursor* %10, %struct.wl_cursor** %6, align 8
  %11 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %12 = icmp ne %struct.wl_cursor* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @translateCursorShape(i32 %15)
  %17 = call i32 @_glfwInputError(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store %struct.wl_cursor* %20, %struct.wl_cursor** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @translateCursorShape(i32 %31)
  %33 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64 %30, i32 %32)
  store %struct.wl_cursor* %33, %struct.wl_cursor** %6, align 8
  %34 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.wl_cursor* %34, %struct.wl_cursor** %37, align 8
  br label %38

38:                                               ; preds = %29, %19
  %39 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.wl_cursor* @wl_cursor_theme_get_cursor(i64, i32) #1

declare dso_local i32 @translateCursorShape(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
