; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_RESIZABLE = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MAJOR = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MINOR = common dso_local global i32 0, align 4
@GLFW_OPENGL_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_FORWARD_COMPAT = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GLFW OpenGL3 Heightmap demo\00", align 1
@key_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@vertex_shader_text = common dso_local global i32 0, align 4
@fragment_shader_text = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"project\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"modelview\00", align 1
@view_angle = common dso_local global float 0.000000e+00, align 4
@aspect_ratio = common dso_local global float 0.000000e+00, align 4
@projection_matrix = common dso_local global float* null, align 8
@z_far = common dso_local global float 0.000000e+00, align 4
@z_near = common dso_local global float 0.000000e+00, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@modelview_matrix = common dso_local global float* null, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_LINES = common dso_local global i32 0, align 4
@MAP_NUM_LINES = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@MAX_ITER = common dso_local global i32 0, align 4
@NUM_ITER_AT_A_TIME = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @error_callback, align 4
  %18 = call i32 @glfwSetErrorCallback(i32 %17)
  %19 = call i32 (...) @glfwInit()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #4
  unreachable

24:                                               ; preds = %2
  %25 = load i32, i32* @GLFW_RESIZABLE, align 4
  %26 = load i32, i32* @GLFW_FALSE, align 4
  %27 = call i32 @glfwWindowHint(i32 %25, i32 %26)
  %28 = load i32, i32* @GLFW_CONTEXT_VERSION_MAJOR, align 4
  %29 = call i32 @glfwWindowHint(i32 %28, i32 3)
  %30 = load i32, i32* @GLFW_CONTEXT_VERSION_MINOR, align 4
  %31 = call i32 @glfwWindowHint(i32 %30, i32 2)
  %32 = load i32, i32* @GLFW_OPENGL_PROFILE, align 4
  %33 = load i32, i32* @GLFW_OPENGL_CORE_PROFILE, align 4
  %34 = call i32 @glfwWindowHint(i32 %32, i32 %33)
  %35 = load i32, i32* @GLFW_OPENGL_FORWARD_COMPAT, align 4
  %36 = load i32, i32* @GLFW_TRUE, align 4
  %37 = call i32 @glfwWindowHint(i32 %35, i32 %36)
  %38 = call i32* @glfwCreateWindow(i32 800, i32 600, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %24
  %42 = call i32 (...) @glfwTerminate()
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #4
  unreachable

45:                                               ; preds = %24
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @key_callback, align 4
  %48 = call i32 @glfwSetKeyCallback(i32* %46, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @glfwMakeContextCurrent(i32* %49)
  %51 = load i32, i32* @glfwGetProcAddress, align 4
  %52 = call i32 @gladLoadGL(i32 %51)
  %53 = load i32, i32* @vertex_shader_text, align 4
  %54 = load i32, i32* @fragment_shader_text, align 4
  %55 = call i32 @make_shader_program(i32 %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = call i32 (...) @glfwTerminate()
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @exit(i32 %60) #4
  unreachable

62:                                               ; preds = %45
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @glUseProgram(i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @glGetUniformLocation(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @glGetUniformLocation(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %68, i32* %12, align 4
  %69 = load float, float* @view_angle, align 4
  %70 = fdiv float %69, 2.000000e+00
  %71 = call float @tanf(float %70) #5
  %72 = fdiv float 1.000000e+00, %71
  store float %72, float* %11, align 4
  %73 = load float, float* %11, align 4
  %74 = load float, float* @aspect_ratio, align 4
  %75 = fdiv float %73, %74
  %76 = load float*, float** @projection_matrix, align 8
  %77 = getelementptr inbounds float, float* %76, i64 0
  store float %75, float* %77, align 4
  %78 = load float, float* %11, align 4
  %79 = load float*, float** @projection_matrix, align 8
  %80 = getelementptr inbounds float, float* %79, i64 5
  store float %78, float* %80, align 4
  %81 = load float, float* @z_far, align 4
  %82 = load float, float* @z_near, align 4
  %83 = fadd float %81, %82
  %84 = load float, float* @z_near, align 4
  %85 = load float, float* @z_far, align 4
  %86 = fsub float %84, %85
  %87 = fdiv float %83, %86
  %88 = load float*, float** @projection_matrix, align 8
  %89 = getelementptr inbounds float, float* %88, i64 10
  store float %87, float* %89, align 4
  %90 = load float*, float** @projection_matrix, align 8
  %91 = getelementptr inbounds float, float* %90, i64 11
  store float -1.000000e+00, float* %91, align 4
  %92 = load float, float* @z_far, align 4
  %93 = load float, float* @z_near, align 4
  %94 = fmul float %92, %93
  %95 = fmul float 2.000000e+00, %94
  %96 = load float, float* @z_near, align 4
  %97 = load float, float* @z_far, align 4
  %98 = fsub float %96, %97
  %99 = fdiv float %95, %98
  %100 = load float*, float** @projection_matrix, align 8
  %101 = getelementptr inbounds float, float* %100, i64 14
  store float %99, float* %101, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @GL_FALSE, align 4
  %104 = load float*, float** @projection_matrix, align 8
  %105 = call i32 @glUniformMatrix4fv(i32 %102, i32 1, i32 %103, float* %104)
  %106 = load float*, float** @modelview_matrix, align 8
  %107 = getelementptr inbounds float, float* %106, i64 12
  store float -5.000000e+00, float* %107, align 4
  %108 = load float*, float** @modelview_matrix, align 8
  %109 = getelementptr inbounds float, float* %108, i64 13
  store float -5.000000e+00, float* %109, align 4
  %110 = load float*, float** @modelview_matrix, align 8
  %111 = getelementptr inbounds float, float* %110, i64 14
  store float -2.000000e+01, float* %111, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @GL_FALSE, align 4
  %114 = load float*, float** @modelview_matrix, align 8
  %115 = call i32 @glUniformMatrix4fv(i32 %112, i32 1, i32 %113, float* %114)
  %116 = call i32 (...) @init_map()
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @make_mesh(i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @glfwGetFramebufferSize(i32* %119, i32* %14, i32* %15)
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @glViewport(i32 0, i32 0, i32 %121, i32 %122)
  %124 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %125 = call double (...) @glfwGetTime()
  store double %125, double* %9, align 8
  br label %126

126:                                              ; preds = %164, %62
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @glfwWindowShouldClose(i32* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %131, label %165

131:                                              ; preds = %126
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %135 = call i32 @glClear(i32 %134)
  %136 = load i32, i32* @GL_LINES, align 4
  %137 = load i32, i32* @MAP_NUM_LINES, align 4
  %138 = mul nsw i32 2, %137
  %139 = load i32, i32* @GL_UNSIGNED_INT, align 4
  %140 = call i32 @glDrawElements(i32 %136, i32 %138, i32 %139, i32 0)
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @glfwSwapBuffers(i32* %141)
  %143 = call i32 (...) @glfwPollEvents()
  %144 = call double (...) @glfwGetTime()
  store double %144, double* %8, align 8
  %145 = load double, double* %8, align 8
  %146 = load double, double* %9, align 8
  %147 = fsub double %145, %146
  %148 = fcmp ogt double %147, 2.000000e-01
  br i1 %148, label %149, label %164

149:                                              ; preds = %131
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @MAX_ITER, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load i64, i64* @NUM_ITER_AT_A_TIME, align 8
  %155 = call i32 @update_map(i64 %154)
  %156 = call i32 (...) @update_mesh()
  %157 = load i64, i64* @NUM_ITER_AT_A_TIME, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %153, %149
  %163 = load double, double* %8, align 8
  store double %163, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %162, %131
  br label %126

165:                                              ; preds = %126
  %166 = call i32 (...) @glfwTerminate()
  %167 = load i32, i32* @EXIT_SUCCESS, align 4
  %168 = call i32 @exit(i32 %167) #4
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @make_shader_program(i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i8*) #1

; Function Attrs: nounwind
declare dso_local float @tanf(float) #3

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @init_map(...) #1

declare dso_local i32 @make_mesh(i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glDrawElements(i32, i32, i32, i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @update_map(i64) #1

declare dso_local i32 @update_mesh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
