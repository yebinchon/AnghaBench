; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_lockPointer.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_lockPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.zwp_locked_pointer_v1*, %struct.zwp_relative_pointer_v1* }
%struct.zwp_locked_pointer_v1 = type { i32 }
%struct.zwp_relative_pointer_v1 = type { i32 }

@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Wayland: no relative pointer manager\00", align 1
@relativePointerListener = common dso_local global i32 0, align 4
@ZWP_POINTER_CONSTRAINTS_V1_LIFETIME_PERSISTENT = common dso_local global i32 0, align 4
@lockedPointerListener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @lockPointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockPointer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.zwp_relative_pointer_v1*, align 8
  %4 = alloca %struct.zwp_locked_pointer_v1*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 3), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %9 = call i32 @_glfwInputError(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %41

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 3), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %13 = call %struct.zwp_relative_pointer_v1* @zwp_relative_pointer_manager_v1_get_relative_pointer(i32 %11, i32 %12)
  store %struct.zwp_relative_pointer_v1* %13, %struct.zwp_relative_pointer_v1** %3, align 8
  %14 = load %struct.zwp_relative_pointer_v1*, %struct.zwp_relative_pointer_v1** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = call i32 @zwp_relative_pointer_v1_add_listener(%struct.zwp_relative_pointer_v1* %14, i32* @relativePointerListener, %struct.TYPE_12__* %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 2), align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %23 = load i32, i32* @ZWP_POINTER_CONSTRAINTS_V1_LIFETIME_PERSISTENT, align 4
  %24 = call %struct.zwp_locked_pointer_v1* @zwp_pointer_constraints_v1_lock_pointer(i32 %17, i32 %21, i32 %22, i32* null, i32 %23)
  store %struct.zwp_locked_pointer_v1* %24, %struct.zwp_locked_pointer_v1** %4, align 8
  %25 = load %struct.zwp_locked_pointer_v1*, %struct.zwp_locked_pointer_v1** %4, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = call i32 @zwp_locked_pointer_v1_add_listener(%struct.zwp_locked_pointer_v1* %25, i32* @lockedPointerListener, %struct.TYPE_12__* %26)
  %28 = load %struct.zwp_relative_pointer_v1*, %struct.zwp_relative_pointer_v1** %3, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store %struct.zwp_relative_pointer_v1* %28, %struct.zwp_relative_pointer_v1** %32, align 8
  %33 = load %struct.zwp_locked_pointer_v1*, %struct.zwp_locked_pointer_v1** %4, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store %struct.zwp_locked_pointer_v1* %33, %struct.zwp_locked_pointer_v1** %37, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 4
  %40 = call i32 @wl_pointer_set_cursor(i32 %38, i32 %39, i32* null, i32 0, i32 0)
  br label %41

41:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.zwp_relative_pointer_v1* @zwp_relative_pointer_manager_v1_get_relative_pointer(i32, i32) #1

declare dso_local i32 @zwp_relative_pointer_v1_add_listener(%struct.zwp_relative_pointer_v1*, i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.zwp_locked_pointer_v1* @zwp_pointer_constraints_v1_lock_pointer(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @zwp_locked_pointer_v1_add_listener(%struct.zwp_locked_pointer_v1*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
