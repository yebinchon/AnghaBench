; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformDestroyWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformDestroyWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_17__, i64, %struct.TYPE_16__, i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_19__*)* }

@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformDestroyWindow(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 8
  %5 = icmp eq %struct.TYPE_19__* %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = load i32, i32* @GLFW_FALSE, align 4
  %9 = call i32 @_glfwInputCursorEnter(%struct.TYPE_19__* %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = icmp eq %struct.TYPE_19__* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  store %struct.TYPE_19__* null, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = load i32, i32* @GLFW_FALSE, align 4
  %17 = call i32 @_glfwInputWindowFocus(%struct.TYPE_19__* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @zwp_idle_inhibitor_v1_destroy(i64 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_19__*)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %42 = call i32 %40(%struct.TYPE_19__* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = call i32 @destroyDecorations(%struct.TYPE_19__* %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @zxdg_toplevel_decoration_v1_destroy(i64 %57)
  br label %59

59:                                               ; preds = %52, %43
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @wl_buffer_destroy(i64 %71)
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @wl_egl_window_destroy(i64 %83)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @xdg_toplevel_destroy(i64 %97)
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @xdg_surface_destroy(i64 %111)
  br label %113

113:                                              ; preds = %106, %99
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @wl_surface_destroy(i64 %123)
  br label %125

125:                                              ; preds = %119, %113
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @free(i32 %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @free(i32 %134)
  ret void
}

declare dso_local i32 @_glfwInputCursorEnter(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @_glfwInputWindowFocus(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @zwp_idle_inhibitor_v1_destroy(i64) #1

declare dso_local i32 @destroyDecorations(%struct.TYPE_19__*) #1

declare dso_local i32 @zxdg_toplevel_decoration_v1_destroy(i64) #1

declare dso_local i32 @wl_buffer_destroy(i64) #1

declare dso_local i32 @wl_egl_window_destroy(i64) #1

declare dso_local i32 @xdg_toplevel_destroy(i64) #1

declare dso_local i32 @xdg_surface_destroy(i64) #1

declare dso_local i32 @wl_surface_destroy(i64) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
