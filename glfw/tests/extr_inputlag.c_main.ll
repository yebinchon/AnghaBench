; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nk_context = type { i32 }
%struct.nk_font_atlas = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nk_rect = type { i32 }
%struct.nk_command_buffer = type { i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@nk_true = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fh\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MAJOR = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MINOR = common dso_local global i32 0, align 4
@GLFW_SCALE_TO_MONITOR = common dso_local global i32 0, align 4
@GLFW_WIN32_KEYBOARD_MENU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Input lag test\00", align 1
@glfwGetProcAddress = common dso_local global i32 0, align 4
@NK_GLFW3_INSTALL_CALLBACKS = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@cursor_pos_callback = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NK_TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@NK_TEXT_ALIGN_MIDDLE = common dso_local global i32 0, align 4
@cursor_pos = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@cursor_vel = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Move mouse uniformly and check marker under cursor:\00", align 1
@NK_STATIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"- current cursor position (no input lag)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"- %d-frame forecast (input lag is %d frame)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Show forecasts\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Input method:\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"glfwGetCursorPos (sync query)\00", align 1
@cursor_method = common dso_local global i64 0, align 8
@cursor_sync_query = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"glfwSetCursorPosCallback (latest input message)\00", align 1
@cursor_input_message = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"FPS\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Enable vsync\00", align 1
@enable_vsync = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"After swap:\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"glClear\00", align 1
@swap_clear = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"glFinish\00", align 1
@swap_finish = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"draw with occlusion query\00", align 1
@swap_occlusion_query = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"glReadPixels\00", align 1
@swap_read_pixels = common dso_local global i32 0, align 4
@NK_ANTI_ALIASING_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nk_context*, align 8
  %17 = alloca %struct.nk_font_atlas*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nk_rect, align 4
  %23 = alloca %struct.nk_rect, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.nk_command_buffer*, align 8
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  store double 0.000000e+00, double* %12, align 8
  %27 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %27, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %28 = load i32, i32* @nk_true, align 4
  store i32 %28, i32* %18, align 4
  br label %29

29:                                               ; preds = %42, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %42 [
    i32 104, label %36
    i32 102, label %40
  ]

36:                                               ; preds = %34
  %37 = call i32 (...) @usage()
  %38 = load i32, i32* @EXIT_SUCCESS, align 4
  %39 = call i32 @exit(i32 %38) #4
  unreachable

40:                                               ; preds = %34
  %41 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %34, %40
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* @error_callback, align 4
  %45 = call i32 @glfwSetErrorCallback(i32 %44)
  %46 = call i32 (...) @glfwInit()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @exit(i32 %49) #4
  unreachable

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call %struct.TYPE_5__* @glfwGetVideoMode(i32* %56)
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %19, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %51
  store i32 640, i32* %7, align 4
  store i32 480, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32, i32* @GLFW_CONTEXT_VERSION_MAJOR, align 4
  %67 = call i32 @glfwWindowHint(i32 %66, i32 2)
  %68 = load i32, i32* @GLFW_CONTEXT_VERSION_MINOR, align 4
  %69 = call i32 @glfwWindowHint(i32 %68, i32 0)
  %70 = load i32, i32* @GLFW_SCALE_TO_MONITOR, align 4
  %71 = load i32, i32* @GLFW_TRUE, align 4
  %72 = call i32 @glfwWindowHint(i32 %70, i32 %71)
  %73 = load i32, i32* @GLFW_WIN32_KEYBOARD_MENU, align 4
  %74 = load i32, i32* @GLFW_TRUE, align 4
  %75 = call i32 @glfwWindowHint(i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = call i32* @glfwCreateWindow(i32 %76, i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %78, i32* null)
  store i32* %79, i32** %15, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %65
  %83 = call i32 (...) @glfwTerminate()
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  %85 = call i32 @exit(i32 %84) #4
  unreachable

86:                                               ; preds = %65
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @glfwMakeContextCurrent(i32* %87)
  %89 = load i32, i32* @glfwGetProcAddress, align 4
  %90 = call i32 @gladLoadGL(i32 %89)
  %91 = call i32 (...) @update_vsync()
  %92 = call double (...) @glfwGetTime()
  store double %92, double* %10, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* @NK_GLFW3_INSTALL_CALLBACKS, align 4
  %95 = call %struct.nk_context* @nk_glfw3_init(i32* %93, i32 %94)
  store %struct.nk_context* %95, %struct.nk_context** %16, align 8
  %96 = call i32 @nk_glfw3_font_stash_begin(%struct.nk_font_atlas** %17)
  %97 = call i32 (...) @nk_glfw3_font_stash_end()
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* @key_callback, align 4
  %100 = call i32 @glfwSetKeyCallback(i32* %98, i32 %99)
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @cursor_pos_callback, align 4
  %103 = call i32 @glfwSetCursorPosCallback(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %280, %86
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @glfwWindowShouldClose(i32* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %281

109:                                              ; preds = %104
  %110 = call i32 (...) @glfwPollEvents()
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @sample_input(i32* %111)
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @glfwGetWindowSize(i32* %113, i32* %20, i32* %21)
  %115 = load i32, i32* %20, align 4
  %116 = sitofp i32 %115 to float
  %117 = load i32, i32* %21, align 4
  %118 = sitofp i32 %117 to float
  %119 = call i32 @nk_rect(float 0.000000e+00, float 0.000000e+00, float %116, float %118)
  %120 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %23, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = bitcast %struct.nk_rect* %22 to i8*
  %122 = bitcast %struct.nk_rect* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 4, i1 false)
  %123 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %124 = call i32 @glClear(i32 %123)
  %125 = call i32 (...) @nk_glfw3_new_frame()
  %126 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %127 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %22, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @nk_begin(%struct.nk_context* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %258

131:                                              ; preds = %109
  %132 = load i32, i32* @NK_TEXT_ALIGN_LEFT, align 4
  %133 = load i32, i32* @NK_TEXT_ALIGN_MIDDLE, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %24, align 4
  %135 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %136 = call %struct.nk_command_buffer* @nk_window_get_canvas(%struct.nk_context* %135)
  store %struct.nk_command_buffer* %136, %struct.nk_command_buffer** %25, align 8
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 3, i32 0
  store i32 %140, i32* %26, align 4
  br label %141

141:                                              ; preds = %159, %131
  %142 = load i32, i32* %26, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %25, align 8
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cursor_pos, i32 0, i32 0), align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cursor_vel, i32 0, i32 0), align 4
  %149 = load i32, i32* %26, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cursor_pos, i32 0, i32 1), align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cursor_vel, i32 0, i32 1), align 4
  %154 = load i32, i32* %26, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %152, %155
  %157 = call i32 @nk_vec2(i32 %151, i32 %156)
  %158 = call i32 @draw_marker(%struct.nk_command_buffer* %145, i32 %146, i32 %157)
  br label %159

159:                                              ; preds = %144
  %160 = load i32, i32* %26, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %26, align 4
  br label %141

162:                                              ; preds = %141
  %163 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %164 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %163, i32 20, i32 1)
  %165 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %166 = load i32, i32* %24, align 4
  %167 = call i32 @nk_label(%struct.nk_context* %165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  store i32 0, i32* %26, align 4
  br label %168

168:                                              ; preds = %202, %162
  %169 = load i32, i32* %26, align 4
  %170 = icmp sle i32 %169, 3
  br i1 %170, label %171, label %205

171:                                              ; preds = %168
  %172 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %173 = load i32, i32* @NK_STATIC, align 4
  %174 = call i32 @nk_layout_row_begin(%struct.nk_context* %172, i32 %173, i32 12, i32 2)
  %175 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %176 = call i32 @nk_layout_row_push(%struct.nk_context* %175, i32 25)
  %177 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %25, align 8
  %178 = load i32, i32* %26, align 4
  %179 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %180 = call i32 @nk_vec2(i32 20, i32 5)
  %181 = call i32 @nk_layout_space_to_screen(%struct.nk_context* %179, i32 %180)
  %182 = call i32 @draw_marker(%struct.nk_command_buffer* %177, i32 %178, i32 %181)
  %183 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %184 = call i32 @nk_label(%struct.nk_context* %183, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %185 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %186 = call i32 @nk_layout_row_push(%struct.nk_context* %185, i32 500)
  %187 = load i32, i32* %26, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %171
  %190 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @nk_label(%struct.nk_context* %190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %191)
  br label %199

193:                                              ; preds = %171
  %194 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* %26, align 4
  %198 = call i32 @nk_labelf(%struct.nk_context* %194, i32 %195, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %193, %189
  %200 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %201 = call i32 @nk_layout_row_end(%struct.nk_context* %200)
  br label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %26, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %26, align 4
  br label %168

205:                                              ; preds = %168
  %206 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %207 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %206, i32 20, i32 1)
  %208 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %209 = call i32 @nk_checkbox_label(%struct.nk_context* %208, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %18)
  %210 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %211 = load i32, i32* %24, align 4
  %212 = call i32 @nk_label(%struct.nk_context* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %214 = load i64, i64* @cursor_method, align 8
  %215 = load i64, i64* @cursor_sync_query, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i64 @nk_option_label(%struct.nk_context* %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %205
  %221 = load i64, i64* @cursor_sync_query, align 8
  store i64 %221, i64* @cursor_method, align 8
  br label %222

222:                                              ; preds = %220, %205
  %223 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %224 = load i64, i64* @cursor_method, align 8
  %225 = load i64, i64* @cursor_input_message, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i64 @nk_option_label(%struct.nk_context* %223, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load i64, i64* @cursor_input_message, align 8
  store i64 %231, i64* @cursor_method, align 8
  br label %232

232:                                              ; preds = %230, %222
  %233 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %234 = call i32 @nk_label(%struct.nk_context* %233, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %235 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %236 = load double, double* %12, align 8
  %237 = fptrunc double %236 to float
  %238 = call i32 @nk_value_float(%struct.nk_context* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), float %237)
  %239 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %240 = call i32 @nk_checkbox_label(%struct.nk_context* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* @enable_vsync)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %232
  %243 = call i32 (...) @update_vsync()
  br label %244

244:                                              ; preds = %242, %232
  %245 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %246 = call i32 @nk_label(%struct.nk_context* %245, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %247 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %248 = load i32, i32* %24, align 4
  %249 = call i32 @nk_label(%struct.nk_context* %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %248)
  %250 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %251 = call i32 @nk_checkbox_label(%struct.nk_context* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* @swap_clear)
  %252 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %253 = call i32 @nk_checkbox_label(%struct.nk_context* %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* @swap_finish)
  %254 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %255 = call i32 @nk_checkbox_label(%struct.nk_context* %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32* @swap_occlusion_query)
  %256 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %257 = call i32 @nk_checkbox_label(%struct.nk_context* %256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* @swap_read_pixels)
  br label %258

258:                                              ; preds = %244, %109
  %259 = load %struct.nk_context*, %struct.nk_context** %16, align 8
  %260 = call i32 @nk_end(%struct.nk_context* %259)
  %261 = load i32, i32* @NK_ANTI_ALIASING_ON, align 4
  %262 = call i32 @nk_glfw3_render(i32 %261)
  %263 = load i32*, i32** %15, align 8
  %264 = call i32 @swap_buffers(i32* %263)
  %265 = load i64, i64* %9, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %9, align 8
  %267 = call double (...) @glfwGetTime()
  store double %267, double* %11, align 8
  %268 = load double, double* %11, align 8
  %269 = load double, double* %10, align 8
  %270 = fsub double %268, %269
  %271 = fcmp ogt double %270, 1.000000e+00
  br i1 %271, label %272, label %280

272:                                              ; preds = %258
  %273 = load i64, i64* %9, align 8
  %274 = uitofp i64 %273 to double
  %275 = load double, double* %11, align 8
  %276 = load double, double* %10, align 8
  %277 = fsub double %275, %276
  %278 = fdiv double %274, %277
  store double %278, double* %12, align 8
  store i64 0, i64* %9, align 8
  %279 = load double, double* %11, align 8
  store double %279, double* %10, align 8
  br label %280

280:                                              ; preds = %272, %258
  br label %104

281:                                              ; preds = %104
  %282 = call i32 (...) @glfwTerminate()
  %283 = load i32, i32* @EXIT_SUCCESS, align 4
  %284 = call i32 @exit(i32 %283) #4
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local %struct.TYPE_5__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @update_vsync(...) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local %struct.nk_context* @nk_glfw3_init(i32*, i32) #1

declare dso_local i32 @nk_glfw3_font_stash_begin(%struct.nk_font_atlas**) #1

declare dso_local i32 @nk_glfw3_font_stash_end(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32*, i32) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @sample_input(i32*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @nk_rect(float, float, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @nk_glfw3_new_frame(...) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local %struct.nk_command_buffer* @nk_window_get_canvas(%struct.nk_context*) #1

declare dso_local i32 @draw_marker(%struct.nk_command_buffer*, i32, i32) #1

declare dso_local i32 @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_layout_row_begin(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_push(%struct.nk_context*, i32) #1

declare dso_local i32 @nk_layout_space_to_screen(%struct.nk_context*, i32) #1

declare dso_local i32 @nk_labelf(%struct.nk_context*, i32, i8*, i32, i32) #1

declare dso_local i32 @nk_layout_row_end(%struct.nk_context*) #1

declare dso_local i32 @nk_checkbox_label(%struct.nk_context*, i8*, i32*) #1

declare dso_local i64 @nk_option_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_value_float(%struct.nk_context*, i8*, float) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i32 @nk_glfw3_render(i32) #1

declare dso_local i32 @swap_buffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
