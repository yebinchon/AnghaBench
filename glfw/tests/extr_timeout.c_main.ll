; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_timeout.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_timeout.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Event Wait Timeout Test\00", align 1
@glfwGetProcAddress = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %9 = call i64 @time(i32* null)
  %10 = trunc i64 %9 to i32
  %11 = call i32 @srand(i32 %10)
  %12 = load i32, i32* @error_callback, align 4
  %13 = call i32 @glfwSetErrorCallback(i32 %12)
  %14 = call i32 (...) @glfwInit()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %0
  %20 = call i32* @glfwCreateWindow(i32 640, i32 480, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i32 (...) @glfwTerminate()
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %19
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @glfwMakeContextCurrent(i32* %28)
  %30 = load i32, i32* @glfwGetProcAddress, align 4
  %31 = call i32 @gladLoadGL(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @key_callback, align 4
  %34 = call i32 @glfwSetKeyCallback(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %40, %27
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @glfwWindowShouldClose(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = call float (...) @nrand()
  store float %41, float* %5, align 4
  %42 = call float (...) @nrand()
  store float %42, float* %6, align 4
  %43 = call float (...) @nrand()
  store float %43, float* %7, align 4
  %44 = load float, float* %5, align 4
  %45 = load float, float* %5, align 4
  %46 = fmul float %44, %45
  %47 = load float, float* %6, align 4
  %48 = load float, float* %6, align 4
  %49 = fmul float %47, %48
  %50 = fadd float %46, %49
  %51 = load float, float* %7, align 4
  %52 = load float, float* %7, align 4
  %53 = fmul float %51, %52
  %54 = fadd float %50, %53
  %55 = call i64 @sqrt(float %54)
  %56 = sitofp i64 %55 to float
  store float %56, float* %8, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @glfwGetFramebufferSize(i32* %57, i32* %3, i32* %4)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @glViewport(i32 0, i32 0, i32 %59, i32 %60)
  %62 = load float, float* %5, align 4
  %63 = load float, float* %8, align 4
  %64 = fdiv float %62, %63
  %65 = load float, float* %6, align 4
  %66 = load float, float* %8, align 4
  %67 = fdiv float %65, %66
  %68 = load float, float* %7, align 4
  %69 = load float, float* %8, align 4
  %70 = fdiv float %68, %69
  %71 = call i32 @glClearColor(float %64, float %67, float %70, float 1.000000e+00)
  %72 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %73 = call i32 @glClear(i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @glfwSwapBuffers(i32* %74)
  %76 = call i32 @glfwWaitEventsTimeout(double 1.000000e+00)
  br label %35

77:                                               ; preds = %35
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @glfwDestroyWindow(i32* %78)
  %80 = call i32 (...) @glfwTerminate()
  %81 = load i32, i32* @EXIT_SUCCESS, align 4
  %82 = call i32 @exit(i32 %81) #3
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

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local float @nrand(...) #1

declare dso_local i64 @sqrt(float) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEventsTimeout(double) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
