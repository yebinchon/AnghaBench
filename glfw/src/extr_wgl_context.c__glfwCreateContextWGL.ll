; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wgl_context.c__glfwCreateContextWGL.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wgl_context.c__glfwCreateContextWGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }

@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WGL: Failed to retrieve DC for window\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WGL: Failed to retrieve PFD for selected pixel format\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WGL: Failed to set selected pixel format\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"WGL: A forward compatible OpenGL context requested but WGL_ARB_create_context is unavailable\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"WGL: OpenGL profile requested but WGL_ARB_create_context_profile is unavailable\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"WGL: OpenGL ES requested but WGL_ARB_create_context_es2_profile is unavailable\00", align 1
@WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@WGL_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@WGL_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = common dso_local global i32 0, align 4
@WGL_NO_RESET_NOTIFICATION_ARB = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@WGL_LOSE_CONTEXT_ON_RESET_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i64 0, align 8
@WGL_CONTEXT_RELEASE_BEHAVIOR_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i64 0, align 8
@WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_OPENGL_NO_ERROR_ARB = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@WGL_CONTEXT_MAJOR_VERSION_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_MINOR_VERSION_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_FLAGS_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_PROFILE_MASK_ARB = common dso_local global i32 0, align 4
@ERROR_INVALID_VERSION_ARB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"WGL: Driver does not support OpenGL version %i.%i\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"WGL: Driver does not support OpenGL ES version %i.%i\00", align 1
@ERROR_INVALID_PROFILE_ARB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"WGL: Driver does not support the requested OpenGL profile\00", align 1
@ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB = common dso_local global i32 0, align 4
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [68 x i8] c"WGL: The share context is not compatible with the requested context\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"WGL: Failed to create OpenGL context\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"WGL: Failed to create OpenGL ES context\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"WGL: Failed to enable sharing with specified OpenGL context\00", align 1
@makeContextCurrentWGL = common dso_local global i32 0, align 4
@swapBuffersWGL = common dso_local global i32 0, align 4
@swapIntervalWGL = common dso_local global i32 0, align 4
@extensionSupportedWGL = common dso_local global i32 0, align 4
@getProcAddressWGL = common dso_local global i32 0, align 4
@destroyContextWGL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContextWGL(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %11, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 9
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 9
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GetDC(i32 %32)
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %46 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %446

48:                                               ; preds = %28
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @choosePixelFormat(%struct.TYPE_23__* %49, %struct.TYPE_24__* %50, i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %446

57:                                               ; preds = %48
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @DescribePixelFormat(i32 %62, i32 %63, i32 4, i32* %10)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %68 = call i32 @_glfwInputErrorWin32(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %446

70:                                               ; preds = %57
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @SetPixelFormat(i32 %75, i32 %76, i32* %10)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %81 = call i32 @_glfwInputErrorWin32(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %446

83:                                               ; preds = %70
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @GLFW_OPENGL_API, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 3), align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %99 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %98, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %100, i32* %4, align 4
  br label %446

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %89
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 5), align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %112 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %111, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %113, i32* %4, align 4
  br label %446

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %102
  br label %130

116:                                              ; preds = %83
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 3), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 5), align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 4), align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122, %119, %116
  %126 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %127 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %126, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %128, i32* %4, align 4
  br label %446

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %115
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 3), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %381

133:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @GLFW_OPENGL_API, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %133
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* @WGL_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  %156 = load i32, i32* %13, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %13, align 4
  br label %169

158:                                              ; preds = %148
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, align 4
  %166 = load i32, i32* %13, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %164, %158
  br label %169

169:                                              ; preds = %168, %154
  br label %174

170:                                              ; preds = %133
  %171 = load i32, i32* @WGL_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  %172 = load i32, i32* %13, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %170, %169
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @WGL_CONTEXT_DEBUG_BIT_ARB, align 4
  %181 = load i32, i32* %14, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %217

188:                                              ; preds = %183
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2), align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %188
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32, i32* @WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %199 = load i32, i32* @WGL_NO_RESET_NOTIFICATION_ARB, align 4
  %200 = call i32 @setAttrib(i32 %198, i32 %199)
  br label %212

201:                                              ; preds = %191
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i32, i32* @WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %209 = load i32, i32* @WGL_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %210 = call i32 @setAttrib(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %201
  br label %212

212:                                              ; preds = %211, %197
  %213 = load i32, i32* @WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB, align 4
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %212, %188
  br label %217

217:                                              ; preds = %216, %183
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %248

222:                                              ; preds = %217
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 1), align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %222
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %233 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB, align 4
  %234 = call i32 @setAttrib(i32 %232, i32 %233)
  br label %246

235:                                              ; preds = %225
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %243 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB, align 4
  %244 = call i32 @setAttrib(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %235
  br label %246

246:                                              ; preds = %245, %231
  br label %247

247:                                              ; preds = %246, %222
  br label %248

248:                                              ; preds = %247, %217
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %248
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i32, i32* @WGL_CONTEXT_OPENGL_NO_ERROR_ARB, align 4
  %258 = load i32, i32* @GLFW_TRUE, align 4
  %259 = call i32 @setAttrib(i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %256, %253
  br label %261

261:                                              ; preds = %260, %248
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 1
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %266, %261
  %272 = load i32, i32* @WGL_CONTEXT_MAJOR_VERSION_ARB, align 4
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @setAttrib(i32 %272, i32 %275)
  %277 = load i32, i32* @WGL_CONTEXT_MINOR_VERSION_ARB, align 4
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @setAttrib(i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %271, %266
  %283 = load i32, i32* %14, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32, i32* @WGL_CONTEXT_FLAGS_ARB, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @setAttrib(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %282
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32, i32* @WGL_CONTEXT_PROFILE_MASK_ARB, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @setAttrib(i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %289
  %297 = call i32 @setAttrib(i32 0, i32 0)
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %11, align 8
  %304 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %305 = call i32 @wglCreateContextAttribsARB(i32 %302, i32* %303, i32* %304)
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 6
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 0
  store i32 %305, i32* %309, align 4
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 6
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %380, label %316

316:                                              ; preds = %296
  %317 = call i32 (...) @GetLastError()
  store i32 %317, i32* %15, align 4
  %318 = load i32, i32* %15, align 4
  %319 = load i32, i32* @ERROR_INVALID_VERSION_ARB, align 4
  %320 = or i32 -1073283072, %319
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %347

322:                                              ; preds = %316
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @GLFW_OPENGL_API, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %322
  %329 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %329, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %332, i32 %335)
  br label %346

337:                                              ; preds = %322
  %338 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %338, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %341, i32 %344)
  br label %346

346:                                              ; preds = %337, %328
  br label %378

347:                                              ; preds = %316
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* @ERROR_INVALID_PROFILE_ARB, align 4
  %350 = or i32 -1073283072, %349
  %351 = icmp eq i32 %348, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %347
  %353 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %354 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %353, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  br label %377

355:                                              ; preds = %347
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* @ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB, align 4
  %358 = or i32 -1073283072, %357
  %359 = icmp eq i32 %356, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %362 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %361, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  br label %376

363:                                              ; preds = %355
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @GLFW_OPENGL_API, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %363
  %370 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %371 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %370, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %375

372:                                              ; preds = %363
  %373 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %374 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %373, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %375

375:                                              ; preds = %372, %369
  br label %376

376:                                              ; preds = %375, %360
  br label %377

377:                                              ; preds = %376, %352
  br label %378

378:                                              ; preds = %377, %346
  %379 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %379, i32* %4, align 4
  br label %446

380:                                              ; preds = %296
  br label %420

381:                                              ; preds = %130
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @wglCreateContext(i32 %386)
  %388 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 6
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 0
  store i32 %387, i32* %391, align 4
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 6
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %381
  %399 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %400 = call i32 @_glfwInputErrorWin32(i32 %399, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %401 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %401, i32* %4, align 4
  br label %446

402:                                              ; preds = %381
  %403 = load i32*, i32** %11, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %419

405:                                              ; preds = %402
  %406 = load i32*, i32** %11, align 8
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 6
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @wglShareLists(i32* %406, i32 %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %405
  %415 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %416 = call i32 @_glfwInputErrorWin32(i32 %415, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  %417 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %417, i32* %4, align 4
  br label %446

418:                                              ; preds = %405
  br label %419

419:                                              ; preds = %418, %402
  br label %420

420:                                              ; preds = %419, %380
  %421 = load i32, i32* @makeContextCurrentWGL, align 4
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 5
  store i32 %421, i32* %424, align 4
  %425 = load i32, i32* @swapBuffersWGL, align 4
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 4
  store i32 %425, i32* %428, align 4
  %429 = load i32, i32* @swapIntervalWGL, align 4
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %431, i32 0, i32 3
  store i32 %429, i32* %432, align 4
  %433 = load i32, i32* @extensionSupportedWGL, align 4
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i32 0, i32 2
  store i32 %433, i32* %436, align 4
  %437 = load i32, i32* @getProcAddressWGL, align 4
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 1
  store i32 %437, i32* %440, align 4
  %441 = load i32, i32* @destroyContextWGL, align 4
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 0
  store i32 %441, i32* %444, align 4
  %445 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %445, i32* %4, align 4
  br label %446

446:                                              ; preds = %420, %414, %398, %378, %125, %110, %97, %79, %66, %55, %44
  %447 = load i32, i32* %4, align 4
  ret i32 %447
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @choosePixelFormat(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, i32*) #1

declare dso_local i32 @_glfwInputErrorWin32(i32, i8*) #1

declare dso_local i32 @SetPixelFormat(i32, i32, i32*) #1

declare dso_local i32 @setAttrib(i32, i32) #1

declare dso_local i32 @wglCreateContextAttribsARB(i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wglCreateContext(i32) #1

declare dso_local i32 @wglShareLists(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
