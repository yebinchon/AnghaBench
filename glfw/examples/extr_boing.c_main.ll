; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_boing.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_boing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Boing (classic Amiga demo)\00", align 1
@key_callback = common dso_local global i32 0, align 4
@mouse_button_callback = common dso_local global i32 0, align 4
@cursor_position_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@t = common dso_local global i64 0, align 8
@t_old = common dso_local global i64 0, align 8
@dt = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @glfwInit()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @EXIT_FAILURE, align 4
  %7 = call i32 @exit(i32 %6) #3
  unreachable

8:                                                ; preds = %0
  %9 = call i32* @glfwCreateWindow(i32 400, i32 400, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 (...) @glfwTerminate()
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @exit(i32 %14) #3
  unreachable

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @glfwSetWindowAspectRatio(i32* %17, i32 1, i32 1)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @glfwSetFramebufferSizeCallback(i32* %19, i32 (i32*, i32, i32)* @reshape)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @key_callback, align 4
  %23 = call i32 @glfwSetKeyCallback(i32* %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @mouse_button_callback, align 4
  %26 = call i32 @glfwSetMouseButtonCallback(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @cursor_position_callback, align 4
  %29 = call i32 @glfwSetCursorPosCallback(i32* %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @glfwMakeContextCurrent(i32* %30)
  %32 = load i32, i32* @glfwGetProcAddress, align 4
  %33 = call i32 @gladLoadGL(i32 %32)
  %34 = call i32 @glfwSwapInterval(i32 1)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @glfwGetFramebufferSize(i32* %35, i32* @width, i32* @height)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @width, align 4
  %39 = load i32, i32* @height, align 4
  %40 = call i32 @reshape(i32* %37, i32 %38, i32 %39)
  %41 = call i32 @glfwSetTime(double 0.000000e+00)
  %42 = call i32 (...) @init()
  br label %43

43:                                               ; preds = %57, %16
  %44 = call i64 (...) @glfwGetTime()
  store i64 %44, i64* @t, align 8
  %45 = load i64, i64* @t, align 8
  %46 = load i64, i64* @t_old, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* @dt, align 8
  %48 = load i64, i64* @t, align 8
  store i64 %48, i64* @t_old, align 8
  %49 = call i32 (...) @display()
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @glfwSwapBuffers(i32* %50)
  %52 = call i32 (...) @glfwPollEvents()
  %53 = load i32*, i32** %2, align 8
  %54 = call i64 @glfwWindowShouldClose(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %58

57:                                               ; preds = %43
  br label %43

58:                                               ; preds = %56
  %59 = call i32 (...) @glfwTerminate()
  %60 = load i32, i32* @EXIT_SUCCESS, align 4
  %61 = call i32 @exit(i32 %60) #3
  unreachable
}

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetWindowAspectRatio(i32*, i32, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32 (i32*, i32, i32)*) #1

declare dso_local i32 @reshape(i32*, i32, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetMouseButtonCallback(i32*, i32) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwSetTime(double) #1

declare dso_local i32 @init(...) #1

declare dso_local i64 @glfwGetTime(...) #1

declare dso_local i32 @display(...) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
