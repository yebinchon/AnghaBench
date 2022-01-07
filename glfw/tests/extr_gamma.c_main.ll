; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_gamma.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_gamma.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }
%struct.nk_context = type { i32 }
%struct.nk_font_atlas = type { i32 }
%struct.nk_rect = type { i32 }

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_SCALE_TO_MONITOR = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_WIN32_KEYBOARD_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Gamma Test\00", align 1
@glfwGetProcAddress = common dso_local global i32 0, align 4
@NK_GLFW3_INSTALL_CALLBACKS = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@NK_TEXT_LEFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%0.1f\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Revert\00", align 1
@NK_ANTI_ALIASING_ON = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.nk_context*, align 8
  %10 = alloca %struct.nk_font_atlas*, align 8
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nk_rect, align 4
  %17 = alloca %struct.nk_rect, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store float 1.000000e+00, float* %11, align 4
  %19 = load i32, i32* @error_callback, align 4
  %20 = call i32 @glfwSetErrorCallback(i32 %19)
  %21 = call i32 (...) @glfwInit()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  %25 = call i32 @exit(i32 %24) #4
  unreachable

26:                                               ; preds = %2
  %27 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* @GLFW_SCALE_TO_MONITOR, align 4
  %29 = load i32, i32* @GLFW_TRUE, align 4
  %30 = call i32 @glfwWindowHint(i32 %28, i32 %29)
  %31 = load i32, i32* @GLFW_WIN32_KEYBOARD_MENU, align 4
  %32 = load i32, i32* @GLFW_TRUE, align 4
  %33 = call i32 @glfwWindowHint(i32 %31, i32 %32)
  %34 = call i32* @glfwCreateWindow(i32 800, i32 400, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = call i32 (...) @glfwTerminate()
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @exit(i32 %39) #4
  unreachable

41:                                               ; preds = %26
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.TYPE_4__* @glfwGetGammaRamp(i32* %42)
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %12, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 2
  store i64 %48, i64* %13, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i8* @malloc(i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i8* @malloc(i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i8* @malloc(i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @memcpy(i8* %63, i8* %66, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @memcpy(i8* %70, i8* %73, i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @memcpy(i8* %77, i8* %80, i64 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @glfwMakeContextCurrent(i32* %83)
  %85 = load i32, i32* @glfwGetProcAddress, align 4
  %86 = call i32 @gladLoadGL(i32 %85)
  %87 = call i32 @glfwSwapInterval(i32 1)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @NK_GLFW3_INSTALL_CALLBACKS, align 4
  %90 = call %struct.nk_context* @nk_glfw3_init(i32* %88, i32 %89)
  store %struct.nk_context* %90, %struct.nk_context** %9, align 8
  %91 = call i32 @nk_glfw3_font_stash_begin(%struct.nk_font_atlas** %10)
  %92 = call i32 (...) @nk_glfw3_font_stash_end()
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @key_callback, align 4
  %95 = call i32 @glfwSetKeyCallback(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %181, %41
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @glfwWindowShouldClose(i32* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %189

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @glfwGetWindowSize(i32* %102, i32* %14, i32* %15)
  %104 = load i32, i32* %14, align 4
  %105 = sitofp i32 %104 to float
  %106 = load i32, i32* %15, align 4
  %107 = sitofp i32 %106 to float
  %108 = call i32 @nk_rect(float 0.000000e+00, float 0.000000e+00, float %105, float %107)
  %109 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %17, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = bitcast %struct.nk_rect* %16 to i8*
  %111 = bitcast %struct.nk_rect* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %113 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nk_window_set_bounds(%struct.nk_context* %112, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %117 = call i32 @glClear(i32 %116)
  %118 = call i32 (...) @nk_glfw3_new_frame()
  %119 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %120 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %16, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @nk_begin(%struct.nk_context* %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 0)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %181

124:                                              ; preds = %101
  %125 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %126 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %125, i32 30, i32 3)
  %127 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %128 = call i64 @nk_slider_float(%struct.nk_context* %127, float 0x3FB99999A0000000, float* %11, float 5.000000e+00, float 0x3FB99999A0000000)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32*, i32** %6, align 8
  %132 = load float, float* %11, align 4
  %133 = call i32 @glfwSetGamma(i32* %131, float %132)
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %136 = load i32, i32* @NK_TEXT_LEFT, align 4
  %137 = load float, float* %11, align 4
  %138 = call i32 @nk_labelf(%struct.nk_context* %135, i32 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), float %137)
  %139 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %140 = call i64 @nk_button_label(%struct.nk_context* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @glfwSetGammaRamp(i32* %143, %struct.TYPE_4__* %8)
  br label %145

145:                                              ; preds = %142, %134
  %146 = load i32*, i32** %6, align 8
  %147 = call %struct.TYPE_4__* @glfwGetGammaRamp(i32* %146)
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %18, align 8
  %148 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sitofp i32 %149 to float
  %151 = fsub float %150, 6.000000e+01
  %152 = fptosi float %151 to i32
  %153 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %148, i32 %152, i32 3)
  %154 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %155 = call i32 @nk_rgb(i32 255, i32 0, i32 0)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @chart_ramp_array(%struct.nk_context* %154, i32 %155, i32 %158, i8* %161)
  %163 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %164 = call i32 @nk_rgb(i32 0, i32 255, i32 0)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @chart_ramp_array(%struct.nk_context* %163, i32 %164, i32 %167, i8* %170)
  %172 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %173 = call i32 @nk_rgb(i32 0, i32 0, i32 255)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @chart_ramp_array(%struct.nk_context* %172, i32 %173, i32 %176, i8* %179)
  br label %181

181:                                              ; preds = %145, %101
  %182 = load %struct.nk_context*, %struct.nk_context** %9, align 8
  %183 = call i32 @nk_end(%struct.nk_context* %182)
  %184 = load i32, i32* @NK_ANTI_ALIASING_ON, align 4
  %185 = call i32 @nk_glfw3_render(i32 %184)
  %186 = load i32*, i32** %7, align 8
  %187 = call i32 @glfwSwapBuffers(i32* %186)
  %188 = call i32 @glfwWaitEventsTimeout(double 1.000000e+00)
  br label %96

189:                                              ; preds = %96
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @free(i8* %191)
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @free(i8* %194)
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @free(i8* %197)
  %199 = call i32 (...) @nk_glfw3_shutdown()
  %200 = call i32 (...) @glfwTerminate()
  %201 = load i32, i32* @EXIT_SUCCESS, align 4
  %202 = call i32 @exit(i32 %201) #4
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local %struct.TYPE_4__* @glfwGetGammaRamp(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local %struct.nk_context* @nk_glfw3_init(i32*, i32) #1

declare dso_local i32 @nk_glfw3_font_stash_begin(%struct.nk_font_atlas**) #1

declare dso_local i32 @nk_glfw3_font_stash_end(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @nk_rect(float, float, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @nk_window_set_bounds(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @nk_glfw3_new_frame(...) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @nk_slider_float(%struct.nk_context*, float, float*, float, float) #1

declare dso_local i32 @glfwSetGamma(i32*, float) #1

declare dso_local i32 @nk_labelf(%struct.nk_context*, i32, i8*, float) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i32 @glfwSetGammaRamp(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @chart_ramp_array(%struct.nk_context*, i32, i32, i8*) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i32 @nk_glfw3_render(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEventsTimeout(double) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nk_glfw3_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
