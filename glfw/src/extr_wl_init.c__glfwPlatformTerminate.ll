; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c__glfwPlatformTerminate.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c__glfwPlatformTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32*, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32* }

@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformTerminate() #0 {
  %1 = call i32 (...) @_glfwTerminateJoysticksLinux()
  %2 = call i32 (...) @_glfwTerminateEGL()
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 27, i32 0), align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 27, i32 0), align 8
  %7 = call i32 @_glfw_dlclose(i32* %6)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 27, i32 0), align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 3), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 3), align 8
  %13 = call i32 @xkb_keymap_unref(i64 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 2), align 8
  %19 = call i32 @xkb_state_unref(i64 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 1), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 1), align 8
  %25 = call i32 @xkb_context_unref(i64 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 0), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 0), align 8
  %31 = call i32 @_glfw_dlclose(i32* %30)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 26, i32 0), align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 25), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 25), align 8
  %37 = call i32 @wl_cursor_theme_destroy(i64 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 24), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 24), align 8
  %43 = call i32 @wl_cursor_theme_destroy(i64 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 23, i32 0), align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 23, i32 0), align 8
  %49 = call i32 @_glfw_dlclose(i32* %48)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 23, i32 0), align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 22), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 22), align 8
  %55 = call i32 @wl_surface_destroy(i64 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 21), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 21), align 8
  %61 = call i32 @wl_subcompositor_destroy(i64 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 20), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 20), align 8
  %67 = call i32 @wl_compositor_destroy(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19), align 8
  %73 = call i32 @wl_shm_destroy(i64 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18), align 8
  %79 = call i32 @wp_viewporter_destroy(i64 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 17), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 17), align 8
  %85 = call i32 @zxdg_decoration_manager_v1_destroy(i64 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16), align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16), align 8
  %91 = call i32 @xdg_wm_base_destroy(i64 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 8
  %97 = call i32 @wl_data_source_destroy(i64 %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 14), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 14), align 8
  %103 = call i32 @wl_data_device_destroy(i64 %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 13), align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 13), align 8
  %109 = call i32 @wl_data_offer_destroy(i64 %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 12), align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 12), align 8
  %115 = call i32 @wl_data_device_manager_destroy(i64 %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 11), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 11), align 8
  %121 = call i32 @wl_pointer_destroy(i64 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 10), align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 10), align 8
  %127 = call i32 @wl_keyboard_destroy(i64 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 9), align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 9), align 8
  %133 = call i32 @wl_seat_destroy(i64 %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 8), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 8), align 8
  %139 = call i32 @zwp_relative_pointer_manager_v1_destroy(i64 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 7), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 7), align 8
  %145 = call i32 @zwp_pointer_constraints_v1_destroy(i64 %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %151 = call i32 @zwp_idle_inhibit_manager_v1_destroy(i64 %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 5), align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 5), align 8
  %157 = call i32 @wl_registry_destroy(i64 %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %163 = call i32 @wl_display_flush(i64 %162)
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %165 = call i32 @wl_display_disconnect(i64 %164)
  br label %166

166:                                              ; preds = %161, %158
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %168 = icmp sge i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %171 = call i32 @close(i64 %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 8
  %174 = icmp sge i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 8
  %177 = call i32 @close(i64 %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3), align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3), align 8
  %183 = call i32 @free(i64 %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2), align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2), align 8
  %189 = call i32 @free(i64 %188)
  br label %190

190:                                              ; preds = %187, %184
  ret void
}

declare dso_local i32 @_glfwTerminateJoysticksLinux(...) #1

declare dso_local i32 @_glfwTerminateEGL(...) #1

declare dso_local i32 @_glfw_dlclose(i32*) #1

declare dso_local i32 @xkb_keymap_unref(i64) #1

declare dso_local i32 @xkb_state_unref(i64) #1

declare dso_local i32 @xkb_context_unref(i64) #1

declare dso_local i32 @wl_cursor_theme_destroy(i64) #1

declare dso_local i32 @wl_surface_destroy(i64) #1

declare dso_local i32 @wl_subcompositor_destroy(i64) #1

declare dso_local i32 @wl_compositor_destroy(i64) #1

declare dso_local i32 @wl_shm_destroy(i64) #1

declare dso_local i32 @wp_viewporter_destroy(i64) #1

declare dso_local i32 @zxdg_decoration_manager_v1_destroy(i64) #1

declare dso_local i32 @xdg_wm_base_destroy(i64) #1

declare dso_local i32 @wl_data_source_destroy(i64) #1

declare dso_local i32 @wl_data_device_destroy(i64) #1

declare dso_local i32 @wl_data_offer_destroy(i64) #1

declare dso_local i32 @wl_data_device_manager_destroy(i64) #1

declare dso_local i32 @wl_pointer_destroy(i64) #1

declare dso_local i32 @wl_keyboard_destroy(i64) #1

declare dso_local i32 @wl_seat_destroy(i64) #1

declare dso_local i32 @zwp_relative_pointer_manager_v1_destroy(i64) #1

declare dso_local i32 @zwp_pointer_constraints_v1_destroy(i64) #1

declare dso_local i32 @zwp_idle_inhibit_manager_v1_destroy(i64) #1

declare dso_local i32 @wl_registry_destroy(i64) #1

declare dso_local i32 @wl_display_flush(i64) #1

declare dso_local i32 @wl_display_disconnect(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
