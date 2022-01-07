; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_glx_context.c__glfwInitGLX.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_glx_context.c__glfwInitGLX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"libGL.so\00", align 1
@__const._glfwInitGLX.sonames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i8* null, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GLX: Failed to load GLX\00", align 1
@GLFW_FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"glXGetFBConfigs\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"glXGetFBConfigAttrib\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"glXGetClientString\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"glXQueryExtension\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"glXQueryVersion\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"glXDestroyContext\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"glXMakeCurrent\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"glXSwapBuffers\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"glXQueryExtensionsString\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"glXCreateNewContext\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"glXCreateWindow\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"glXDestroyWindow\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"glXGetProcAddress\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"glXGetProcAddressARB\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"glXGetVisualFromFBConfig\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"GLX: Failed to load required entry points\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"GLX: GLX extension not found\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"GLX: Failed to query GLX version\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"GLX: GLX version 1.3 is required\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"GLX_EXT_swap_control\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"glXSwapIntervalEXT\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"GLX_SGI_swap_control\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"glXSwapIntervalSGI\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"GLX_MESA_swap_control\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"glXSwapIntervalMESA\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"GLX_ARB_multisample\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"GLX_ARB_framebuffer_sRGB\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"GLX_EXT_framebuffer_sRGB\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"GLX_ARB_create_context\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"glXCreateContextAttribsARB\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"GLX_ARB_create_context_robustness\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"GLX_ARB_create_context_profile\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"GLX_EXT_create_context_es2_profile\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"GLX_ARB_create_context_no_error\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"GLX_ARB_context_flush_control\00", align 1
@_GLFW_GLX_LIBRARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwInitGLX() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8*], align 16
  %4 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x i8*]* @__const._glfwInitGLX.sonames to i8*), i64 24, i1 false)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %8, i8** %1, align 8
  br label %223

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @_glfw_dlopen(i8* %20)
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %34 = call i32 @_glfwInputError(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %35, i8** %1, align 8
  br label %223

36:                                               ; preds = %29
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %38 = call i8* @_glfw_dlsym(i64 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %40 = call i8* @_glfw_dlsym(i64 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 33), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %42 = call i8* @_glfw_dlsym(i64 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 32), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %44 = call i8* @_glfw_dlsym(i64 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 31), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %46 = call i8* @_glfw_dlsym(i64 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 30), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %48 = call i8* @_glfw_dlsym(i64 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 29), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %50 = call i8* @_glfw_dlsym(i64 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 28), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %52 = call i8* @_glfw_dlsym(i64 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 27), align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %54 = call i8* @_glfw_dlsym(i64 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 26), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %56 = call i8* @_glfw_dlsym(i64 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 25), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %58 = call i8* @_glfw_dlsym(i64 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 24), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %60 = call i8* @_glfw_dlsym(i64 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 23), align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %62 = call i8* @_glfw_dlsym(i64 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 22), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %64 = call i8* @_glfw_dlsym(i64 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 21), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 35), align 8
  %66 = call i8* @_glfw_dlsym(i64 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 20), align 8
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %111

69:                                               ; preds = %36
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 33), align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 32), align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %111

75:                                               ; preds = %72
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 31), align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %111

78:                                               ; preds = %75
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 30), align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 29), align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 28), align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %111

87:                                               ; preds = %84
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 27), align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 26), align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 25), align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 24), align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 23), align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 22), align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 21), align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 20), align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %36
  %112 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %113 = call i32 @_glfwInputError(i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %114 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %114, i8** %1, align 8
  br label %223

115:                                              ; preds = %108
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 8
  %117 = call i32 @glXQueryExtension(i32 %116, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 18))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %121 = call i32 @_glfwInputError(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %122 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %122, i8** %1, align 8
  br label %223

123:                                              ; preds = %115
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 8
  %125 = call i32 @glXQueryVersion(i32 %124, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %129 = call i32 @_glfwInputError(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %130 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %130, i8** %1, align 8
  br label %223

131:                                              ; preds = %123
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 4
  %136 = icmp slt i32 %135, 3
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %139 = call i32 @_glfwInputError(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %140 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %140, i8** %1, align 8
  br label %223

141:                                              ; preds = %134, %131
  %142 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  store i64 %145, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 17), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 17), align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %149, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 16), align 8
  br label %150

150:                                              ; preds = %148, %144
  br label %151

151:                                              ; preds = %150, %141
  %152 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  store i64 %155, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 15), align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 15), align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 14), align 8
  br label %160

160:                                              ; preds = %158, %154
  br label %161

161:                                              ; preds = %160, %151
  %162 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  store i64 %165, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 13), align 8
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 13), align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %169, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 12), align 8
  br label %170

170:                                              ; preds = %168, %164
  br label %171

171:                                              ; preds = %170, %161
  %172 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %175, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 11), align 8
  br label %176

176:                                              ; preds = %174, %171
  %177 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %180, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 10), align 8
  br label %181

181:                                              ; preds = %179, %176
  %182 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %185, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 9), align 8
  br label %186

186:                                              ; preds = %184, %181
  %187 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  store i64 %190, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8), align 8
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8), align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %194, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  br label %195

195:                                              ; preds = %193, %189
  br label %196

196:                                              ; preds = %195, %186
  %197 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %200, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  br label %201

201:                                              ; preds = %199, %196
  %202 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %205, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 5), align 8
  br label %206

206:                                              ; preds = %204, %201
  %207 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %210, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  br label %211

211:                                              ; preds = %209, %206
  %212 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %215, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 8
  br label %216

216:                                              ; preds = %214, %211
  %217 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %220, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %221

221:                                              ; preds = %219, %216
  %222 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %222, i8** %1, align 8
  br label %223

223:                                              ; preds = %221, %137, %127, %119, %111, %32, %7
  %224 = load i8*, i8** %1, align 8
  ret i8* %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @_glfw_dlopen(i8*) #2

declare dso_local i32 @_glfwInputError(i32, i8*) #2

declare dso_local i8* @_glfw_dlsym(i64, i8*) #2

declare dso_local i32 @glXQueryExtension(i32, i32*, i32*) #2

declare dso_local i32 @glXQueryVersion(i32, i32*, i32*) #2

declare dso_local i64 @extensionSupportedGLX(i8*) #2

declare dso_local i64 @getProcAddressGLX(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
