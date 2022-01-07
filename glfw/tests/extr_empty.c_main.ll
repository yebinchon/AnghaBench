; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_empty.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_empty.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Empty Event Test\00", align 1
@glfwGetProcAddress = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@thread_main = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create secondary thread\0A\00", align 1
@running = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %11 = call i64 @time(i32* null)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @srand(i32 %12)
  %14 = load i32, i32* @error_callback, align 4
  %15 = call i32 @glfwSetErrorCallback(i32 %14)
  %16 = call i32 (...) @glfwInit()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %0
  %22 = call i32* @glfwCreateWindow(i32 640, i32 480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 (...) @glfwTerminate()
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @glfwMakeContextCurrent(i32* %30)
  %32 = load i32, i32* @glfwGetProcAddress, align 4
  %33 = call i32 @gladLoadGL(i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @key_callback, align 4
  %36 = call i32 @glfwSetKeyCallback(i32* %34, i32 %35)
  %37 = load i32, i32* @thread_main, align 4
  %38 = call i64 @thrd_create(i32* %3, i32 %37, i32* null)
  %39 = load i64, i64* @thrd_success, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (...) @glfwTerminate()
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @exit(i32 %45) #3
  unreachable

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %93, %47
  %49 = load i64, i64* @running, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %48
  %52 = call float (...) @nrand()
  store float %52, float* %7, align 4
  %53 = call float (...) @nrand()
  store float %53, float* %8, align 4
  %54 = call float (...) @nrand()
  store float %54, float* %9, align 4
  %55 = load float, float* %7, align 4
  %56 = load float, float* %7, align 4
  %57 = fmul float %55, %56
  %58 = load float, float* %8, align 4
  %59 = load float, float* %8, align 4
  %60 = fmul float %58, %59
  %61 = fadd float %57, %60
  %62 = load float, float* %9, align 4
  %63 = load float, float* %9, align 4
  %64 = fmul float %62, %63
  %65 = fadd float %61, %64
  %66 = call i64 @sqrt(float %65)
  %67 = sitofp i64 %66 to float
  store float %67, float* %10, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @glfwGetFramebufferSize(i32* %68, i32* %5, i32* %6)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @glViewport(i32 0, i32 0, i32 %70, i32 %71)
  %73 = load float, float* %7, align 4
  %74 = load float, float* %10, align 4
  %75 = fdiv float %73, %74
  %76 = load float, float* %8, align 4
  %77 = load float, float* %10, align 4
  %78 = fdiv float %76, %77
  %79 = load float, float* %9, align 4
  %80 = load float, float* %10, align 4
  %81 = fdiv float %79, %80
  %82 = call i32 @glClearColor(float %75, float %78, float %81, float 1.000000e+00)
  %83 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %84 = call i32 @glClear(i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @glfwSwapBuffers(i32* %85)
  %87 = call i32 (...) @glfwWaitEvents()
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @glfwWindowShouldClose(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %51
  %92 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %92, i64* @running, align 8
  br label %93

93:                                               ; preds = %91, %51
  br label %48

94:                                               ; preds = %48
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @glfwHideWindow(i32* %95)
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @thrd_join(i32 %97, i32* %2)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @glfwDestroyWindow(i32* %99)
  %101 = call i32 (...) @glfwTerminate()
  %102 = load i32, i32* @EXIT_SUCCESS, align 4
  %103 = call i32 @exit(i32 %102) #3
  unreachable
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i64 @thrd_create(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local float @nrand(...) #1

declare dso_local i64 @sqrt(float) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwHideWindow(i32*) #1

declare dso_local i32 @thrd_join(i32, i32*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
