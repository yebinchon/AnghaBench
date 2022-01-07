; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_egl_context.c__glfwCreateContextEGL.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_egl_context.c__glfwCreateContextEGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i32, i32, i64, i64, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_24__ = type { i64 }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EGL: API not available\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EGL: Failed to find a suitable EGLConfig\00", align 1
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@EGL_OPENGL_ES_API = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EGL: Failed to bind OpenGL ES: %s\00", align 1
@EGL_OPENGL_API = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EGL: Failed to bind OpenGL: %s\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR = common dso_local global i32 0, align 4
@EGL_NO_RESET_NOTIFICATION_KHR = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@EGL_LOSE_CONTEXT_ON_RESET_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_NO_ERROR_KHR = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@EGL_CONTEXT_MAJOR_VERSION_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_MINOR_VERSION_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_FLAGS_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_CLIENT_VERSION = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i64 0, align 8
@EGL_CONTEXT_RELEASE_BEHAVIOR_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_RELEASE_BEHAVIOR_NONE_KHR = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i64 0, align 8
@EGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"EGL: Failed to create context: %s\00", align 1
@EGL_GL_COLORSPACE_KHR = common dso_local global i32 0, align 4
@EGL_GL_COLORSPACE_SRGB_KHR = common dso_local global i32 0, align 4
@_GLFW_EGL_NATIVE_WINDOW = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"EGL: Failed to create window surface: %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"libGLESv1_CM.so.1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"libGLES_CM.so.1\00", align 1
@__const._glfwCreateContextEGL.es1sonames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c"libGLESv2.so.2\00", align 1
@__const._glfwCreateContextEGL.es2sonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@__const._glfwCreateContextEGL.glsonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"EGL: Failed to load client library\00", align 1
@makeContextCurrentEGL = common dso_local global i32 0, align 4
@swapBuffersEGL = common dso_local global i32 0, align 4
@swapIntervalEGL = common dso_local global i32 0, align 4
@extensionSupportedEGL = common dso_local global i32 0, align 4
@getProcAddressEGL = common dso_local global i32 0, align 4
@destroyContextEGL = common dso_local global i32 0, align 4
@_GLFW_GLESV1_LIBRARY = common dso_local global i8* null, align 8
@_GLFW_GLESV2_LIBRARY = common dso_local global i8* null, align 8
@_GLFW_OPENGL_LIBRARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContextEGL(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca [3 x i8*], align 16
  %18 = alloca [2 x i8*], align 16
  %19 = alloca [2 x i8*], align 16
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %24 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %416

26:                                               ; preds = %3
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 9
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %42 = call i32 @chooseEGLConfig(%struct.TYPE_25__* %40, %struct.TYPE_24__* %41, i32* %9)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %46 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %416

48:                                               ; preds = %39
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @EGL_OPENGL_ES_API, align 4
  %56 = call i32 @eglBindAPI(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %60 = call i32 (...) @eglGetError()
  %61 = call i32 @getEGLErrorString(i32 %60)
  %62 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %63, i32* %4, align 4
  br label %416

64:                                               ; preds = %54
  br label %76

65:                                               ; preds = %48
  %66 = load i32, i32* @EGL_OPENGL_API, align 4
  %67 = call i32 @eglBindAPI(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %71 = call i32 (...) @eglGetError()
  %72 = call i32 @getEGLErrorString(i32 %71)
  %73 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %416

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 6), align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %204

79:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GLFW_OPENGL_API, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %79
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %115

104:                                              ; preds = %94
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR, align 4
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %110, %104
  br label %115

115:                                              ; preds = %114, %100
  br label %116

116:                                              ; preds = %115, %79
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR, align 4
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %125
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* @EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR, align 4
  %138 = load i32, i32* @EGL_NO_RESET_NOTIFICATION_KHR, align 4
  %139 = call i32 @setAttrib(i32 %137, i32 %138)
  br label %151

140:                                              ; preds = %130
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* @EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR, align 4
  %148 = load i32, i32* @EGL_LOSE_CONTEXT_ON_RESET_KHR, align 4
  %149 = call i32 @setAttrib(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %140
  br label %151

151:                                              ; preds = %150, %136
  %152 = load i32, i32* @EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %151, %125
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5), align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* @EGL_CONTEXT_OPENGL_NO_ERROR_KHR, align 4
  %165 = load i32, i32* @GLFW_TRUE, align 4
  %166 = call i32 @setAttrib(i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %160
  br label %168

168:                                              ; preds = %167, %155
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 1
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %173, %168
  %179 = load i32, i32* @EGL_CONTEXT_MAJOR_VERSION_KHR, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @setAttrib(i32 %179, i32 %182)
  %184 = load i32, i32* @EGL_CONTEXT_MINOR_VERSION_KHR, align 4
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @setAttrib(i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %178, %173
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* @EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @setAttrib(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32, i32* @EGL_CONTEXT_FLAGS_KHR, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @setAttrib(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %196
  br label %217

204:                                              ; preds = %76
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load i32, i32* @EGL_CONTEXT_CLIENT_VERSION, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @setAttrib(i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %210, %204
  br label %217

217:                                              ; preds = %216, %203
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4), align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %242

220:                                              ; preds = %217
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i32, i32* @EGL_CONTEXT_RELEASE_BEHAVIOR_KHR, align 4
  %228 = load i32, i32* @EGL_CONTEXT_RELEASE_BEHAVIOR_NONE_KHR, align 4
  %229 = call i32 @setAttrib(i32 %227, i32 %228)
  br label %241

230:                                              ; preds = %220
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load i32, i32* @EGL_CONTEXT_RELEASE_BEHAVIOR_KHR, align 4
  %238 = load i32, i32* @EGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR, align 4
  %239 = call i32 @setAttrib(i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %236, %230
  br label %241

241:                                              ; preds = %240, %226
  br label %242

242:                                              ; preds = %241, %217
  %243 = load i32, i32* @EGL_NONE, align 4
  %244 = load i32, i32* @EGL_NONE, align 4
  %245 = call i32 @setAttrib(i32 %243, i32 %244)
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32*, i32** %10, align 8
  %249 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %250 = call i32 @eglCreateContext(i32 %246, i32 %247, i32* %248, i32* %249)
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 6
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 3
  store i32 %250, i32* %254, align 4
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %242
  %263 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %264 = call i32 (...) @eglGetError()
  %265 = call i32 @getEGLErrorString(i32 %264)
  %266 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %263, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %267, i32* %4, align 4
  br label %416

268:                                              ; preds = %242
  store i32 0, i32* %14, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %268
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3), align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %273
  %277 = load i32, i32* @EGL_GL_COLORSPACE_KHR, align 4
  %278 = load i32, i32* @EGL_GL_COLORSPACE_SRGB_KHR, align 4
  %279 = call i32 @setAttrib(i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %273
  br label %281

281:                                              ; preds = %280, %268
  %282 = load i32, i32* @EGL_NONE, align 4
  %283 = load i32, i32* @EGL_NONE, align 4
  %284 = call i32 @setAttrib(i32 %282, i32 %283)
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* @_GLFW_EGL_NATIVE_WINDOW, align 4
  %288 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %289 = call i32 @eglCreateWindowSurface(i32 %285, i32 %286, i32 %287, i32* %288)
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 2
  store i32 %289, i32* %293, align 4
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @EGL_NO_SURFACE, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %281
  %302 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %303 = call i32 (...) @eglGetError()
  %304 = call i32 @getEGLErrorString(i32 %303)
  %305 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %302, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %306, i32* %4, align 4
  br label %416

307:                                              ; preds = %281
  %308 = load i32, i32* %9, align 4
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 6
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 1
  store i32 %308, i32* %312, align 4
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %390, label %315

315:                                              ; preds = %307
  %316 = bitcast [3 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %316, i8* align 16 bitcast ([3 x i8*]* @__const._glfwCreateContextEGL.es1sonames to i8*), i64 24, i1 false)
  %317 = bitcast [2 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %317, i8* align 16 bitcast ([2 x i8*]* @__const._glfwCreateContextEGL.es2sonames to i8*), i64 16, i1 false)
  %318 = bitcast [2 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %318, i8* align 16 bitcast ([2 x i8*]* @__const._glfwCreateContextEGL.glsonames to i8*), i64 16, i1 false)
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %315
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  store i8** %330, i8*** %16, align 8
  br label %333

331:                                              ; preds = %324
  %332 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  store i8** %332, i8*** %16, align 8
  br label %333

333:                                              ; preds = %331, %329
  br label %336

334:                                              ; preds = %315
  %335 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  store i8** %335, i8*** %16, align 8
  br label %336

336:                                              ; preds = %334, %333
  store i32 0, i32* %15, align 4
  br label %337

337:                                              ; preds = %375, %336
  %338 = load i8**, i8*** %16, align 8
  %339 = load i32, i32* %15, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %344, label %378

344:                                              ; preds = %337
  %345 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %346 = load i8**, i8*** %16, align 8
  %347 = load i32, i32* %15, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8*, i8** %346, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = call i64 @strncmp(i8* %350, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %352 = icmp eq i64 %351, 0
  %353 = zext i1 %352 to i32
  %354 = icmp ne i32 %345, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %344
  br label %375

356:                                              ; preds = %344
  %357 = load i8**, i8*** %16, align 8
  %358 = load i32, i32* %15, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8*, i8** %357, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @_glfw_dlopen(i8* %361)
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 6
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 0
  store i32 %362, i32* %366, align 4
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 6
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %356
  br label %378

374:                                              ; preds = %356
  br label %375

375:                                              ; preds = %374, %355
  %376 = load i32, i32* %15, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %15, align 4
  br label %337

378:                                              ; preds = %373, %337
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %378
  %386 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %387 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %386, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %388 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %388, i32* %4, align 4
  br label %416

389:                                              ; preds = %378
  br label %390

390:                                              ; preds = %389, %307
  %391 = load i32, i32* @makeContextCurrentEGL, align 4
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 5
  store i32 %391, i32* %394, align 4
  %395 = load i32, i32* @swapBuffersEGL, align 4
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 4
  store i32 %395, i32* %398, align 4
  %399 = load i32, i32* @swapIntervalEGL, align 4
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 3
  store i32 %399, i32* %402, align 4
  %403 = load i32, i32* @extensionSupportedEGL, align 4
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 2
  store i32 %403, i32* %406, align 4
  %407 = load i32, i32* @getProcAddressEGL, align 4
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %409, i32 0, i32 1
  store i32 %407, i32* %410, align 4
  %411 = load i32, i32* @destroyContextEGL, align 4
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 0
  store i32 %411, i32* %414, align 4
  %415 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %415, i32* %4, align 4
  br label %416

416:                                              ; preds = %390, %385, %301, %262, %69, %58, %44, %22
  %417 = load i32, i32* %4, align 4
  ret i32 %417
}

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @chooseEGLConfig(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i32 @getEGLErrorString(i32) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @setAttrib(i32, i32) #1

declare dso_local i32 @eglCreateContext(i32, i32, i32*, i32*) #1

declare dso_local i32 @eglCreateWindowSurface(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @_glfw_dlopen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
