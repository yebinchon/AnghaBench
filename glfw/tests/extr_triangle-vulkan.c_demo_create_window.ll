; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_create_window.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { i32, i32, i32 }

@GLFW_CLIENT_API = common dso_local global i32 0, align 4
@GLFW_NO_API = common dso_local global i32 0, align 4
@APP_LONG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot create a window in which to draw!\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@demo_refresh_callback = common dso_local global i32 0, align 4
@demo_resize_callback = common dso_local global i32 0, align 4
@demo_key_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demo*)* @demo_create_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_create_window(%struct.demo* %0) #0 {
  %2 = alloca %struct.demo*, align 8
  store %struct.demo* %0, %struct.demo** %2, align 8
  %3 = load i32, i32* @GLFW_CLIENT_API, align 4
  %4 = load i32, i32* @GLFW_NO_API, align 4
  %5 = call i32 @glfwWindowHint(i32 %3, i32 %4)
  %6 = load %struct.demo*, %struct.demo** %2, align 8
  %7 = getelementptr inbounds %struct.demo, %struct.demo* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.demo*, %struct.demo** %2, align 8
  %10 = getelementptr inbounds %struct.demo, %struct.demo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @APP_LONG_NAME, align 4
  %13 = call i32 @glfwCreateWindow(i32 %8, i32 %11, i32 %12, i32* null, i32* null)
  %14 = load %struct.demo*, %struct.demo** %2, align 8
  %15 = getelementptr inbounds %struct.demo, %struct.demo* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.demo*, %struct.demo** %2, align 8
  %17 = getelementptr inbounds %struct.demo, %struct.demo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fflush(i32 %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %1
  %26 = load %struct.demo*, %struct.demo** %2, align 8
  %27 = getelementptr inbounds %struct.demo, %struct.demo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.demo*, %struct.demo** %2, align 8
  %30 = call i32 @glfwSetWindowUserPointer(i32 %28, %struct.demo* %29)
  %31 = load %struct.demo*, %struct.demo** %2, align 8
  %32 = getelementptr inbounds %struct.demo, %struct.demo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @demo_refresh_callback, align 4
  %35 = call i32 @glfwSetWindowRefreshCallback(i32 %33, i32 %34)
  %36 = load %struct.demo*, %struct.demo** %2, align 8
  %37 = getelementptr inbounds %struct.demo, %struct.demo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @demo_resize_callback, align 4
  %40 = call i32 @glfwSetFramebufferSizeCallback(i32 %38, i32 %39)
  %41 = load %struct.demo*, %struct.demo** %2, align 8
  %42 = getelementptr inbounds %struct.demo, %struct.demo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @demo_key_callback, align 4
  %45 = call i32 @glfwSetKeyCallback(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32 @glfwCreateWindow(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetWindowUserPointer(i32, %struct.demo*) #1

declare dso_local i32 @glfwSetWindowRefreshCallback(i32, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
