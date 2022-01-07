; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformGetClipboardString.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformGetClipboardString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No clipboard data has been sent yet\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Wayland: Impossible to create clipboard pipe fds\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"text/plain;charset=utf-8\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Wayland: Impossible to read from clipboard fd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwPlatformGetClipboardString() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %9 = call i32 @_glfwInputError(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  br label %91

10:                                               ; preds = %0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = call i32 @pipe2(i32* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %18 = call i32 @_glfwInputError(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  br label %91

19:                                               ; preds = %10
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wl_data_offer_receive(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @close(i32 %25)
  %27 = call i32 @handleEvents(i32 -1)
  br label %28

28:                                               ; preds = %19, %58, %68
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 4096
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call i32 (...) @growClipboardString()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  store i8* null, i8** %1, align 8
  br label %91

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %28
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = call i32 @read(i32 %43, i8* %46, i32 4096)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %73

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %28

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %64 = call i32 @_glfwInputError(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  store i8* null, i8** %1, align 8
  br label %91

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %4, align 8
  br label %28

73:                                               ; preds = %50
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = call i32 (...) @growClipboardString()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i8* null, i8** %1, align 8
  br label %91

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i8* %90, i8** %1, align 8
  br label %91

91:                                               ; preds = %86, %84, %62, %36, %16, %7
  %92 = load i8*, i8** %1, align 8
  ret i8* %92
}

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @pipe2(i32*, i32) #1

declare dso_local i32 @wl_data_offer_receive(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @handleEvents(i32) #1

declare dso_local i32 @growClipboardString(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
