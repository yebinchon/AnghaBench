; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_registryHandleGlobal.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_registryHandleGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wl_registry = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wl_compositor\00", align 1
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@wl_compositor_interface = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"wl_subcompositor\00", align 1
@wl_subcompositor_interface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"wl_shm\00", align 1
@wl_shm_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"wl_output\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wl_seat\00", align 1
@wl_seat_interface = common dso_local global i32 0, align 4
@seatListener = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"wl_data_device_manager\00", align 1
@wl_data_device_manager_interface = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"xdg_wm_base\00", align 1
@xdg_wm_base_interface = common dso_local global i32 0, align 4
@wmBaseListener = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"zxdg_decoration_manager_v1\00", align 1
@zxdg_decoration_manager_v1_interface = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"wp_viewporter\00", align 1
@wp_viewporter_interface = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"zwp_relative_pointer_manager_v1\00", align 1
@zwp_relative_pointer_manager_v1_interface = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"zwp_pointer_constraints_v1\00", align 1
@zwp_pointer_constraints_v1_interface = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"zwp_idle_inhibit_manager_v1\00", align 1
@zwp_idle_inhibit_manager_v1_interface = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_registry*, i32, i8*, i32)* @registryHandleGlobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @registryHandleGlobal(i8* %0, %struct.wl_registry* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i8*, i8** %9, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = call i8* @min(i32 3, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %18 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %21 = call i8* @wl_registry_bind(%struct.wl_registry* %18, i32 %19, i32* @wl_compositor_interface, i32 %20)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  br label %137

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @wl_registry_bind(%struct.wl_registry* %27, i32 %28, i32* @wl_subcompositor_interface, i32 1)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  br label %136

30:                                               ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @wl_registry_bind(%struct.wl_registry* %35, i32 %36, i32* @wl_shm_interface, i32 1)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  br label %135

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @_glfwAddOutputWayland(i32 %43, i32 %44)
  br label %134

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @min(i32 4, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %57 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %60 = call i8* @wl_registry_bind(%struct.wl_registry* %57, i32 %58, i32* @wl_seat_interface, i32 %59)
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %62 = call i32 @wl_seat_add_listener(i8* %61, i32* @seatListener, i32* null)
  br label %63

63:                                               ; preds = %53, %50
  br label %133

64:                                               ; preds = %46
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @wl_registry_bind(%struct.wl_registry* %72, i32 %73, i32* @wl_data_device_manager_interface, i32 1)
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %132

76:                                               ; preds = %64
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @wl_registry_bind(%struct.wl_registry* %81, i32 %82, i32* @xdg_wm_base_interface, i32 1)
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %85 = call i32 @xdg_wm_base_add_listener(i8* %84, i32* @wmBaseListener, i32* null)
  br label %131

86:                                               ; preds = %76
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i8* @wl_registry_bind(%struct.wl_registry* %91, i32 %92, i32* @zxdg_decoration_manager_v1_interface, i32 1)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  br label %130

94:                                               ; preds = %86
  %95 = load i8*, i8** %9, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i8* @wl_registry_bind(%struct.wl_registry* %99, i32 %100, i32* @wp_viewporter_interface, i32 1)
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  br label %129

102:                                              ; preds = %94
  %103 = load i8*, i8** %9, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i8* @wl_registry_bind(%struct.wl_registry* %107, i32 %108, i32* @zwp_relative_pointer_manager_v1_interface, i32 1)
  store i8* %109, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  br label %128

110:                                              ; preds = %102
  %111 = load i8*, i8** %9, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i8* @wl_registry_bind(%struct.wl_registry* %115, i32 %116, i32* @zwp_pointer_constraints_v1_interface, i32 1)
  store i8* %117, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  br label %127

118:                                              ; preds = %110
  %119 = load i8*, i8** %9, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i8* @wl_registry_bind(%struct.wl_registry* %123, i32 %124, i32* @zwp_idle_inhibit_manager_v1_interface, i32 1)
  store i8* %125, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %114
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %98
  br label %130

130:                                              ; preds = %129, %90
  br label %131

131:                                              ; preds = %130, %80
  br label %132

132:                                              ; preds = %131, %75
  br label %133

133:                                              ; preds = %132, %63
  br label %134

134:                                              ; preds = %133, %42
  br label %135

135:                                              ; preds = %134, %34
  br label %136

136:                                              ; preds = %135, %26
  br label %137

137:                                              ; preds = %136, %14
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @wl_registry_bind(%struct.wl_registry*, i32, i32*, i32) #1

declare dso_local i32 @_glfwAddOutputWayland(i32, i32) #1

declare dso_local i32 @wl_seat_add_listener(i8*, i32*, i32*) #1

declare dso_local i32 @xdg_wm_base_add_listener(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
