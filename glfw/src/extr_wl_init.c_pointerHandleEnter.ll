; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_pointerHandleEnter.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_pointerHandleEnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wl_pointer = type { i32 }
%struct.wl_surface = type { i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, %struct.wl_surface*, i32, i32)* @pointerHandleEnter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointerHandleEnter(i8* %0, %struct.wl_pointer* %1, i32 %2, %struct.wl_surface* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wl_surface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wl_surface* %3, %struct.wl_surface** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %16 = icmp ne %struct.wl_surface* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %51

18:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  %19 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %20 = call %struct.TYPE_13__* @wl_surface_get_user_data(%struct.wl_surface* %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %14, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %25 = call %struct.TYPE_13__* @findWindowFromDecorationSurface(%struct.wl_surface* %24, i32* %13)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %14, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %51

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %38 = load i32, i32* @GLFW_TRUE, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_glfwPlatformSetCursor(%struct.TYPE_13__* %42, i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = load i32, i32* @GLFW_TRUE, align 4
  %50 = call i32 @_glfwInputCursorEnter(%struct.TYPE_13__* %48, i32 %49)
  br label %51

51:                                               ; preds = %30, %28, %17
  ret void
}

declare dso_local %struct.TYPE_13__* @wl_surface_get_user_data(%struct.wl_surface*) #1

declare dso_local %struct.TYPE_13__* @findWindowFromDecorationSurface(%struct.wl_surface*, i32*) #1

declare dso_local i32 @_glfwPlatformSetCursor(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @_glfwInputCursorEnter(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
