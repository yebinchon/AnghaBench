; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_splitview.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_splitview.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize GLFW\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_SAMPLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Split view demo\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to open GLFW window\0A\00", align 1
@cursorPosFun = common dso_local global i32 0, align 4
@mouseButtonFun = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@GLAD_GL_ARB_multisample = common dso_local global i64 0, align 8
@GLAD_GL_VERSION_1_3 = common dso_local global i64 0, align 8
@GL_MULTISAMPLE_ARB = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@do_redraw = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @glfwInit()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @exit(i32 %8) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* @GLFW_SAMPLES, align 4
  %12 = call i32 @glfwWindowHint(i32 %11, i32 4)
  %13 = call i32* @glfwCreateWindow(i32 500, i32 500, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (...) @glfwTerminate()
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @exit(i32 %20) #3
  unreachable

22:                                               ; preds = %10
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @glfwSetFramebufferSizeCallback(i32* %23, i32 (i32*, i32, i32)* @framebufferSizeFun)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @glfwSetWindowRefreshCallback(i32* %25, i32 (i32*)* @windowRefreshFun)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @cursorPosFun, align 4
  %29 = call i32 @glfwSetCursorPosCallback(i32* %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @mouseButtonFun, align 4
  %32 = call i32 @glfwSetMouseButtonCallback(i32* %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @key_callback, align 4
  %35 = call i32 @glfwSetKeyCallback(i32* %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @glfwMakeContextCurrent(i32* %36)
  %38 = load i32, i32* @glfwGetProcAddress, align 4
  %39 = call i32 @gladLoadGL(i32 %38)
  %40 = call i32 @glfwSwapInterval(i32 1)
  %41 = load i64, i64* @GLAD_GL_ARB_multisample, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %22
  %44 = load i64, i64* @GLAD_GL_VERSION_1_3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %22
  %47 = load i32, i32* @GL_MULTISAMPLE_ARB, align 4
  %48 = call i32 @glEnable(i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @glfwGetFramebufferSize(i32* %50, i32* @width, i32* @height)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @width, align 4
  %54 = load i32, i32* @height, align 4
  %55 = call i32 @framebufferSizeFun(i32* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %68, %49
  %57 = load i64, i64* @do_redraw, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @windowRefreshFun(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @glfwWaitEvents()
  %64 = load i32*, i32** %2, align 8
  %65 = call i64 @glfwWindowShouldClose(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62
  br label %56

69:                                               ; preds = %67
  %70 = call i32 (...) @glfwTerminate()
  %71 = load i32, i32* @EXIT_SUCCESS, align 4
  %72 = call i32 @exit(i32 %71) #3
  unreachable
}

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32 (i32*, i32, i32)*) #1

declare dso_local i32 @framebufferSizeFun(i32*, i32, i32) #1

declare dso_local i32 @glfwSetWindowRefreshCallback(i32*, i32 (i32*)*) #1

declare dso_local i32 @windowRefreshFun(i32*) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32*, i32) #1

declare dso_local i32 @glfwSetMouseButtonCallback(i32*, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
