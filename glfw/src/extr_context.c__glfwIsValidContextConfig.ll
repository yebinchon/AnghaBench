; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_context.c__glfwIsValidContextConfig.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_context.c__glfwIsValidContextConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@GLFW_NO_API = common dso_local global i64 0, align 8
@GLFW_NO_WINDOW_CONTEXT = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_NATIVE_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_EGL_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_OSMESA_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid context creation API 0x%08X\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid client API 0x%08X\00", align 1
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid OpenGL version %i.%i\00", align 1
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid OpenGL profile 0x%08X\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Context profiles are only defined for OpenGL version 3.2 and above\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Forward-compatibility is only defined for OpenGL version 3.0 and above\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid OpenGL ES version %i.%i\00", align 1
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Invalid context robustness mode 0x%08X\00", align 1
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Invalid context release behavior 0x%08X\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwIsValidContextConfig(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GLFW_NO_API, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GLFW_NO_API, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14, %8
  %24 = load i32, i32* @GLFW_NO_WINDOW_CONTEXT, align 4
  %25 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %24, i8* null)
  %26 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %293

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLFW_EGL_CONTEXT_API, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GLFW_OSMESA_CONTEXT_API, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %52, i32* %2, align 4
  br label %293

53:                                               ; preds = %40, %34, %28
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GLFW_NO_API, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GLFW_OPENGL_API, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %77, i32* %2, align 4
  br label %293

78:                                               ; preds = %65, %59, %53
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GLFW_OPENGL_API, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %193

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %124, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %124, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 5
  br i1 %103, label %124, label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %124, label %114

114:                                              ; preds = %109, %104
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 3
  br i1 %123, label %124, label %134

124:                                              ; preds = %119, %109, %99, %89, %84
  %125 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %133, i32* %2, align 4
  br label %293

134:                                              ; preds = %119, %114
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %134
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @GLFW_OPENGL_CORE_PROFILE, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @GLFW_OPENGL_COMPAT_PROFILE, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %157, i32* %2, align 4
  br label %293

158:                                              ; preds = %145, %139
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp sle i32 %161, 2
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %177

173:                                              ; preds = %168, %158
  %174 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %175 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %174, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %176, i32* %2, align 4
  br label %293

177:                                              ; preds = %168, %163
  br label %178

178:                                              ; preds = %177, %134
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp sle i32 %186, 2
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %190 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %189, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %191 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %191, i32* %2, align 4
  br label %293

192:                                              ; preds = %183, %178
  br label %241

193:                                              ; preds = %78
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %240

199:                                              ; preds = %193
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %229, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %204
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %229, label %219

219:                                              ; preds = %214, %209
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %239

224:                                              ; preds = %219
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224, %214, %204, %199
  %230 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %230, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %233, i32 %236)
  %238 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %238, i32* %2, align 4
  br label %293

239:                                              ; preds = %224, %219
  br label %240

240:                                              ; preds = %239, %193
  br label %241

241:                                              ; preds = %240, %192
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %266

246:                                              ; preds = %241
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @GLFW_NO_RESET_NOTIFICATION, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @GLFW_LOSE_CONTEXT_ON_RESET, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %252
  %259 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %259, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %264, i32* %2, align 4
  br label %293

265:                                              ; preds = %252, %246
  br label %266

266:                                              ; preds = %265, %241
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %291

271:                                              ; preds = %266
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @GLFW_RELEASE_BEHAVIOR_NONE, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %271
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %277
  %284 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %284, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %289, i32* %2, align 4
  br label %293

290:                                              ; preds = %277, %271
  br label %291

291:                                              ; preds = %290, %266
  %292 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %291, %283, %258, %229, %188, %173, %151, %124, %71, %46, %23
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
