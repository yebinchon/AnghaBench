; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_opacity.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_opacity.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.nk_font_atlas = type { i32 }
%struct.nk_rect = type { i32 }

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_SCALE_TO_MONITOR = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_WIN32_KEYBOARD_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@glfwGetProcAddress = common dso_local global i32 0, align 4
@NK_GLFW3_INSTALL_CALLBACKS = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NK_TEXT_LEFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%0.3f\00", align 1
@NK_ANTI_ALIASING_ON = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nk_context*, align 8
  %8 = alloca %struct.nk_font_atlas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nk_rect, align 4
  %12 = alloca %struct.nk_rect, align 4
  %13 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @error_callback, align 4
  %15 = call i32 @glfwSetErrorCallback(i32 %14)
  %16 = call i32 (...) @glfwInit()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #4
  unreachable

21:                                               ; preds = %2
  %22 = load i32, i32* @GLFW_SCALE_TO_MONITOR, align 4
  %23 = load i32, i32* @GLFW_TRUE, align 4
  %24 = call i32 @glfwWindowHint(i32 %22, i32 %23)
  %25 = load i32, i32* @GLFW_WIN32_KEYBOARD_MENU, align 4
  %26 = load i32, i32* @GLFW_TRUE, align 4
  %27 = call i32 @glfwWindowHint(i32 %25, i32 %26)
  %28 = call i32* @glfwCreateWindow(i32 400, i32 400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = call i32 (...) @glfwTerminate()
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = call i32 @exit(i32 %33) #4
  unreachable

35:                                               ; preds = %21
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @glfwMakeContextCurrent(i32* %36)
  %38 = load i32, i32* @glfwGetProcAddress, align 4
  %39 = call i32 @gladLoadGL(i32 %38)
  %40 = call i32 @glfwSwapInterval(i32 1)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @NK_GLFW3_INSTALL_CALLBACKS, align 4
  %43 = call %struct.nk_context* @nk_glfw3_init(i32* %41, i32 %42)
  store %struct.nk_context* %43, %struct.nk_context** %7, align 8
  %44 = call i32 @nk_glfw3_font_stash_begin(%struct.nk_font_atlas** %8)
  %45 = call i32 (...) @nk_glfw3_font_stash_end()
  br label %46

46:                                               ; preds = %87, %35
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @glfwWindowShouldClose(i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %95

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @glfwGetWindowSize(i32* %52, i32* %9, i32* %10)
  %54 = load i32, i32* %9, align 4
  %55 = sitofp i32 %54 to float
  %56 = load i32, i32* %10, align 4
  %57 = sitofp i32 %56 to float
  %58 = call i32 @nk_rect(float 0.000000e+00, float 0.000000e+00, float %55, float %57)
  %59 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = bitcast %struct.nk_rect* %11 to i8*
  %61 = bitcast %struct.nk_rect* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %63 = call i32 @glClear(i32 %62)
  %64 = call i32 (...) @nk_glfw3_new_frame()
  %65 = load %struct.nk_context*, %struct.nk_context** %7, align 8
  %66 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @nk_begin(%struct.nk_context* %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %51
  %71 = load i32*, i32** %6, align 8
  %72 = call float @glfwGetWindowOpacity(i32* %71)
  store float %72, float* %13, align 4
  %73 = load %struct.nk_context*, %struct.nk_context** %7, align 8
  %74 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %73, i32 30, i32 2)
  %75 = load %struct.nk_context*, %struct.nk_context** %7, align 8
  %76 = call i64 @nk_slider_float(%struct.nk_context* %75, float 0.000000e+00, float* %13, float 1.000000e+00, float 0x3F50624DE0000000)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32*, i32** %6, align 8
  %80 = load float, float* %13, align 4
  %81 = call i32 @glfwSetWindowOpacity(i32* %79, float %80)
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.nk_context*, %struct.nk_context** %7, align 8
  %84 = load i32, i32* @NK_TEXT_LEFT, align 4
  %85 = load float, float* %13, align 4
  %86 = call i32 @nk_labelf(%struct.nk_context* %83, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), float %85)
  br label %87

87:                                               ; preds = %82, %51
  %88 = load %struct.nk_context*, %struct.nk_context** %7, align 8
  %89 = call i32 @nk_end(%struct.nk_context* %88)
  %90 = load i32, i32* @NK_ANTI_ALIASING_ON, align 4
  %91 = call i32 @nk_glfw3_render(i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @glfwSwapBuffers(i32* %92)
  %94 = call i32 @glfwWaitEventsTimeout(double 1.000000e+00)
  br label %46

95:                                               ; preds = %46
  %96 = call i32 (...) @nk_glfw3_shutdown()
  %97 = call i32 (...) @glfwTerminate()
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  %99 = call i32 @exit(i32 %98) #4
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local %struct.nk_context* @nk_glfw3_init(i32*, i32) #1

declare dso_local i32 @nk_glfw3_font_stash_begin(%struct.nk_font_atlas**) #1

declare dso_local i32 @nk_glfw3_font_stash_end(...) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @nk_rect(float, float, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @nk_glfw3_new_frame(...) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local float @glfwGetWindowOpacity(i32*) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @nk_slider_float(%struct.nk_context*, float, float*, float, float) #1

declare dso_local i32 @glfwSetWindowOpacity(i32*, float) #1

declare dso_local i32 @nk_labelf(%struct.nk_context*, i32, i8*, float) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i32 @nk_glfw3_render(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEventsTimeout(double) #1

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
