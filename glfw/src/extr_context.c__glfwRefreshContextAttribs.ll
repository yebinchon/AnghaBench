; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_context.c__glfwRefreshContextAttribs.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_context.c__glfwRefreshContextAttribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32 (%struct.TYPE_10__*)*, i64 (i8*)*, i32, i32 (i32, i32*)*, i8*, i8*, i8*, i8*, i8*, i64, i32, i64 (i32)*, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"OpenGL ES-CM \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OpenGL ES-CL \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"OpenGL ES \00", align 1
@__const._glfwRefreshContextAttribs.prefixes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"glGetIntegerv\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"glGetString\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Entry point retrieval is broken\00", align 1
@GLFW_FALSE = common dso_local global i8* null, align 8
@GL_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"OpenGL version string retrieval is broken\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"OpenGL ES version string retrieval is broken\00", align 1
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"No version found in OpenGL version string\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"No version found in OpenGL ES version string\00", align 1
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"Requested OpenGL version %i.%i, got version %i.%i\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Requested OpenGL ES version %i.%i, got version %i.%i\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"glGetStringi\00", align 1
@GL_CONTEXT_FLAGS = common dso_local global i32 0, align 4
@GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i8* null, align 8
@GL_CONTEXT_FLAG_DEBUG_BIT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"GL_ARB_debug_output\00", align 1
@GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR = common dso_local global i32 0, align 4
@GL_CONTEXT_PROFILE_MASK = common dso_local global i32 0, align 4
@GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i8* null, align 8
@GL_CONTEXT_CORE_PROFILE_BIT = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"GL_ARB_compatibility\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"GL_ARB_robustness\00", align 1
@GL_RESET_NOTIFICATION_STRATEGY_ARB = common dso_local global i32 0, align 4
@GL_LOSE_CONTEXT_ON_RESET_ARB = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i8* null, align 8
@GL_NO_RESET_NOTIFICATION_ARB = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"GL_EXT_robustness\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"GL_KHR_context_flush_control\00", align 1
@GL_CONTEXT_RELEASE_BEHAVIOR = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i32 0, align 4
@GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"glClear\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwRefreshContextAttribs(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i8*], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32 (i32)*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %17 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i8*]* @__const._glfwRefreshContextAttribs.prefixes to i8*), i64 32, i1 false)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 15
  store i32 %20, i32* %23, align 8
  %24 = load i64, i64* @GLFW_OPENGL_API, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = call %struct.TYPE_10__* @_glfwPlatformGetTls(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0))
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = bitcast %struct.TYPE_10__* %29 to i32*
  %31 = call i32 @glfwMakeContextCurrent(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i64 (i8*)*, i64 (i8*)** %34, align 8
  %36 = call i64 %35(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i32 (i32, i32*)*
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store i32 (i32, i32*)* %37, i32 (i32, i32*)** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i64 (i8*)*, i64 (i8*)** %43, align 8
  %45 = call i64 %44(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %46 = inttoptr i64 %45 to i64 (i32)*
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 14
  store i64 (i32)* %46, i64 (i32)** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  %53 = load i32 (i32, i32*)*, i32 (i32, i32*)** %52, align 8
  %54 = icmp ne i32 (i32, i32*)* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 14
  %59 = load i64 (i32)*, i64 (i32)** %58, align 8
  %60 = icmp ne i64 (i32)* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %55, %2
  %62 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %63 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = bitcast %struct.TYPE_10__* %64 to i32*
  %66 = call i32 @glfwMakeContextCurrent(i32* %65)
  %67 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %67, i8** %3, align 8
  br label %488

68:                                               ; preds = %55
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 14
  %72 = load i64 (i32)*, i64 (i32)** %71, align 8
  %73 = load i32, i32* @GL_VERSION, align 4
  %74 = call i64 %72(i32 %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %95, label %78

78:                                               ; preds = %68
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GLFW_OPENGL_API, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %86 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %89 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = bitcast %struct.TYPE_10__* %91 to i32*
  %93 = call i32 @glfwMakeContextCurrent(i32* %92)
  %94 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %94, i8** %3, align 8
  br label %488

95:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %125, %95
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %128

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strlen(i8* %106)
  store i64 %107, i64* %10, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @strncmp(i8* %108, i8* %112, i64 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %102
  %117 = load i64, i64* %10, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %8, align 8
  %120 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  br label %128

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %96

128:                                              ; preds = %116, %96
  %129 = load i8*, i8** %8, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 13
  %139 = call i32 @sscanf(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %132, i32* %135, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %128
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @GLFW_OPENGL_API, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %150 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %153 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = bitcast %struct.TYPE_10__* %155 to i32*
  %157 = call i32 @glfwMakeContextCurrent(i32* %156)
  %158 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %158, i8** %3, align 8
  br label %488

159:                                              ; preds = %128
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %186, label %168

168:                                              ; preds = %159
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %232

177:                                              ; preds = %168
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %232

186:                                              ; preds = %177, %159
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @GLFW_OPENGL_API, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %194, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %197, i32 %200, i32 %204, i32 %208)
  br label %227

210:                                              ; preds = %186
  %211 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %211, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %214, i32 %217, i32 %221, i32 %225)
  br label %227

227:                                              ; preds = %210, %193
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %229 = bitcast %struct.TYPE_10__* %228 to i32*
  %230 = call i32 @glfwMakeContextCurrent(i32* %229)
  %231 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %231, i8** %3, align 8
  br label %488

232:                                              ; preds = %177, %168
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp sge i32 %236, 3
  br i1 %237, label %238, label %260

238:                                              ; preds = %232
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 4
  %242 = load i64 (i8*)*, i64 (i8*)** %241, align 8
  %243 = call i64 %242(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 12
  store i64 %243, i64* %246, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 12
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %238
  %253 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %254 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %253, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = bitcast %struct.TYPE_10__* %255 to i32*
  %257 = call i32 @glfwMakeContextCurrent(i32* %256)
  %258 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %258, i8** %3, align 8
  br label %488

259:                                              ; preds = %238
  br label %260

260:                                              ; preds = %259, %232
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @GLFW_OPENGL_API, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %409

267:                                              ; preds = %260
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = icmp sge i32 %271, 3
  br i1 %272, label %273, label %324

273:                                              ; preds = %267
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 6
  %277 = load i32 (i32, i32*)*, i32 (i32, i32*)** %276, align 8
  %278 = load i32, i32* @GL_CONTEXT_FLAGS, align 4
  %279 = call i32 %277(i32 %278, i32* %11)
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %273
  %285 = load i8*, i8** @GLFW_TRUE, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 11
  store i8* %285, i8** %288, align 8
  br label %289

289:                                              ; preds = %284, %273
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @GL_CONTEXT_FLAG_DEBUG_BIT, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load i8*, i8** @GLFW_TRUE, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 10
  store i8* %295, i8** %298, align 8
  br label %313

299:                                              ; preds = %289
  %300 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %299
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load i8*, i8** @GLFW_TRUE, align 8
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 10
  store i8* %308, i8** %311, align 8
  br label %312

312:                                              ; preds = %307, %302, %299
  br label %313

313:                                              ; preds = %312, %294
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %313
  %319 = load i8*, i8** @GLFW_TRUE, align 8
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 9
  store i8* %319, i8** %322, align 8
  br label %323

323:                                              ; preds = %318, %313
  br label %324

324:                                              ; preds = %323, %267
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = icmp sge i32 %328, 4
  br i1 %329, label %342, label %330

330:                                              ; preds = %324
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = icmp eq i32 %334, 3
  br i1 %335, label %336, label %379

336:                                              ; preds = %330
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = icmp sge i32 %340, 2
  br i1 %341, label %342, label %379

342:                                              ; preds = %336, %324
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 6
  %346 = load i32 (i32, i32*)*, i32 (i32, i32*)** %345, align 8
  %347 = load i32, i32* @GL_CONTEXT_PROFILE_MASK, align 4
  %348 = call i32 %346(i32 %347, i32* %12)
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* @GL_CONTEXT_COMPATIBILITY_PROFILE_BIT, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %342
  %354 = load i8*, i8** @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 8
  store i8* %354, i8** %357, align 8
  br label %378

358:                                              ; preds = %342
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* @GL_CONTEXT_CORE_PROFILE_BIT, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load i8*, i8** @GLFW_OPENGL_CORE_PROFILE, align 8
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 8
  store i8* %364, i8** %367, align 8
  br label %377

368:                                              ; preds = %358
  %369 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %368
  %372 = load i8*, i8** @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 8
  store i8* %372, i8** %375, align 8
  br label %376

376:                                              ; preds = %371, %368
  br label %377

377:                                              ; preds = %376, %363
  br label %378

378:                                              ; preds = %377, %353
  br label %379

379:                                              ; preds = %378, %336, %330
  %380 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %408

382:                                              ; preds = %379
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 6
  %386 = load i32 (i32, i32*)*, i32 (i32, i32*)** %385, align 8
  %387 = load i32, i32* @GL_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %388 = call i32 %386(i32 %387, i32* %13)
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* @GL_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %382
  %393 = load i8*, i8** @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 7
  store i8* %393, i8** %396, align 8
  br label %407

397:                                              ; preds = %382
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* @GL_NO_RESET_NOTIFICATION_ARB, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %406

401:                                              ; preds = %397
  %402 = load i8*, i8** @GLFW_NO_RESET_NOTIFICATION, align 8
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 7
  store i8* %402, i8** %405, align 8
  br label %406

406:                                              ; preds = %401, %397
  br label %407

407:                                              ; preds = %406, %392
  br label %408

408:                                              ; preds = %407, %379
  br label %439

409:                                              ; preds = %260
  %410 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %438

412:                                              ; preds = %409
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 6
  %416 = load i32 (i32, i32*)*, i32 (i32, i32*)** %415, align 8
  %417 = load i32, i32* @GL_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %418 = call i32 %416(i32 %417, i32* %14)
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* @GL_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %427

422:                                              ; preds = %412
  %423 = load i8*, i8** @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %424 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 7
  store i8* %423, i8** %426, align 8
  br label %437

427:                                              ; preds = %412
  %428 = load i32, i32* %14, align 4
  %429 = load i32, i32* @GL_NO_RESET_NOTIFICATION_ARB, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %427
  %432 = load i8*, i8** @GLFW_NO_RESET_NOTIFICATION, align 8
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 7
  store i8* %432, i8** %435, align 8
  br label %436

436:                                              ; preds = %431, %427
  br label %437

437:                                              ; preds = %436, %422
  br label %438

438:                                              ; preds = %437, %409
  br label %439

439:                                              ; preds = %438, %408
  %440 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %468

442:                                              ; preds = %439
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 6
  %446 = load i32 (i32, i32*)*, i32 (i32, i32*)** %445, align 8
  %447 = load i32, i32* @GL_CONTEXT_RELEASE_BEHAVIOR, align 4
  %448 = call i32 %446(i32 %447, i32* %15)
  %449 = load i32, i32* %15, align 4
  %450 = load i32, i32* @GL_NONE, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %457

452:                                              ; preds = %442
  %453 = load i32, i32* @GLFW_RELEASE_BEHAVIOR_NONE, align 4
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 5
  store i32 %453, i32* %456, align 8
  br label %467

457:                                              ; preds = %442
  %458 = load i32, i32* %15, align 4
  %459 = load i32, i32* @GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  %462 = load i32, i32* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 4
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 5
  store i32 %462, i32* %465, align 8
  br label %466

466:                                              ; preds = %461, %457
  br label %467

467:                                              ; preds = %466, %452
  br label %468

468:                                              ; preds = %467, %439
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 4
  %472 = load i64 (i8*)*, i64 (i8*)** %471, align 8
  %473 = call i64 %472(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %474 = inttoptr i64 %473 to i32 (i32)*
  store i32 (i32)* %474, i32 (i32)** %16, align 8
  %475 = load i32 (i32)*, i32 (i32)** %16, align 8
  %476 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %477 = call i32 %475(i32 %476)
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 3
  %481 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %480, align 8
  %482 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %483 = call i32 %481(%struct.TYPE_10__* %482)
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %485 = bitcast %struct.TYPE_10__* %484 to i32*
  %486 = call i32 @glfwMakeContextCurrent(i32* %485)
  %487 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %487, i8** %3, align 8
  br label %488

488:                                              ; preds = %468, %252, %227, %154, %90, %61
  %489 = load i8*, i8** %3, align 8
  ret i8* %489
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @_glfwPlatformGetTls(i32*) #2

declare dso_local i32 @glfwMakeContextCurrent(i32*) #2

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #2

declare dso_local i64 @glfwExtensionSupported(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
