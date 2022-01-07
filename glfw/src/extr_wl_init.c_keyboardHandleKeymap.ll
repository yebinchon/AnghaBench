; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_keyboardHandleKeymap.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_keyboardHandleKeymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.xkb_keymap*, %struct.xkb_state*, %struct.xkb_compose_state*, i32 }
%struct.xkb_keymap = type { i32 }
%struct.xkb_state = type { i32 }
%struct.xkb_compose_state = type { i32 }
%struct.wl_keyboard = type { i32 }

@WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@XKB_KEYMAP_FORMAT_TEXT_V1 = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Wayland: Failed to compile keymap\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Wayland: Failed to create XKB state\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Mod1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Mod4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Mod2\00", align 1
@XKB_COMPOSE_COMPILE_NO_FLAGS = common dso_local global i32 0, align 4
@XKB_COMPOSE_STATE_NO_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i32, i64)* @keyboardHandleKeymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleKeymap(i8* %0, %struct.wl_keyboard* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_keyboard*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xkb_keymap*, align 8
  %12 = alloca %struct.xkb_state*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @close(i32 %19)
  br label %98

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @MAP_SHARED, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @mmap(i32* null, i64 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** @MAP_FAILED, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @close(i32 %31)
  br label %98

33:                                               ; preds = %21
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 9), align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %37 = call %struct.xkb_keymap* @xkb_keymap_new_from_string(i32 %34, i8* %35, i32 %36, i32 0)
  store %struct.xkb_keymap* %37, %struct.xkb_keymap** %11, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @munmap(i8* %38, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  %44 = icmp ne %struct.xkb_keymap* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %47 = call i32 @_glfwInputError(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %98

48:                                               ; preds = %33
  %49 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  %50 = call %struct.xkb_state* @xkb_state_new(%struct.xkb_keymap* %49)
  store %struct.xkb_state* %50, %struct.xkb_state** %12, align 8
  %51 = load %struct.xkb_state*, %struct.xkb_state** %12, align 8
  %52 = icmp ne %struct.xkb_state* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %55 = call i32 @_glfwInputError(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  %57 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %56)
  br label %98

58:                                               ; preds = %48
  %59 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %63, i8** %14, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i8*, i8** %14, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %68, i8** %14, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %73

73:                                               ; preds = %72, %69
  %74 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %75 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %74)
  %76 = load %struct.xkb_state*, %struct.xkb_state** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 7), align 8
  %77 = call i32 @xkb_state_unref(%struct.xkb_state* %76)
  %78 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  store %struct.xkb_keymap* %78, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %79 = load %struct.xkb_state*, %struct.xkb_state** %12, align 8
  store %struct.xkb_state* %79, %struct.xkb_state** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 7), align 8
  %80 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %81 = call i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %82 = shl i32 1, %81
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %83 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %84 = call i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %85 = shl i32 1, %84
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 4
  %86 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %87 = call i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %88 = shl i32 1, %87
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 2), align 8
  %89 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %90 = call i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %91 = shl i32 1, %90
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 3), align 4
  %92 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %93 = call i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %94 = shl i32 1, %93
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %95 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %96 = call i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %97 = shl i32 1, %96
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 5), align 4
  br label %98

98:                                               ; preds = %73, %53, %45, %30, %18
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.xkb_keymap* @xkb_keymap_new_from_string(i32, i8*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.xkb_state* @xkb_state_new(%struct.xkb_keymap*) #1

declare dso_local i32 @xkb_keymap_unref(%struct.xkb_keymap*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @xkb_state_unref(%struct.xkb_state*) #1

declare dso_local i32 @xkb_keymap_mod_get_index(%struct.xkb_keymap*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
