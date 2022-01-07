; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wgl_context.c__glfwInitWGL.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wgl_context.c__glfwInitWGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"opengl32.dll\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"WGL: Failed to load opengl32.dll\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"wglCreateContext\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wglDeleteContext\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"wglGetProcAddress\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"wglGetCurrentDC\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"wglGetCurrentContext\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"wglMakeCurrent\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"wglShareLists\00", align 1
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"WGL: Failed to set pixel format for dummy context\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"WGL: Failed to create dummy context\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"WGL: Failed to make dummy context current\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"wglGetExtensionsStringEXT\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"wglGetExtensionsStringARB\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"wglCreateContextAttribsARB\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"wglSwapIntervalEXT\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"wglGetPixelFormatAttribivARB\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"WGL_ARB_multisample\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"WGL_ARB_framebuffer_sRGB\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"WGL_EXT_framebuffer_sRGB\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"WGL_ARB_create_context\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"WGL_ARB_create_context_profile\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"WGL_EXT_create_context_es2_profile\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"WGL_ARB_create_context_robustness\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"WGL_ARB_create_context_no_error\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"WGL_EXT_swap_control\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"WGL_EXT_colorspace\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"WGL_ARB_pixel_format\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"WGL_ARB_context_flush_control\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitWGL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %10, i32* %1, align 4
  br label %106

11:                                               ; preds = %0
  %12 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %17 = call i32 @_glfwInputErrorWin32(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %18, i32* %1, align 4
  br label %106

19:                                               ; preds = %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %21 = call i64 @GetProcAddress(i64 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 24), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %23 = call i64 @GetProcAddress(i64 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 23), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %25 = call i64 @GetProcAddress(i64 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 22), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %27 = call i64 @GetProcAddress(i64 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 21), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %29 = call i64 @GetProcAddress(i64 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 20), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %31 = call i64 @GetProcAddress(i64 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 19), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 17), align 8
  %33 = call i64 @GetProcAddress(i64 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 18), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 0), align 8
  %35 = call i32 @GetDC(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = call i32 @ZeroMemory(%struct.TYPE_10__* %2, i32 20)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 20, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %40 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i32 24, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ChoosePixelFormat(i32 %49, %struct.TYPE_10__* %2)
  %51 = call i32 @SetPixelFormat(i32 %48, i32 %50, %struct.TYPE_10__* %2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %19
  %54 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %55 = call i32 @_glfwInputErrorWin32(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %56 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %56, i32* %1, align 4
  br label %106

57:                                               ; preds = %19
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @wglCreateContext(i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %64 = call i32 @_glfwInputErrorWin32(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %65 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %65, i32* %1, align 4
  br label %106

66:                                               ; preds = %57
  %67 = call i32 (...) @wglGetCurrentDC()
  store i32 %67, i32* %5, align 4
  %68 = call i32 (...) @wglGetCurrentContext()
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @wglMakeCurrent(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %75 = call i32 @_glfwInputErrorWin32(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @wglMakeCurrent(i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @wglDeleteContext(i32 %79)
  %81 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %81, i32* %1, align 4
  br label %106

82:                                               ; preds = %66
  %83 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 16), align 8
  %84 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 15), align 8
  %85 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 14), align 8
  %86 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 13), align 8
  %87 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  store i64 %87, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 12), align 8
  %88 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store i8* %88, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 11), align 8
  %89 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 10), align 8
  %90 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 9), align 8
  %91 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 8), align 8
  %92 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  store i8* %92, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 7), align 8
  %93 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 6), align 8
  %94 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  store i8* %94, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 5), align 8
  %95 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 4), align 8
  %96 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 3), align 8
  %97 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %98 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %99 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @wglMakeCurrent(i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @wglDeleteContext(i32 %103)
  %105 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %82, %73, %62, %53, %15, %9
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i32 @_glfwInputErrorWin32(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SetPixelFormat(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ChoosePixelFormat(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @wglCreateContext(i32) #1

declare dso_local i32 @wglGetCurrentDC(...) #1

declare dso_local i32 @wglGetCurrentContext(...) #1

declare dso_local i32 @wglMakeCurrent(i32, i32) #1

declare dso_local i32 @wglDeleteContext(i32) #1

declare dso_local i64 @wglGetProcAddress(i8*) #1

declare dso_local i8* @extensionSupportedWGL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
