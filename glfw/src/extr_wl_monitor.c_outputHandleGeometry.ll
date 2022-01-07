; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_monitor.c_outputHandleGeometry.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_monitor.c_outputHandleGeometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct._GLFWmonitor = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @outputHandleGeometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outputHandleGeometry(i8* %0, %struct.wl_output* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wl_output*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct._GLFWmonitor*, align 8
  %22 = alloca [1024 x i8], align 16
  store i8* %0, i8** %11, align 8
  store %struct.wl_output* %1, %struct.wl_output** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = bitcast i8* %23 to %struct._GLFWmonitor*
  store %struct._GLFWmonitor* %24, %struct._GLFWmonitor** %21, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %27 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %31 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %35 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %38 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %40 = load i8*, i8** %18, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = call i32 @snprintf(i8* %39, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %44 = call i32 @_glfw_strdup(i8* %43)
  %45 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %46 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @_glfw_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
