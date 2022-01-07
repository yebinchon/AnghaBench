; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wgl_context.c_choosePixelFormat.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wgl_context.c_choosePixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64 }
%struct.TYPE_25__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@WGL_NUMBER_PIXEL_FORMATS_ARB = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WGL: Failed to retrieve pixel format attribute\00", align 1
@WGL_SUPPORT_OPENGL_ARB = common dso_local global i32 0, align 4
@WGL_DRAW_TO_WINDOW_ARB = common dso_local global i32 0, align 4
@WGL_PIXEL_TYPE_ARB = common dso_local global i32 0, align 4
@WGL_ACCELERATION_ARB = common dso_local global i32 0, align 4
@WGL_RED_BITS_ARB = common dso_local global i32 0, align 4
@WGL_RED_SHIFT_ARB = common dso_local global i32 0, align 4
@WGL_GREEN_BITS_ARB = common dso_local global i32 0, align 4
@WGL_GREEN_SHIFT_ARB = common dso_local global i32 0, align 4
@WGL_BLUE_BITS_ARB = common dso_local global i32 0, align 4
@WGL_BLUE_SHIFT_ARB = common dso_local global i32 0, align 4
@WGL_ALPHA_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ALPHA_SHIFT_ARB = common dso_local global i32 0, align 4
@WGL_DEPTH_BITS_ARB = common dso_local global i32 0, align 4
@WGL_STENCIL_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_RED_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_GREEN_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_BLUE_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_ALPHA_BITS_ARB = common dso_local global i32 0, align 4
@WGL_AUX_BUFFERS_ARB = common dso_local global i32 0, align 4
@WGL_STEREO_ARB = common dso_local global i32 0, align 4
@WGL_DOUBLE_BUFFER_ARB = common dso_local global i32 0, align 4
@WGL_SAMPLES_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB = common dso_local global i32 0, align 4
@WGL_COLORSPACE_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"WGL: Failed to retrieve pixel format attributes\00", align 1
@WGL_TYPE_RGBA_ARB = common dso_local global i64 0, align 8
@WGL_NO_ACCELERATION_ARB = common dso_local global i64 0, align 8
@GLFW_TRUE = common dso_local global i8* null, align 8
@WGL_COLORSPACE_SRGB_EXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"WGL: Failed to describe pixel format\00", align 1
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_GENERIC_ACCELERATED = common dso_local global i32 0, align 4
@PFD_GENERIC_FORMAT = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i64 0, align 8
@PFD_STEREO = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"WGL: The driver does not appear to support OpenGL\00", align 1
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"WGL: Failed to find a suitable pixel format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @choosePixelFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choosePixelFormat(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [40 x i32], align 16
  %16 = alloca [40 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %108

22:                                               ; preds = %3
  %23 = load i32, i32* @WGL_NUMBER_PIXEL_FORMATS_ARB, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wglGetPixelFormatAttribivARB(i32 %28, i32 1, i32 0, i32 1, i32* %17, i32* %12)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %33 = call i32 @_glfwInputErrorWin32(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

34:                                               ; preds = %22
  %35 = load i32, i32* @WGL_SUPPORT_OPENGL_ARB, align 4
  %36 = call i32 @addAttrib(i32 %35)
  %37 = load i32, i32* @WGL_DRAW_TO_WINDOW_ARB, align 4
  %38 = call i32 @addAttrib(i32 %37)
  %39 = load i32, i32* @WGL_PIXEL_TYPE_ARB, align 4
  %40 = call i32 @addAttrib(i32 %39)
  %41 = load i32, i32* @WGL_ACCELERATION_ARB, align 4
  %42 = call i32 @addAttrib(i32 %41)
  %43 = load i32, i32* @WGL_RED_BITS_ARB, align 4
  %44 = call i32 @addAttrib(i32 %43)
  %45 = load i32, i32* @WGL_RED_SHIFT_ARB, align 4
  %46 = call i32 @addAttrib(i32 %45)
  %47 = load i32, i32* @WGL_GREEN_BITS_ARB, align 4
  %48 = call i32 @addAttrib(i32 %47)
  %49 = load i32, i32* @WGL_GREEN_SHIFT_ARB, align 4
  %50 = call i32 @addAttrib(i32 %49)
  %51 = load i32, i32* @WGL_BLUE_BITS_ARB, align 4
  %52 = call i32 @addAttrib(i32 %51)
  %53 = load i32, i32* @WGL_BLUE_SHIFT_ARB, align 4
  %54 = call i32 @addAttrib(i32 %53)
  %55 = load i32, i32* @WGL_ALPHA_BITS_ARB, align 4
  %56 = call i32 @addAttrib(i32 %55)
  %57 = load i32, i32* @WGL_ALPHA_SHIFT_ARB, align 4
  %58 = call i32 @addAttrib(i32 %57)
  %59 = load i32, i32* @WGL_DEPTH_BITS_ARB, align 4
  %60 = call i32 @addAttrib(i32 %59)
  %61 = load i32, i32* @WGL_STENCIL_BITS_ARB, align 4
  %62 = call i32 @addAttrib(i32 %61)
  %63 = load i32, i32* @WGL_ACCUM_BITS_ARB, align 4
  %64 = call i32 @addAttrib(i32 %63)
  %65 = load i32, i32* @WGL_ACCUM_RED_BITS_ARB, align 4
  %66 = call i32 @addAttrib(i32 %65)
  %67 = load i32, i32* @WGL_ACCUM_GREEN_BITS_ARB, align 4
  %68 = call i32 @addAttrib(i32 %67)
  %69 = load i32, i32* @WGL_ACCUM_BLUE_BITS_ARB, align 4
  %70 = call i32 @addAttrib(i32 %69)
  %71 = load i32, i32* @WGL_ACCUM_ALPHA_BITS_ARB, align 4
  %72 = call i32 @addAttrib(i32 %71)
  %73 = load i32, i32* @WGL_AUX_BUFFERS_ARB, align 4
  %74 = call i32 @addAttrib(i32 %73)
  %75 = load i32, i32* @WGL_STEREO_ARB, align 4
  %76 = call i32 @addAttrib(i32 %75)
  %77 = load i32, i32* @WGL_DOUBLE_BUFFER_ARB, align 4
  %78 = call i32 @addAttrib(i32 %77)
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %34
  %82 = load i32, i32* @WGL_SAMPLES_ARB, align 4
  %83 = call i32 @addAttrib(i32 %82)
  br label %84

84:                                               ; preds = %81, %34
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @GLFW_OPENGL_API, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB, align 4
  %98 = call i32 @addAttrib(i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %107

100:                                              ; preds = %84
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @WGL_COLORSPACE_EXT, align 4
  %105 = call i32 @addAttrib(i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %99
  br label %115

108:                                              ; preds = %3
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @DescribePixelFormat(i32 %113, i32 1, i32 104, %struct.TYPE_25__* null)
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %108, %107
  %116 = load i32, i32* %12, align 4
  %117 = call %struct.TYPE_23__* @calloc(i32 %116, i32 128)
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %391, %115
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %394

122:                                              ; preds = %118
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i64 %125
  store %struct.TYPE_23__* %126, %struct.TYPE_23__** %18, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %274

131:                                              ; preds = %122
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %14, align 4
  %139 = getelementptr inbounds [40 x i32], [40 x i32]* %15, i64 0, i64 0
  %140 = getelementptr inbounds [40 x i32], [40 x i32]* %16, i64 0, i64 0
  %141 = call i32 @wglGetPixelFormatAttribivARB(i32 %136, i32 %137, i32 0, i32 %138, i32* %139, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %131
  %144 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %145 = call i32 @_glfwInputErrorWin32(i32 %144, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %147 = call i32 @free(%struct.TYPE_23__* %146)
  store i32 0, i32* %4, align 4
  br label %421

148:                                              ; preds = %131
  %149 = load i32, i32* @WGL_SUPPORT_OPENGL_ARB, align 4
  %150 = call i64 @findAttribValue(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* @WGL_DRAW_TO_WINDOW_ARB, align 4
  %154 = call i64 @findAttribValue(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152, %148
  br label %391

157:                                              ; preds = %152
  %158 = load i32, i32* @WGL_PIXEL_TYPE_ARB, align 4
  %159 = call i64 @findAttribValue(i32 %158)
  %160 = load i64, i64* @WGL_TYPE_RGBA_ARB, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %391

163:                                              ; preds = %157
  %164 = load i32, i32* @WGL_ACCELERATION_ARB, align 4
  %165 = call i64 @findAttribValue(i32 %164)
  %166 = load i64, i64* @WGL_NO_ACCELERATION_ARB, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %391

169:                                              ; preds = %163
  %170 = load i32, i32* @WGL_RED_BITS_ARB, align 4
  %171 = call i64 @findAttribValue(i32 %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 13
  store i64 %171, i64* %173, align 8
  %174 = load i32, i32* @WGL_GREEN_BITS_ARB, align 4
  %175 = call i64 @findAttribValue(i32 %174)
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 12
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* @WGL_BLUE_BITS_ARB, align 4
  %179 = call i64 @findAttribValue(i32 %178)
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 11
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* @WGL_ALPHA_BITS_ARB, align 4
  %183 = call i64 @findAttribValue(i32 %182)
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 10
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* @WGL_DEPTH_BITS_ARB, align 4
  %187 = call i64 @findAttribValue(i32 %186)
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 9
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* @WGL_STENCIL_BITS_ARB, align 4
  %191 = call i64 @findAttribValue(i32 %190)
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 8
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* @WGL_ACCUM_RED_BITS_ARB, align 4
  %195 = call i64 @findAttribValue(i32 %194)
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 7
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* @WGL_ACCUM_GREEN_BITS_ARB, align 4
  %199 = call i64 @findAttribValue(i32 %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 6
  store i64 %199, i64* %201, align 8
  %202 = load i32, i32* @WGL_ACCUM_BLUE_BITS_ARB, align 4
  %203 = call i64 @findAttribValue(i32 %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 5
  store i64 %203, i64* %205, align 8
  %206 = load i32, i32* @WGL_ACCUM_ALPHA_BITS_ARB, align 4
  %207 = call i64 @findAttribValue(i32 %206)
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 4
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* @WGL_AUX_BUFFERS_ARB, align 4
  %211 = call i64 @findAttribValue(i32 %210)
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 3
  store i64 %211, i64* %213, align 8
  %214 = load i32, i32* @WGL_STEREO_ARB, align 4
  %215 = call i64 @findAttribValue(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %169
  %218 = load i8*, i8** @GLFW_TRUE, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %217, %169
  %222 = load i32, i32* @WGL_DOUBLE_BUFFER_ARB, align 4
  %223 = call i64 @findAttribValue(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i8*, i8** @GLFW_TRUE, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3), align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i32, i32* @WGL_SAMPLES_ARB, align 4
  %234 = call i64 @findAttribValue(i32 %233)
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 15
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %232, %229
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @GLFW_OPENGL_API, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %237
  %244 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2), align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %246, %243
  %250 = load i32, i32* @WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB, align 4
  %251 = call i64 @findAttribValue(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i8*, i8** @GLFW_TRUE, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 14
  store i8* %254, i8** %256, align 8
  br label %257

257:                                              ; preds = %253, %249
  br label %258

258:                                              ; preds = %257, %246
  br label %273

259:                                              ; preds = %237
  %260 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %259
  %263 = load i32, i32* @WGL_COLORSPACE_EXT, align 4
  %264 = call i64 @findAttribValue(i32 %263)
  %265 = load i64, i64* @WGL_COLORSPACE_SRGB_EXT, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i8*, i8** @GLFW_TRUE, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 14
  store i8* %268, i8** %270, align 8
  br label %271

271:                                              ; preds = %267, %262
  br label %272

272:                                              ; preds = %271, %259
  br label %273

273:                                              ; preds = %272, %258
  br label %385

274:                                              ; preds = %122
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @DescribePixelFormat(i32 %279, i32 %280, i32 104, %struct.TYPE_25__* %19)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %274
  %284 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %285 = call i32 @_glfwInputErrorWin32(i32 %284, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %287 = call i32 @free(%struct.TYPE_23__* %286)
  store i32 0, i32* %4, align 4
  br label %421

288:                                              ; preds = %274
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %294, %288
  br label %391

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @PFD_GENERIC_ACCELERATED, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @PFD_GENERIC_FORMAT, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  br label %391

314:                                              ; preds = %307, %301
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @PFD_TYPE_RGBA, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  br label %391

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 12
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 13
  store i64 %322, i64* %324, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 11
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 12
  store i64 %326, i64* %328, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 10
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 11
  store i64 %330, i64* %332, align 8
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 9
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 10
  store i64 %334, i64* %336, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 8
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 9
  store i64 %338, i64* %340, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 7
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 8
  store i64 %342, i64* %344, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 7
  store i64 %346, i64* %348, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 5
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 6
  store i64 %350, i64* %352, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 5
  store i64 %354, i64* %356, align 8
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 4
  store i64 %358, i64* %360, align 8
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 3
  store i64 %362, i64* %364, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @PFD_STEREO, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %320
  %371 = load i8*, i8** @GLFW_TRUE, align 8
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 2
  store i8* %371, i8** %373, align 8
  br label %374

374:                                              ; preds = %370, %320
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %374
  %381 = load i8*, i8** @GLFW_TRUE, align 8
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 1
  store i8* %381, i8** %383, align 8
  br label %384

384:                                              ; preds = %380, %374
  br label %385

385:                                              ; preds = %384, %273
  %386 = load i32, i32* %11, align 4
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  store i32 %386, i32* %388, align 8
  %389 = load i32, i32* %13, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %13, align 4
  br label %391

391:                                              ; preds = %385, %319, %313, %300, %168, %162, %156
  %392 = load i32, i32* %10, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %10, align 4
  br label %118

394:                                              ; preds = %118
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %394
  %398 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %399 = call i32 @_glfwInputError(i32 %398, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %401 = call i32 @free(%struct.TYPE_23__* %400)
  store i32 0, i32* %4, align 4
  br label %421

402:                                              ; preds = %394
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %405 = load i32, i32* %13, align 4
  %406 = call %struct.TYPE_23__* @_glfwChooseFBConfig(%struct.TYPE_23__* %403, %struct.TYPE_23__* %404, i32 %405)
  store %struct.TYPE_23__* %406, %struct.TYPE_23__** %9, align 8
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %408 = icmp ne %struct.TYPE_23__* %407, null
  br i1 %408, label %414, label %409

409:                                              ; preds = %402
  %410 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %411 = call i32 @_glfwInputError(i32 %410, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %413 = call i32 @free(%struct.TYPE_23__* %412)
  store i32 0, i32* %4, align 4
  br label %421

414:                                              ; preds = %402
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  store i32 %417, i32* %11, align 4
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %419 = call i32 @free(%struct.TYPE_23__* %418)
  %420 = load i32, i32* %11, align 4
  store i32 %420, i32* %4, align 4
  br label %421

421:                                              ; preds = %414, %409, %397, %283, %143, %31
  %422 = load i32, i32* %4, align 4
  ret i32 %422
}

declare dso_local i32 @wglGetPixelFormatAttribivARB(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_glfwInputErrorWin32(i32, i8*) #1

declare dso_local i32 @addAttrib(i32) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_23__* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

declare dso_local i64 @findAttribValue(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_23__* @_glfwChooseFBConfig(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
