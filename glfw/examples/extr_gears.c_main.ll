; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_gears.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_gears.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize GLFW\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_DEPTH_BITS = common dso_local global i32 0, align 4
@GLFW_TRANSPARENT_FRAMEBUFFER = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Gears\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to open GLFW window\0A\00", align 1
@key = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @glfwInit()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @exit(i32 %14) #3
  unreachable

16:                                               ; preds = %2
  %17 = load i32, i32* @GLFW_DEPTH_BITS, align 4
  %18 = call i32 @glfwWindowHint(i32 %17, i32 16)
  %19 = load i32, i32* @GLFW_TRANSPARENT_FRAMEBUFFER, align 4
  %20 = load i32, i32* @GLFW_TRUE, align 4
  %21 = call i32 @glfwWindowHint(i32 %19, i32 %20)
  %22 = call i32* @glfwCreateWindow(i32 300, i32 300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 (...) @glfwTerminate()
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %16
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @glfwSetFramebufferSizeCallback(i32* %32, i32 (i32*, i32, i32)* @reshape)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @key, align 4
  %36 = call i32 @glfwSetKeyCallback(i32* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @glfwMakeContextCurrent(i32* %37)
  %39 = load i32, i32* @glfwGetProcAddress, align 4
  %40 = call i32 @gladLoadGL(i32 %39)
  %41 = call i32 @glfwSwapInterval(i32 1)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @glfwGetFramebufferSize(i32* %42, i32* %7, i32* %8)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @reshape(i32* %44, i32 %45, i32 %46)
  %48 = call i32 (...) @init()
  br label %49

49:                                               ; preds = %54, %31
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @glfwWindowShouldClose(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = call i32 (...) @draw()
  %56 = call i32 (...) @animate()
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @glfwSwapBuffers(i32* %57)
  %59 = call i32 (...) @glfwPollEvents()
  br label %49

60:                                               ; preds = %49
  %61 = call i32 (...) @glfwTerminate()
  %62 = load i32, i32* @EXIT_SUCCESS, align 4
  %63 = call i32 @exit(i32 %62) #3
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

declare dso_local i32 @reshape(i32*, i32, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @init(...) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @draw(...) #1

declare dso_local i32 @animate(...) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
