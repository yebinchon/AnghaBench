; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createXdgSurface.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createXdgSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Wayland: xdg-surface creation failed\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@xdgSurfaceListener = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Wayland: xdg-toplevel creation failed\00", align 1
@xdgToplevelListener = common dso_local global i32 0, align 4
@GLFW_DONT_CARE = common dso_local global i64 0, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @createXdgSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createXdgSurface(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @xdg_wm_base_get_xdg_surface(i32 %4, i32 %8)
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32 %9, i32* %13, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %22 = call i32 @_glfwInputError(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %181

24:                                               ; preds = %1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = call i32 @xdg_surface_add_listener(i32 %29, i32* @xdgSurfaceListener, %struct.TYPE_19__* %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xdg_surface_get_toplevel(i32 %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %24
  %49 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %50 = call i32 @_glfwInputError(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %181

52:                                               ; preds = %24
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = call i32 @xdg_toplevel_add_listener(i32 %57, i32* @xdgToplevelListener, %struct.TYPE_19__* %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %52
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @xdg_toplevel_set_title(i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %65, %52
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @GLFW_DONT_CARE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @GLFW_DONT_CARE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @xdg_toplevel_set_min_size(i32 %93, i64 %96, i64 %99)
  br label %101

101:                                              ; preds = %88, %82, %76
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @GLFW_DONT_CARE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @GLFW_DONT_CARE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @xdg_toplevel_set_max_size(i32 %118, i64 %121, i64 %124)
  br label %126

126:                                              ; preds = %113, %107, %101
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = icmp ne %struct.TYPE_15__* %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %126
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @xdg_toplevel_set_fullscreen(i32 %136, i32 %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = load i32, i32* @GLFW_TRUE, align 4
  %146 = call i32 @setIdleInhibitor(%struct.TYPE_19__* %144, i32 %145)
  br label %172

147:                                              ; preds = %126
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @xdg_toplevel_set_maximized(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %161 = load i32, i32* @GLFW_FALSE, align 4
  %162 = call i32 @setIdleInhibitor(%struct.TYPE_19__* %160, i32 %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %164 = call i32 @setXdgDecorations(%struct.TYPE_19__* %163)
  br label %171

165:                                              ; preds = %147
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %167 = load i32, i32* @GLFW_FALSE, align 4
  %168 = call i32 @setIdleInhibitor(%struct.TYPE_19__* %166, i32 %167)
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %170 = call i32 @setXdgDecorations(%struct.TYPE_19__* %169)
  br label %171

171:                                              ; preds = %165, %153
  br label %172

172:                                              ; preds = %171, %131
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @wl_surface_commit(i32 %176)
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 4
  %179 = call i32 @wl_display_roundtrip(i32 %178)
  %180 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %172, %48, %20
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @xdg_wm_base_get_xdg_surface(i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @xdg_surface_add_listener(i32, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @xdg_surface_get_toplevel(i32) #1

declare dso_local i32 @xdg_toplevel_add_listener(i32, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @xdg_toplevel_set_title(i32, i64) #1

declare dso_local i32 @xdg_toplevel_set_min_size(i32, i64, i64) #1

declare dso_local i32 @xdg_toplevel_set_max_size(i32, i64, i64) #1

declare dso_local i32 @xdg_toplevel_set_fullscreen(i32, i32) #1

declare dso_local i32 @setIdleInhibitor(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xdg_toplevel_set_maximized(i32) #1

declare dso_local i32 @setXdgDecorations(%struct.TYPE_19__*) #1

declare dso_local i32 @wl_surface_commit(i32) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
