; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_setCursorImage.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_setCursorImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.wl_surface* }
%struct.wl_surface = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, %struct.wl_cursor*, %struct.wl_buffer*, %struct.wl_cursor* }
%struct.wl_buffer = type { i32 }
%struct.wl_cursor = type { %struct.wl_cursor_image** }
%struct.wl_cursor_image = type { i32, i32, i32, i32, i32 }
%struct.itimerspec = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @setCursorImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setCursorImage(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.itimerspec, align 4
  %6 = alloca %struct.wl_cursor*, align 8
  %7 = alloca %struct.wl_cursor_image*, align 8
  %8 = alloca %struct.wl_buffer*, align 8
  %9 = alloca %struct.wl_surface*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = bitcast %struct.itimerspec* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 7
  %14 = load %struct.wl_cursor*, %struct.wl_cursor** %13, align 8
  store %struct.wl_cursor* %14, %struct.wl_cursor** %6, align 8
  %15 = load %struct.wl_surface*, %struct.wl_surface** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3), align 8
  store %struct.wl_surface* %15, %struct.wl_surface** %9, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %17 = icmp ne %struct.wl_cursor* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  %21 = load %struct.wl_buffer*, %struct.wl_buffer** %20, align 8
  store %struct.wl_buffer* %21, %struct.wl_buffer** %8, align 8
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 5
  %31 = load %struct.wl_cursor*, %struct.wl_cursor** %30, align 8
  %32 = icmp ne %struct.wl_cursor* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  %36 = load %struct.wl_cursor*, %struct.wl_cursor** %35, align 8
  store %struct.wl_cursor* %36, %struct.wl_cursor** %6, align 8
  store i32 2, i32* %10, align 4
  br label %37

37:                                               ; preds = %33, %28, %22
  %38 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %39 = getelementptr inbounds %struct.wl_cursor, %struct.wl_cursor* %38, i32 0, i32 0
  %40 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %40, i64 %43
  %45 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %44, align 8
  store %struct.wl_cursor_image* %45, %struct.wl_cursor_image** %7, align 8
  %46 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %47 = call %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %46)
  store %struct.wl_buffer* %47, %struct.wl_buffer** %8, align 8
  %48 = load %struct.wl_buffer*, %struct.wl_buffer** %8, align 8
  %49 = icmp ne %struct.wl_buffer* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  br label %118

51:                                               ; preds = %37
  %52 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %53 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 1000
  %56 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %59 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 1000
  %62 = mul nsw i32 %61, 1000000
  %63 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 2), align 8
  %66 = call i32 @timerfd_settime(i32 %65, i32 0, %struct.itimerspec* %5, i32* null)
  %67 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %68 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %73 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %78 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %83 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %51, %18
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %90 = load %struct.wl_surface*, %struct.wl_surface** %9, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sdiv i32 %93, %94
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %98, %99
  %101 = call i32 @wl_pointer_set_cursor(i32 %88, i32 %89, %struct.wl_surface* %90, i32 %95, i32 %100)
  %102 = load %struct.wl_surface*, %struct.wl_surface** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @wl_surface_set_buffer_scale(%struct.wl_surface* %102, i32 %103)
  %105 = load %struct.wl_surface*, %struct.wl_surface** %9, align 8
  %106 = load %struct.wl_buffer*, %struct.wl_buffer** %8, align 8
  %107 = call i32 @wl_surface_attach(%struct.wl_surface* %105, %struct.wl_buffer* %106, i32 0, i32 0)
  %108 = load %struct.wl_surface*, %struct.wl_surface** %9, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @wl_surface_damage(%struct.wl_surface* %108, i32 0, i32 0, i32 %111, i32 %114)
  %116 = load %struct.wl_surface*, %struct.wl_surface** %9, align 8
  %117 = call i32 @wl_surface_commit(%struct.wl_surface* %116)
  br label %118

118:                                              ; preds = %87, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #2

declare dso_local i32 @timerfd_settime(i32, i32, %struct.itimerspec*, i32*) #2

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, %struct.wl_surface*, i32, i32) #2

declare dso_local i32 @wl_surface_set_buffer_scale(%struct.wl_surface*, i32) #2

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, %struct.wl_buffer*, i32, i32) #2

declare dso_local i32 @wl_surface_damage(%struct.wl_surface*, i32, i32, i32, i32) #2

declare dso_local i32 @wl_surface_commit(%struct.wl_surface*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
