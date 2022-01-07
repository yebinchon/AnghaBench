; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_dataSourceHandleSend.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_dataSourceHandleSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64, %struct.wl_data_source* }
%struct.wl_data_source = type { i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Wayland: Unknown clipboard data source\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Wayland: Copy requested from an invalid string\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"text/plain;charset=utf-8\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Wayland: Wrong MIME type asked from clipboard\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Wayland: Error while writing the clipboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_data_source*, i8*, i32)* @dataSourceHandleSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dataSourceHandleSend(i8* %0, %struct.wl_data_source* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wl_data_source*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.wl_data_source* %1, %struct.wl_data_source** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i8* %12, i8** %9, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.wl_data_source*, %struct.wl_data_source** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %15 = load %struct.wl_data_source*, %struct.wl_data_source** %6, align 8
  %16 = icmp ne %struct.wl_data_source* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %19 = call i32 @_glfwInputError(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %67

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %25 = call i32 @_glfwInputError(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %67

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %32 = call i32 @_glfwInputError(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @close(i32 %33)
  br label %67

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %59, %50, %35
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @write(i32 %40, i8* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EINTR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %36

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %56 = call i32 @_glfwInputError(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @close(i32 %57)
  br label %67

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %10, align 8
  br label %36

64:                                               ; preds = %36
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64, %54, %30, %23, %17
  ret void
}

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
