; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_setIdleInhibitor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_setIdleInhibitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Wayland: Idle inhibitor creation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @setIdleInhibitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setIdleInhibitor(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @zwp_idle_inhibit_manager_v1_create_inhibitor(i64 %17, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %33 = call i32 @_glfwInputError(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %16
  br label %54

35:                                               ; preds = %13, %7, %2
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @zwp_idle_inhibitor_v1_destroy(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %44, %38, %35
  br label %54

54:                                               ; preds = %53, %34
  ret void
}

declare dso_local i32* @zwp_idle_inhibit_manager_v1_create_inhibitor(i64, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @zwp_idle_inhibitor_v1_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
