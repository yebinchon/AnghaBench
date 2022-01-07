; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_wave.c_main.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_wave.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Wave Simulation\00", align 1
@key_callback = common dso_local global i32 0, align 4
@mouse_button_callback = common dso_local global i32 0, align 4
@cursor_position_callback = common dso_local global i32 0, align 4
@scroll_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@MAX_DELTA_T = common dso_local global double 0.000000e+00, align 8
@dt = common dso_local global double 0.000000e+00, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @error_callback, align 4
  %13 = call i32 @glfwSetErrorCallback(i32 %12)
  %14 = call i32 (...) @glfwInit()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %2
  %20 = call i32* @glfwCreateWindow(i32 640, i32 480, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i32 (...) @glfwTerminate()
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @key_callback, align 4
  %30 = call i32 @glfwSetKeyCallback(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @glfwSetFramebufferSizeCallback(i32* %31, i32 (i32*, i32, i32)* @framebuffer_size_callback)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @mouse_button_callback, align 4
  %35 = call i32 @glfwSetMouseButtonCallback(i32* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @cursor_position_callback, align 4
  %38 = call i32 @glfwSetCursorPosCallback(i32* %36, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @scroll_callback, align 4
  %41 = call i32 @glfwSetScrollCallback(i32* %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @glfwMakeContextCurrent(i32* %42)
  %44 = load i32, i32* @glfwGetProcAddress, align 4
  %45 = call i32 @gladLoadGL(i32 %44)
  %46 = call i32 @glfwSwapInterval(i32 1)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @glfwGetFramebufferSize(i32* %47, i32* %10, i32* %11)
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @framebuffer_size_callback(i32* %49, i32 %50, i32 %51)
  %53 = call i32 (...) @init_opengl()
  %54 = call i32 (...) @init_vertices()
  %55 = call i32 (...) @init_grid()
  %56 = call i32 (...) @adjust_grid()
  %57 = call double (...) @glfwGetTime()
  %58 = fsub double %57, 1.000000e-02
  store double %58, double* %9, align 8
  br label %59

59:                                               ; preds = %87, %27
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @glfwWindowShouldClose(i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = call double (...) @glfwGetTime()
  store double %65, double* %7, align 8
  %66 = load double, double* %7, align 8
  %67 = load double, double* %9, align 8
  %68 = fsub double %66, %67
  store double %68, double* %8, align 8
  %69 = load double, double* %7, align 8
  store double %69, double* %9, align 8
  br label %70

70:                                               ; preds = %81, %64
  %71 = load double, double* %8, align 8
  %72 = fcmp ogt double %71, 0.000000e+00
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load double, double* %8, align 8
  %75 = load double, double* @MAX_DELTA_T, align 8
  %76 = fcmp ogt double %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load double, double* @MAX_DELTA_T, align 8
  br label %81

79:                                               ; preds = %73
  %80 = load double, double* %8, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi double [ %78, %77 ], [ %80, %79 ]
  store double %82, double* @dt, align 8
  %83 = load double, double* @dt, align 8
  %84 = load double, double* %8, align 8
  %85 = fsub double %84, %83
  store double %85, double* %8, align 8
  %86 = call i32 (...) @calc_grid()
  br label %70

87:                                               ; preds = %70
  %88 = call i32 (...) @adjust_grid()
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @draw_scene(i32* %89)
  %91 = call i32 (...) @glfwPollEvents()
  br label %59

92:                                               ; preds = %59
  %93 = call i32 (...) @glfwTerminate()
  %94 = load i32, i32* @EXIT_SUCCESS, align 4
  %95 = call i32 @exit(i32 %94) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32 (i32*, i32, i32)*) #1

declare dso_local i32 @framebuffer_size_callback(i32*, i32, i32) #1

declare dso_local i32 @glfwSetMouseButtonCallback(i32*, i32) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32*, i32) #1

declare dso_local i32 @glfwSetScrollCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @init_opengl(...) #1

declare dso_local i32 @init_vertices(...) #1

declare dso_local i32 @init_grid(...) #1

declare dso_local i32 @adjust_grid(...) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @calc_grid(...) #1

declare dso_local i32 @draw_scene(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
