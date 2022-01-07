; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c_createNativeWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c_createNativeWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i8*, %struct.TYPE_24__, i64, i64, i32, i64 }
%struct.TYPE_24__ = type { i8*, i8* }
%struct.TYPE_30__ = type { i32, i64, i32 }
%struct.TYPE_29__ = type { i8*, i8*, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@AllocNone = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i64 0, align 8
@CWColormap = common dso_local global i64 0, align 8
@CWEventMask = common dso_local global i64 0, align 8
@StructureNotifyMask = common dso_local global i32 0, align 4
@KeyPressMask = common dso_local global i32 0, align 4
@KeyReleaseMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@ButtonPressMask = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@FocusChangeMask = common dso_local global i32 0, align 4
@VisibilityChangeMask = common dso_local global i32 0, align 4
@EnterWindowMask = common dso_local global i32 0, align 4
@LeaveWindowMask = common dso_local global i32 0, align 4
@PropertyChangeMask = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"X11: Failed to create window\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@GLFW_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"X11: Failed to allocate WM hints\00", align 1
@StateHint = common dso_local global i32 0, align 4
@NormalState = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"RESOURCE_NAME\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"glfw-application\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"GLFW-Application\00", align 1
@_GLFW_XDND_VERSION = common dso_local global i64 0, align 8
@XNInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNothing = common dso_local global i32 0, align 4
@XIMStatusNothing = common dso_local global i32 0, align 4
@XNClientWindow = common dso_local global i32 0, align 4
@XNFocusWindow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32)* @createNativeWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createNativeWindow(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca [2 x i64], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 0), align 8
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 1), align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %33, %4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 15), align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @AllocNone, align 4
  %45 = call i32 @XCreateColormap(i32 %41, i32 %42, i32* %43, i32 %44)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @_glfwIsVisualTransparentX11(i32* %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 4
  %54 = load i64, i64* @CWBorderPixel, align 8
  %55 = load i64, i64* @CWColormap, align 8
  %56 = or i64 %54, %55
  %57 = load i64, i64* @CWEventMask, align 8
  %58 = or i64 %56, %57
  store i64 %58, i64* %13, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @StructureNotifyMask, align 4
  %66 = load i32, i32* @KeyPressMask, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @KeyReleaseMask, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PointerMotionMask, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ButtonPressMask, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ButtonReleaseMask, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @ExposureMask, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @FocusChangeMask, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @VisibilityChangeMask, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @EnterWindowMask, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @LeaveWindowMask, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PropertyChangeMask, align 4
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = call i32 (...) @_glfwGrabErrorHandlerX11()
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 15), align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @InputOutput, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @XCreateWindow(i32 %90, i32 %91, i32 0, i32 0, i32 %92, i32 %93, i32 0, i32 %94, i32 %95, i32* %96, i64 %97, %struct.TYPE_30__* %12)
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 4
  %102 = call i32 (...) @_glfwReleaseErrorHandlerX11()
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %40
  %109 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %110 = call i32 @_glfwInputErrorX11(i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %111, i32* %5, align 4
  br label %401

112:                                              ; preds = %40
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 14), align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %120 = ptrtoint %struct.TYPE_28__* %119 to i32
  %121 = call i32 @XSaveContext(i32 %113, i32 %117, i32 %118, i32 %120)
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %112
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %128 = load i32, i32* @GLFW_FALSE, align 4
  %129 = call i32 @_glfwPlatformSetWindowDecorated(%struct.TYPE_28__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %112
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 10), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %196

133:                                              ; preds = %130
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %196, label %138

138:                                              ; preds = %133
  store i32 0, i32* %15, align 4
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 13), align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 13), align 8
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %150
  store i64 %147, i64* %151, align 8
  br label %152

152:                                              ; preds = %146, %143
  br label %153

153:                                              ; preds = %152, %138
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %153
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 12), align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 11), align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 12), align 8
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %168
  store i64 %165, i64* %169, align 8
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 11), align 8
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %15, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %173
  store i64 %170, i64* %174, align 8
  %175 = load i32, i32* @GLFW_TRUE, align 4
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 6
  store i32 %175, i32* %178, align 4
  br label %179

179:                                              ; preds = %164, %161, %158
  br label %180

180:                                              ; preds = %179, %153
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 10), align 8
  %190 = load i32, i32* @XA_ATOM, align 4
  %191 = load i32, i32* @PropModeReplace, align 4
  %192 = bitcast [3 x i64]* %14 to i8*
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @XChangeProperty(i32 %184, i32 %188, i64 %189, i32 %190, i32 32, i32 %191, i8* %192, i32 %193)
  br label %195

195:                                              ; preds = %183, %180
  br label %196

196:                                              ; preds = %195, %133, %130
  %197 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 9), align 8
  store i64 %198, i64* %197, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 1
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 8), align 8
  store i64 %200, i64* %199, align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %207 = call i32 @XSetWMProtocols(i32 %201, i32 %205, i64* %206, i32 2)
  %208 = call i64 (...) @getpid()
  store i64 %208, i64* %17, align 8
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 7), align 8
  %215 = load i32, i32* @XA_CARDINAL, align 4
  %216 = load i32, i32* @PropModeReplace, align 4
  %217 = bitcast i64* %17 to i8*
  %218 = call i32 @XChangeProperty(i32 %209, i32 %213, i64 %214, i32 %215, i32 32, i32 %216, i8* %217, i32 1)
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 5), align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %196
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 6), align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 6), align 8
  store i64 %225, i64* %18, align 8
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 5), align 8
  %232 = load i32, i32* @XA_ATOM, align 4
  %233 = load i32, i32* @PropModeReplace, align 4
  %234 = bitcast i64* %18 to i8*
  %235 = call i32 @XChangeProperty(i32 %226, i32 %230, i64 %231, i32 %232, i32 32, i32 %233, i8* %234, i32 1)
  br label %236

236:                                              ; preds = %224, %221, %196
  %237 = call %struct.TYPE_29__* (...) @XAllocWMHints()
  store %struct.TYPE_29__* %237, %struct.TYPE_29__** %19, align 8
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %239 = icmp ne %struct.TYPE_29__* %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i32, i32* @GLFW_OUT_OF_MEMORY, align 4
  %242 = call i32 @_glfwInputError(i32 %241, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %243 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %243, i32* %5, align 4
  br label %401

244:                                              ; preds = %236
  %245 = load i32, i32* @StateHint, align 4
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @NormalState, align 4
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %257 = call i32 @XSetWMHints(i32 %251, i32 %255, %struct.TYPE_29__* %256)
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %259 = call i32 @XFree(%struct.TYPE_29__* %258)
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @updateNormalHints(%struct.TYPE_28__* %260, i32 %261, i32 %262)
  %264 = call %struct.TYPE_29__* (...) @XAllocClassHint()
  store %struct.TYPE_29__* %264, %struct.TYPE_29__** %20, align 8
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i64 @strlen(i8* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %291

271:                                              ; preds = %244
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @strlen(i8* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %271
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  br label %335

291:                                              ; preds = %271, %244
  %292 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %292, i8** %21, align 8
  %293 = load i8*, i8** %21, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %303

295:                                              ; preds = %291
  %296 = load i8*, i8** %21, align 8
  %297 = call i64 @strlen(i8* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i8*, i8** %21, align 8
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  br label %319

303:                                              ; preds = %295, %291
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = call i64 @strlen(i8* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %303
  %310 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 2
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  br label %318

315:                                              ; preds = %303
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %317, align 8
  br label %318

318:                                              ; preds = %315, %309
  br label %319

319:                                              ; preds = %318, %299
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = call i64 @strlen(i8* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %319
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 2
  %328 = load i8*, i8** %327, align 8
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 1
  store i8* %328, i8** %330, align 8
  br label %334

331:                                              ; preds = %319
  %332 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %333, align 8
  br label %334

334:                                              ; preds = %331, %325
  br label %335

335:                                              ; preds = %334, %278
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %342 = call i32 @XSetClassHint(i32 %336, i32 %340, %struct.TYPE_29__* %341)
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %344 = call i32 @XFree(%struct.TYPE_29__* %343)
  %345 = load i64, i64* @_GLFW_XDND_VERSION, align 8
  store i64 %345, i64* %22, align 8
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 4), align 8
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 3), align 8
  %352 = load i32, i32* @XA_ATOM, align 4
  %353 = load i32, i32* @PropModeReplace, align 4
  %354 = bitcast i64* %22 to i8*
  %355 = call i32 @XChangeProperty(i32 %346, i32 %350, i64 %351, i32 %352, i32 32, i32 %353, i8* %354, i32 1)
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 2
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 @_glfwPlatformSetWindowTitle(%struct.TYPE_28__* %356, i8* %359)
  %361 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 2), align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %383

363:                                              ; preds = %335
  %364 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @_glfw, i32 0, i32 0, i32 2), align 8
  %365 = load i32, i32* @XNInputStyle, align 4
  %366 = load i32, i32* @XIMPreeditNothing, align 4
  %367 = load i32, i32* @XIMStatusNothing, align 4
  %368 = or i32 %366, %367
  %369 = load i32, i32* @XNClientWindow, align 4
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @XNFocusWindow, align 4
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @XCreateIC(i64 %364, i32 %365, i32 %368, i32 %369, i32 %373, i32 %374, i32 %378, i32* null)
  %380 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 5
  store i32 %379, i32* %382, align 4
  br label %383

383:                                              ; preds = %363, %335
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 3
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 2
  %391 = call i32 @_glfwPlatformGetWindowPos(%struct.TYPE_28__* %384, i32* %387, i32* %390)
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %393 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 0
  %399 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_28__* %392, i32* %395, i32* %398)
  %400 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %400, i32* %5, align 4
  br label %401

401:                                              ; preds = %383, %240, %108
  %402 = load i32, i32* %5, align 4
  ret i32 %402
}

declare dso_local i32 @XCreateColormap(i32, i32, i32*, i32) #1

declare dso_local i32 @_glfwIsVisualTransparentX11(i32*) #1

declare dso_local i32 @_glfwGrabErrorHandlerX11(...) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_30__*) #1

declare dso_local i32 @_glfwReleaseErrorHandlerX11(...) #1

declare dso_local i32 @_glfwInputErrorX11(i32, i8*) #1

declare dso_local i32 @XSaveContext(i32, i32, i32, i32) #1

declare dso_local i32 @_glfwPlatformSetWindowDecorated(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i64*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local %struct.TYPE_29__* @XAllocWMHints(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @XSetWMHints(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @XFree(%struct.TYPE_29__*) #1

declare dso_local i32 @updateNormalHints(%struct.TYPE_28__*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @XAllocClassHint(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @XSetClassHint(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @_glfwPlatformSetWindowTitle(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @XCreateIC(i64, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowPos(%struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_28__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
