; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_setCursor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_setCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.wl_cursor_theme*, %struct.wl_cursor_theme*, %struct.wl_surface* }
%struct.wl_cursor_theme = type { i32 }
%struct.wl_surface = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wl_buffer = type { i32 }
%struct.wl_cursor = type { %struct.wl_cursor_image** }
%struct.wl_cursor_image = type { i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Wayland: Standard cursor not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @setCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setCursor(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_buffer*, align 8
  %6 = alloca %struct.wl_cursor*, align 8
  %7 = alloca %struct.wl_cursor_image*, align 8
  %8 = alloca %struct.wl_surface*, align 8
  %9 = alloca %struct.wl_cursor_theme*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.wl_surface*, %struct.wl_surface** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 4), align 8
  store %struct.wl_surface* %11, %struct.wl_surface** %8, align 8
  %12 = load %struct.wl_cursor_theme*, %struct.wl_cursor_theme** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 3), align 8
  store %struct.wl_cursor_theme* %12, %struct.wl_cursor_theme** %9, align 8
  store i32 1, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.wl_cursor_theme*, %struct.wl_cursor_theme** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2), align 8
  %20 = icmp ne %struct.wl_cursor_theme* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  store i32 2, i32* %10, align 4
  %22 = load %struct.wl_cursor_theme*, %struct.wl_cursor_theme** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2), align 8
  store %struct.wl_cursor_theme* %22, %struct.wl_cursor_theme** %9, align 8
  br label %23

23:                                               ; preds = %21, %18, %2
  %24 = load %struct.wl_cursor_theme*, %struct.wl_cursor_theme** %9, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(%struct.wl_cursor_theme* %24, i8* %25)
  store %struct.wl_cursor* %26, %struct.wl_cursor** %6, align 8
  %27 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %28 = icmp ne %struct.wl_cursor* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %31 = call i32 @_glfwInputError(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %78

32:                                               ; preds = %23
  %33 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %34 = getelementptr inbounds %struct.wl_cursor, %struct.wl_cursor* %33, i32 0, i32 0
  %35 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %34, align 8
  %36 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %35, i64 0
  %37 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %36, align 8
  store %struct.wl_cursor_image* %37, %struct.wl_cursor_image** %7, align 8
  %38 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %39 = icmp ne %struct.wl_cursor_image* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %78

41:                                               ; preds = %32
  %42 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %43 = call %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %42)
  store %struct.wl_buffer* %43, %struct.wl_buffer** %5, align 8
  %44 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  %45 = icmp ne %struct.wl_buffer* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %78

47:                                               ; preds = %41
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %50 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %51 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %52 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %57 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sdiv i32 %58, %59
  %61 = call i32 @wl_pointer_set_cursor(i32 %48, i32 %49, %struct.wl_surface* %50, i32 %55, i32 %60)
  %62 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @wl_surface_set_buffer_scale(%struct.wl_surface* %62, i32 %63)
  %65 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %66 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  %67 = call i32 @wl_surface_attach(%struct.wl_surface* %65, %struct.wl_buffer* %66, i32 0, i32 0)
  %68 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %69 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %70 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %73 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wl_surface_damage(%struct.wl_surface* %68, i32 0, i32 0, i32 %71, i32 %74)
  %76 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %77 = call i32 @wl_surface_commit(%struct.wl_surface* %76)
  br label %78

78:                                               ; preds = %47, %46, %40, %29
  ret void
}

declare dso_local %struct.wl_cursor* @wl_cursor_theme_get_cursor(%struct.wl_cursor_theme*, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, %struct.wl_surface*, i32, i32) #1

declare dso_local i32 @wl_surface_set_buffer_scale(%struct.wl_surface*, i32) #1

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, %struct.wl_buffer*, i32, i32) #1

declare dso_local i32 @wl_surface_damage(%struct.wl_surface*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(%struct.wl_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
