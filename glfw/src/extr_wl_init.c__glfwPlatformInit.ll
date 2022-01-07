; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i64, i8*, i32, i32, i64, i8*, i8*, i64, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i8*, i64, i64, i64 }
%struct.TYPE_7__ = type { i8*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"libwayland-cursor.so.0\00", align 1
@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Wayland: Failed to open libwayland-cursor\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"wl_cursor_theme_load\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"wl_cursor_theme_destroy\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"wl_cursor_theme_get_cursor\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"wl_cursor_image_get_buffer\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"libwayland-egl.so.1\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Wayland: Failed to open libwayland-egl\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"wl_egl_window_create\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"wl_egl_window_destroy\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"wl_egl_window_resize\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"libxkbcommon.so.0\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Wayland: Failed to open libxkbcommon\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"xkb_context_new\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"xkb_context_unref\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"xkb_keymap_new_from_string\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"xkb_keymap_unref\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"xkb_keymap_mod_get_index\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"xkb_keymap_key_repeats\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"xkb_state_new\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"xkb_state_unref\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"xkb_state_key_get_syms\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"xkb_state_update_mask\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"xkb_state_serialize_mods\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Wayland: Failed to connect to display\00", align 1
@registryListener = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [42 x i8] c"Wayland: Failed to initialize xkb context\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@TFD_CLOEXEC = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [53 x i8] c"Wayland: Failed to find xdg-shell in your compositor\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"XCURSOR_THEME\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"XCURSOR_SIZE\00", align 1
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [45 x i8] c"Wayland: Unable to load default cursor theme\00", align 1
@dataDeviceListener = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [45 x i8] c"Wayland: Unable to allocate clipboard memory\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i8* @_glfw_dlopen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 0), align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 0), align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %12 = call i32 @_glfwInputError(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %187

14:                                               ; preds = %0
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 0), align 8
  %16 = call i64 @_glfw_dlsym(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 4), align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 0), align 8
  %18 = call i64 @_glfw_dlsym(i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 3), align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 0), align 8
  %20 = call i64 @_glfw_dlsym(i8* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 2), align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 0), align 8
  %22 = call i64 @_glfw_dlsym(i8* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 19, i32 1), align 8
  %23 = call i8* @_glfw_dlopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 0), align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 0), align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %28 = call i32 @_glfwInputError(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %29 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %29, i32* %1, align 4
  br label %187

30:                                               ; preds = %14
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 0), align 8
  %32 = call i64 @_glfw_dlsym(i8* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 3), align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 0), align 8
  %34 = call i64 @_glfw_dlsym(i8* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 2), align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 0), align 8
  %36 = call i64 @_glfw_dlsym(i8* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 18, i32 1), align 8
  %37 = call i8* @_glfw_dlopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %42 = call i32 @_glfwInputError(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %43 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %43, i32* %1, align 4
  br label %187

44:                                               ; preds = %30
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %46 = call i64 @_glfw_dlsym(i8* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 19), align 8
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %48 = call i64 @_glfw_dlsym(i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 18), align 8
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %50 = call i64 @_glfw_dlsym(i8* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 17), align 8
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %52 = call i64 @_glfw_dlsym(i8* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 16), align 8
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %54 = call i64 @_glfw_dlsym(i8* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 15), align 8
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %56 = call i64 @_glfw_dlsym(i8* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 14), align 8
  %57 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %58 = call i64 @_glfw_dlsym(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 13), align 8
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %60 = call i64 @_glfw_dlsym(i8* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  store i64 %60, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 12), align 8
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %62 = call i64 @_glfw_dlsym(i8* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 11), align 8
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %64 = call i64 @_glfw_dlsym(i8* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 10), align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 1), align 8
  %66 = call i64 @_glfw_dlsym(i8* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 9), align 8
  %67 = call i32 @wl_display_connect(i32* null)
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %44
  %71 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %72 = call i32 @_glfwInputError(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %73 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %73, i32* %1, align 4
  br label %187

74:                                               ; preds = %44
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 4
  %76 = call i32 @wl_display_get_registry(i32 %75)
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 17), align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 17), align 8
  %78 = call i32 @wl_registry_add_listener(i32 %77, i32* @registryListener, i32* null)
  %79 = call i32 (...) @createKeyTables()
  %80 = call i32 @xkb_context_new(i32 0)
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 0), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 16, i32 0), align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %85 = call i32 @_glfwInputError(i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0))
  %86 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %86, i32* %1, align 4
  br label %187

87:                                               ; preds = %74
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 4
  %89 = call i32 @wl_display_roundtrip(i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 15), align 4
  %91 = call i32 @wl_display_roundtrip(i32 %90)
  %92 = call i32 (...) @_glfwInitJoysticksLinux()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %95, i32* %1, align 4
  br label %187

96:                                               ; preds = %87
  %97 = call i32 (...) @_glfwInitTimerPOSIX()
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1), align 4
  %99 = icmp sge i32 %98, 4
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %102 = load i32, i32* @TFD_CLOEXEC, align 4
  %103 = call i8* @timerfd_create(i32 %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 14), align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %110 = call i32 @_glfwInputError(i32 %109, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0))
  %111 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %111, i32* %1, align 4
  br label %187

112:                                              ; preds = %105
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 13), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %165

115:                                              ; preds = %112
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 10), align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %165

118:                                              ; preds = %115
  %119 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  store i8* %119, i8** %2, align 8
  %120 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  store i8* %120, i8** %3, align 8
  store i32 32, i32* %6, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  store i64 0, i64* @errno, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = call i64 @strtol(i8* %124, i8** %4, i32 10)
  store i64 %125, i64* %5, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = load i64, i64* @errno, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %5, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @INT_MAX, align 8
  %138 = icmp sle i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i64, i64* %5, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %139, %135, %132, %129, %123
  br label %143

143:                                              ; preds = %142, %118
  %144 = load i8*, i8** %2, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 10), align 8
  %147 = call i8* @wl_cursor_theme_load(i8* %144, i32 %145, i64 %146)
  store i8* %147, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 12), align 8
  %148 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 12), align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %152 = call i32 @_glfwInputError(i32 %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0))
  %153 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %153, i32* %1, align 4
  br label %187

154:                                              ; preds = %143
  %155 = load i8*, i8** %2, align 8
  %156 = load i32, i32* %6, align 4
  %157 = mul nsw i32 2, %156
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 10), align 8
  %159 = call i8* @wl_cursor_theme_load(i8* %155, i32 %157, i64 %158)
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 11), align 8
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 8), align 8
  %161 = call i32 @wl_compositor_create_surface(i32 %160)
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 9), align 4
  %162 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %163 = load i32, i32* @TFD_CLOEXEC, align 4
  %164 = call i8* @timerfd_create(i32 %162, i32 %163)
  store i8* %164, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 7), align 8
  br label %165

165:                                              ; preds = %154, %115, %112
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 5), align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 6), align 8
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 5), align 8
  %174 = call i32 @wl_data_device_manager_get_data_device(i64 %172, i64 %173)
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 4), align 8
  %176 = call i32 @wl_data_device_add_listener(i32 %175, i32* @dataDeviceListener, i32* null)
  %177 = call i32 @malloc(i32 4096)
  store i32 %177, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3), align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 3), align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %171
  %181 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %182 = call i32 @_glfwInputError(i32 %181, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %183 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %183, i32* %1, align 4
  br label %187

184:                                              ; preds = %171
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %185

185:                                              ; preds = %184, %168, %165
  %186 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %186, i32* %1, align 4
  br label %187

187:                                              ; preds = %185, %180, %150, %108, %94, %83, %70, %40, %26, %10
  %188 = load i32, i32* %1, align 4
  ret i32 %188
}

declare dso_local i8* @_glfw_dlopen(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i64 @_glfw_dlsym(i8*, i8*) #1

declare dso_local i32 @wl_display_connect(i32*) #1

declare dso_local i32 @wl_display_get_registry(i32) #1

declare dso_local i32 @wl_registry_add_listener(i32, i32*, i32*) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @xkb_context_new(i32) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @_glfwInitJoysticksLinux(...) #1

declare dso_local i32 @_glfwInitTimerPOSIX(...) #1

declare dso_local i8* @timerfd_create(i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @wl_cursor_theme_load(i8*, i32, i64) #1

declare dso_local i32 @wl_compositor_create_surface(i32) #1

declare dso_local i32 @wl_data_device_manager_get_data_device(i64, i64) #1

declare dso_local i32 @wl_data_device_add_listener(i32, i32*, i32*) #1

declare dso_local i32 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
