; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_glx_context.c__glfwCreateContextGLX.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_glx_context.c__glfwCreateContextGLX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i8* (i32, i32*, i32*, i32, i32*)*, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }

@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GLX: Failed to find a suitable GLXFBConfig\00", align 1
@GLFW_FALSE = common dso_local global i64 0, align 8
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"GLX: OpenGL ES requested but GLX_EXT_create_context_es2_profile is unavailable\00", align 1
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"GLX: Forward compatibility requested but GLX_ARB_create_context_profile is unavailable\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"GLX: An OpenGL profile requested but GLX_ARB_create_context_profile is unavailable\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@GLX_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@GLX_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = common dso_local global i32 0, align 4
@GLX_NO_RESET_NOTIFICATION_ARB = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@GLX_LOSE_CONTEXT_ON_RESET_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i64 0, align 8
@GLX_CONTEXT_RELEASE_BEHAVIOR_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i64 0, align 8
@GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_OPENGL_NO_ERROR_ARB = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i64 0, align 8
@GLX_CONTEXT_MAJOR_VERSION_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_MINOR_VERSION_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_PROFILE_MASK_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_FLAGS_ARB = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@GLXBadProfileARB = common dso_local global i64 0, align 8
@GLFW_OPENGL_ANY_PROFILE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"GLX: Failed to create context\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"GLX: Failed to create window\00", align 1
@makeContextCurrentGLX = common dso_local global i32 0, align 4
@swapBuffersGLX = common dso_local global i32 0, align 4
@swapIntervalGLX = common dso_local global i32 0, align 4
@extensionSupportedGLX = common dso_local global i32 0, align 4
@getProcAddressGLX = common dso_local global i32 0, align 4
@destroyContextGLX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_glfwCreateContextGLX(%struct.TYPE_25__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 9
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = icmp ne %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @chooseGLXFBConfig(i32* %27, i32** %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %32 = call i32 @_glfwInputError(i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %33, i64* %4, align 8
  br label %376

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 5), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 6), align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 7), align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %43, %40
  %50 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %51 = call i32 @_glfwInputError(i32 %50, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %52, i64* %4, align 8
  br label %376

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 5), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %64 = call i32 @_glfwInputError(i32 %63, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %65, i64* %4, align 8
  br label %376

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 5), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 6), align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %80 = call i32 @_glfwInputError(i32 %79, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %81, i64* %4, align 8
  br label %376

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %67
  %84 = call i32 (...) @_glfwGrabErrorHandlerX11()
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 5), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %307

87:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GLFW_OPENGL_API, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @GLX_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %123

112:                                              ; preds = %102
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %118, %112
  br label %123

123:                                              ; preds = %122, %108
  br label %128

124:                                              ; preds = %87
  %125 = load i32, i32* @GLX_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %124, %123
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @GLX_CONTEXT_DEBUG_BIT_ARB, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %137
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 4), align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %142
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* @GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %153 = load i32, i32* @GLX_NO_RESET_NOTIFICATION_ARB, align 4
  %154 = call i32 @setAttrib(i32 %152, i32 %153)
  br label %166

155:                                              ; preds = %145
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* @GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %163 = load i32, i32* @GLX_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %164 = call i32 @setAttrib(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %151
  %167 = load i32, i32* @GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB, align 4
  %168 = load i32, i32* %13, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %166, %142
  br label %171

171:                                              ; preds = %170, %137
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %202

176:                                              ; preds = %171
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 3), align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %187 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB, align 4
  %188 = call i32 @setAttrib(i32 %186, i32 %187)
  br label %200

189:                                              ; preds = %179
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %197 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB, align 4
  %198 = call i32 @setAttrib(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %189
  br label %200

200:                                              ; preds = %199, %185
  br label %201

201:                                              ; preds = %200, %176
  br label %202

202:                                              ; preds = %201, %171
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %202
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 2), align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32, i32* @GLX_CONTEXT_OPENGL_NO_ERROR_ARB, align 4
  %212 = load i64, i64* @GLFW_TRUE, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 @setAttrib(i32 %211, i32 %213)
  br label %215

215:                                              ; preds = %210, %207
  br label %216

216:                                              ; preds = %215, %202
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 1
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %221, %216
  %227 = load i32, i32* @GLX_CONTEXT_MAJOR_VERSION_ARB, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @setAttrib(i32 %227, i32 %230)
  %232 = load i32, i32* @GLX_CONTEXT_MINOR_VERSION_ARB, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @setAttrib(i32 %232, i32 %235)
  br label %237

237:                                              ; preds = %226, %221
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load i32, i32* @GLX_CONTEXT_PROFILE_MASK_ARB, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @setAttrib(i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %240, %237
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i32, i32* @GLX_CONTEXT_FLAGS_ARB, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @setAttrib(i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %244
  %252 = load i32, i32* @None, align 4
  %253 = load i32, i32* @None, align 4
  %254 = call i32 @setAttrib(i32 %252, i32 %253)
  %255 = load i8* (i32, i32*, i32*, i32, i32*)*, i8* (i32, i32*, i32*, i32, i32*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 1), align 8
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 8
  %257 = load i32*, i32** %9, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* @True, align 4
  %260 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %261 = call i8* %255(i32 %256, i32* %257, i32* %258, i32 %259, i32* %260)
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 1
  store i8* %261, i8** %265, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %306, label %272

272:                                              ; preds = %251
  %273 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 0), align 8
  %275 = load i64, i64* @GLXBadProfileARB, align 8
  %276 = add nsw i64 %274, %275
  %277 = icmp eq i64 %273, %276
  br i1 %277, label %278, label %305

278:                                              ; preds = %272
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @GLFW_OPENGL_API, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %305

284:                                              ; preds = %278
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @GLFW_OPENGL_ANY_PROFILE, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %305

290:                                              ; preds = %284
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @GLFW_FALSE, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %290
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %298 = load i32*, i32** %9, align 8
  %299 = load i32*, i32** %10, align 8
  %300 = call i8* @createLegacyContextGLX(%struct.TYPE_25__* %297, i32* %298, i32* %299)
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 6
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 1
  store i8* %300, i8** %304, align 8
  br label %305

305:                                              ; preds = %296, %290, %284, %278, %272
  br label %306

306:                                              ; preds = %305, %251
  br label %316

307:                                              ; preds = %83
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %309 = load i32*, i32** %9, align 8
  %310 = load i32*, i32** %10, align 8
  %311 = call i8* @createLegacyContextGLX(%struct.TYPE_25__* %308, i32* %309, i32* %310)
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 1
  store i8* %311, i8** %315, align 8
  br label %316

316:                                              ; preds = %307, %306
  %317 = call i32 (...) @_glfwReleaseErrorHandlerX11()
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 6
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %328, label %324

324:                                              ; preds = %316
  %325 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %326 = call i32 @_glfwInputErrorX11(i32 %325, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %327 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %327, i64* %4, align 8
  br label %376

328:                                              ; preds = %316
  %329 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 8
  %330 = load i32*, i32** %9, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @glXCreateWindow(i32 %329, i32* %330, i32 %334, i32* null)
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 6
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  store i32 %335, i32* %339, align 8
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %328
  %347 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %348 = call i32 @_glfwInputError(i32 %347, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %349 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %349, i64* %4, align 8
  br label %376

350:                                              ; preds = %328
  %351 = load i32, i32* @makeContextCurrentGLX, align 4
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 5
  store i32 %351, i32* %354, align 4
  %355 = load i32, i32* @swapBuffersGLX, align 4
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 4
  store i32 %355, i32* %358, align 8
  %359 = load i32, i32* @swapIntervalGLX, align 4
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 3
  store i32 %359, i32* %362, align 4
  %363 = load i32, i32* @extensionSupportedGLX, align 4
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 2
  store i32 %363, i32* %366, align 8
  %367 = load i32, i32* @getProcAddressGLX, align 4
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 1
  store i32 %367, i32* %370, align 4
  %371 = load i32, i32* @destroyContextGLX, align 4
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 0
  store i32 %371, i32* %374, align 8
  %375 = load i64, i64* @GLFW_TRUE, align 8
  store i64 %375, i64* %4, align 8
  br label %376

376:                                              ; preds = %350, %346, %324, %78, %62, %49, %30
  %377 = load i64, i64* %4, align 8
  ret i64 %377
}

declare dso_local i32 @chooseGLXFBConfig(i32*, i32**) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfwGrabErrorHandlerX11(...) #1

declare dso_local i32 @setAttrib(i32, i32) #1

declare dso_local i8* @createLegacyContextGLX(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @_glfwReleaseErrorHandlerX11(...) #1

declare dso_local i32 @_glfwInputErrorX11(i32, i8*) #1

declare dso_local i32 @glXCreateWindow(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
