; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_title.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_title.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"English \E6\97\A5\E6\9C\AC\E8\AA\9E \D1\80\D1\83\D1\81\D1\81\D0\BA\D0\B8\D0\B9 \D1\8F\D0\B7\D1\8B\D0\BA \E5\AE\98\E8\A9\B1\00", align 1
@glfwGetProcAddress = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @error_callback, align 4
  %4 = call i32 @glfwSetErrorCallback(i32 %3)
  %5 = call i32 (...) @glfwInit()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @exit(i32 %8) #3
  unreachable

10:                                               ; preds = %0
  %11 = call i32* @glfwCreateWindow(i32 400, i32 400, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i32 (...) @glfwTerminate()
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %10
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @glfwMakeContextCurrent(i32* %19)
  %21 = load i32, i32* @glfwGetProcAddress, align 4
  %22 = call i32 @gladLoadGL(i32 %21)
  %23 = call i32 @glfwSwapInterval(i32 1)
  br label %24

24:                                               ; preds = %29, %18
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @glfwWindowShouldClose(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %31 = call i32 @glClear(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @glfwSwapBuffers(i32* %32)
  %34 = call i32 (...) @glfwWaitEvents()
  br label %24

35:                                               ; preds = %24
  %36 = call i32 (...) @glfwTerminate()
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
