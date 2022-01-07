; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createDecoration.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createDecoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.wl_surface = type { i32 }
%struct.wl_buffer = type { i32 }
%struct.wl_region = type { i32 }

@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.wl_surface*, %struct.wl_buffer*, i64, i32, i32, i32, i32)* @createDecoration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createDecoration(%struct.TYPE_6__* %0, %struct.wl_surface* %1, %struct.wl_buffer* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.wl_surface*, align 8
  %11 = alloca %struct.wl_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wl_region*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.wl_surface* %1, %struct.wl_surface** %10, align 8
  store %struct.wl_buffer* %2, %struct.wl_buffer** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %19 = call i32 @wl_compositor_create_surface(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 2), align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %27 = call i32 @wl_subcompositor_get_subsurface(i32 %22, i32 %25, %struct.wl_surface* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @wl_subsurface_set_position(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wp_viewporter_get_viewport(i32 %36, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @wp_viewport_set_destination(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wl_buffer*, %struct.wl_buffer** %11, align 8
  %53 = call i32 @wl_surface_attach(i32 %51, %struct.wl_buffer* %52, i32 0, i32 0)
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %58 = call %struct.wl_region* @wl_compositor_create_region(i32 %57)
  store %struct.wl_region* %58, %struct.wl_region** %17, align 8
  %59 = load %struct.wl_region*, %struct.wl_region** %17, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @wl_region_add(%struct.wl_region* %59, i32 0, i32 0, i32 %60, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wl_region*, %struct.wl_region** %17, align 8
  %67 = call i32 @wl_surface_set_opaque_region(i32 %65, %struct.wl_region* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wl_surface_commit(i32 %70)
  %72 = load %struct.wl_region*, %struct.wl_region** %17, align 8
  %73 = call i32 @wl_region_destroy(%struct.wl_region* %72)
  br label %79

74:                                               ; preds = %8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wl_surface_commit(i32 %77)
  br label %79

79:                                               ; preds = %74, %56
  ret void
}

declare dso_local i32 @wl_compositor_create_surface(i32) #1

declare dso_local i32 @wl_subcompositor_get_subsurface(i32, i32, %struct.wl_surface*) #1

declare dso_local i32 @wl_subsurface_set_position(i32, i32, i32) #1

declare dso_local i32 @wp_viewporter_get_viewport(i32, i32) #1

declare dso_local i32 @wp_viewport_set_destination(i32, i32, i32) #1

declare dso_local i32 @wl_surface_attach(i32, %struct.wl_buffer*, i32, i32) #1

declare dso_local %struct.wl_region* @wl_compositor_create_region(i32) #1

declare dso_local i32 @wl_region_add(%struct.wl_region*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_set_opaque_region(i32, %struct.wl_region*) #1

declare dso_local i32 @wl_surface_commit(i32) #1

declare dso_local i32 @wl_region_destroy(%struct.wl_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
