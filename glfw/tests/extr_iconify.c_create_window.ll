; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_iconify.c_create_window.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_iconify.c_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Iconify\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @create_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_window(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glfwWindowHint(i32 %12, i32 %15)
  %17 = load i32, i32* @GLFW_RED_BITS, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @glfwWindowHint(i32 %17, i32 %20)
  %22 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @glfwWindowHint(i32 %22, i32 %25)
  %27 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @glfwWindowHint(i32 %27, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %1
  store i32 640, i32* %3, align 4
  store i32 480, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32* @glfwCreateWindow(i32 %40, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %42, i32* null)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = call i32 (...) @glfwTerminate()
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %39
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @glfwMakeContextCurrent(i32* %51)
  %53 = load i32, i32* @glfwGetProcAddress, align 4
  %54 = call i32 @gladLoadGL(i32 %53)
  %55 = load i32*, i32** %5, align 8
  ret i32* %55
}

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
