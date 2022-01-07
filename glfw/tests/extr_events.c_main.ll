; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_events.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_events.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Library initialized\0A\00", align 1
@monitor_callback = common dso_local global i32 0, align 4
@joystick_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hfn:\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Event Linter (Window %i)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Creating full screen window %i (%ix%i on %s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Creating windowed mode window %i (%ix%i)\0A\00", align 1
@window_pos_callback = common dso_local global i32 0, align 4
@window_size_callback = common dso_local global i32 0, align 4
@framebuffer_size_callback = common dso_local global i32 0, align 4
@window_content_scale_callback = common dso_local global i32 0, align 4
@window_close_callback = common dso_local global i32 0, align 4
@window_refresh_callback = common dso_local global i32 0, align 4
@window_focus_callback = common dso_local global i32 0, align 4
@window_iconify_callback = common dso_local global i32 0, align 4
@window_maximize_callback = common dso_local global i32 0, align 4
@mouse_button_callback = common dso_local global i32 0, align 4
@cursor_position_callback = common dso_local global i32 0, align 4
@cursor_enter_callback = common dso_local global i32 0, align 4
@scroll_callback = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@char_callback = common dso_local global i32 0, align 4
@drop_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Main loop starting\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* @error_callback, align 4
  %16 = call i32 @glfwSetErrorCallback(i32 %15)
  %17 = call i32 (...) @glfwInit()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @exit(i32 %20) #3
  unreachable

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @monitor_callback, align 4
  %25 = call i32 @glfwSetMonitorCallback(i32 %24)
  %26 = load i32, i32* @joystick_callback, align 4
  %27 = call i32 @glfwSetJoystickCallback(i32 %26)
  br label %28

28:                                               ; preds = %49, %22
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %45 [
    i32 104, label %35
    i32 102, label %39
    i32 110, label %41
  ]

35:                                               ; preds = %33
  %36 = call i32 (...) @usage()
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %33
  %40 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %40, i32** %7, align 8
  br label %49

41:                                               ; preds = %33
  %42 = load i32, i32* @optarg, align 4
  %43 = call i64 @strtoul(i32 %42, i32* null, i32 10)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %49

45:                                               ; preds = %33
  %46 = call i32 (...) @usage()
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %41, %39
  br label %28

50:                                               ; preds = %28
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_8__* @glfwGetVideoMode(i32* %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %13, align 8
  %56 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @glfwWindowHint(i32 %56, i32 %59)
  %61 = load i32, i32* @GLFW_RED_BITS, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @glfwWindowHint(i32 %61, i32 %64)
  %66 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @glfwWindowHint(i32 %66, i32 %69)
  %71 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @glfwWindowHint(i32 %71, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  br label %83

82:                                               ; preds = %50
  store i32 640, i32* %10, align 4
  store i32 480, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.TYPE_7__* @calloc(i32 %84, i32 12)
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %310, %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %313

90:                                               ; preds = %86
  %91 = load i32, i32* @GLFW_TRUE, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 %91, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @snprintf(i8* %104, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %90
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i8* @glfwGetMonitorName(i32* %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i8* %124)
  br label %136

126:                                              ; preds = %90
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %126, %114
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @glfwCreateWindow(i32 %137, i32 %138, i8* %139, i32* %140, i32* null)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 %141, i32* %146, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %136
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = call i32 @free(%struct.TYPE_7__* %155)
  %157 = call i32 (...) @glfwTerminate()
  %158 = load i32, i32* @EXIT_FAILURE, align 4
  %159 = call i32 @exit(i32 %158) #3
  unreachable

160:                                              ; preds = %136
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = call i32 @glfwSetWindowUserPointer(i32 %166, %struct.TYPE_7__* %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @window_pos_callback, align 4
  %179 = call i32 @glfwSetWindowPosCallback(i32 %177, i32 %178)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @window_size_callback, align 4
  %187 = call i32 @glfwSetWindowSizeCallback(i32 %185, i32 %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @framebuffer_size_callback, align 4
  %195 = call i32 @glfwSetFramebufferSizeCallback(i32 %193, i32 %194)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @window_content_scale_callback, align 4
  %203 = call i32 @glfwSetWindowContentScaleCallback(i32 %201, i32 %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @window_close_callback, align 4
  %211 = call i32 @glfwSetWindowCloseCallback(i32 %209, i32 %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @window_refresh_callback, align 4
  %219 = call i32 @glfwSetWindowRefreshCallback(i32 %217, i32 %218)
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @window_focus_callback, align 4
  %227 = call i32 @glfwSetWindowFocusCallback(i32 %225, i32 %226)
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @window_iconify_callback, align 4
  %235 = call i32 @glfwSetWindowIconifyCallback(i32 %233, i32 %234)
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @window_maximize_callback, align 4
  %243 = call i32 @glfwSetWindowMaximizeCallback(i32 %241, i32 %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @mouse_button_callback, align 4
  %251 = call i32 @glfwSetMouseButtonCallback(i32 %249, i32 %250)
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @cursor_position_callback, align 4
  %259 = call i32 @glfwSetCursorPosCallback(i32 %257, i32 %258)
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @cursor_enter_callback, align 4
  %267 = call i32 @glfwSetCursorEnterCallback(i32 %265, i32 %266)
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @scroll_callback, align 4
  %275 = call i32 @glfwSetScrollCallback(i32 %273, i32 %274)
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @key_callback, align 4
  %283 = call i32 @glfwSetKeyCallback(i32 %281, i32 %282)
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @char_callback, align 4
  %291 = call i32 @glfwSetCharCallback(i32 %289, i32 %290)
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @drop_callback, align 4
  %299 = call i32 @glfwSetDropCallback(i32 %297, i32 %298)
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @glfwMakeContextCurrent(i32 %305)
  %307 = load i32, i32* @glfwGetProcAddress, align 4
  %308 = call i32 @gladLoadGL(i32 %307)
  %309 = call i32 @glfwSwapInterval(i32 1)
  br label %310

310:                                              ; preds = %160
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %9, align 4
  br label %86

313:                                              ; preds = %86
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %315

315:                                              ; preds = %339, %313
  store i32 0, i32* %9, align 4
  br label %316

316:                                              ; preds = %331, %315
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %12, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %334

320:                                              ; preds = %316
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i64 @glfwWindowShouldClose(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %320
  br label %334

330:                                              ; preds = %320
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %9, align 4
  br label %316

334:                                              ; preds = %329, %316
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %12, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  br label %343

339:                                              ; preds = %334
  %340 = call i32 (...) @glfwWaitEvents()
  %341 = load i32, i32* @stdout, align 4
  %342 = call i32 @fflush(i32 %341)
  br label %315

343:                                              ; preds = %338
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %345 = call i32 @free(%struct.TYPE_7__* %344)
  %346 = call i32 (...) @glfwTerminate()
  %347 = load i32, i32* @EXIT_SUCCESS, align 4
  %348 = call i32 @exit(i32 %347) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @glfwSetMonitorCallback(i32) #1

declare dso_local i32 @glfwSetJoystickCallback(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i64 @strtoul(i32, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

declare dso_local i32 @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetWindowUserPointer(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @glfwSetWindowPosCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowSizeCallback(i32, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowContentScaleCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowCloseCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowRefreshCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowFocusCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowIconifyCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowMaximizeCallback(i32, i32) #1

declare dso_local i32 @glfwSetMouseButtonCallback(i32, i32) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32, i32) #1

declare dso_local i32 @glfwSetCursorEnterCallback(i32, i32) #1

declare dso_local i32 @glfwSetScrollCallback(i32, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32, i32) #1

declare dso_local i32 @glfwSetCharCallback(i32, i32) #1

declare dso_local i32 @glfwSetDropCallback(i32, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i64 @glfwWindowShouldClose(i32) #1

declare dso_local i32 @glfwWaitEvents(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
