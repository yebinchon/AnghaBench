; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_events.c_monitor_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_events.c_monitor_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GLFW_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%08x at %0.3f: Monitor %s (%ix%i at %ix%i, %ix%i mm) was connected\0A\00", align 1
@counter = common dso_local global i32 0, align 4
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%08x at %0.3f: Monitor %s was disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @monitor_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_callback(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GLFW_CONNECTED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @glfwGetMonitorPos(i32* %16, i32* %5, i32* %6)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @glfwGetMonitorPhysicalSize(i32* %18, i32* %7, i32* %8)
  %20 = load i32, i32* @counter, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @counter, align 4
  %22 = call double (...) @glfwGetTime()
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @glfwGetMonitorName(i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, i32, double, i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %20, double %22, i8* %24, i32 %27, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  br label %48

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @counter, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @counter, align 4
  %43 = call double (...) @glfwGetTime()
  %44 = load i32*, i32** %3, align 8
  %45 = call i8* @glfwGetMonitorName(i32* %44)
  %46 = call i32 (i8*, i32, double, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %41, double %43, i8* %45)
  br label %47

47:                                               ; preds = %40, %36
  br label %48

48:                                               ; preds = %47, %13
  ret void
}

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwGetMonitorPos(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetMonitorPhysicalSize(i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, double, i8*, ...) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
