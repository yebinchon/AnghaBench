; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformGetPhysicalDevicePresentationSupport.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformGetPhysicalDevicePresentationSupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@_glfw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"vkGetPhysicalDeviceXcbPresentationSupportKHR\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"X11: Vulkan instance missing VK_KHR_xcb_surface extension\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"X11: Failed to retrieve XCB connection\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"vkGetPhysicalDeviceXlibPresentationSupportKHR\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"X11: Vulkan instance missing VK_KHR_xlib_surface extension\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformGetPhysicalDevicePresentationSupport(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i32, i32*, i32)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i32, i32, i32, i32)*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 2), align 8
  %14 = call i32 @DefaultVisual(i32 %12, i32 %13)
  %15 = call i32 @XVisualIDFromVisual(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @vkGetInstanceProcAddr(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32 (i32, i32, i32*, i32)*
  store i32 (i32, i32, i32*, i32)* %25, i32 (i32, i32, i32*, i32)** %9, align 8
  %26 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %9, align 8
  %27 = icmp ne i32 (i32, i32, i32*, i32)* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %30 = call i32 @_glfwInputError(i32 %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %66

32:                                               ; preds = %21
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 8
  %34 = call i32* @XGetXCBConnection(i32 %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %39 = call i32 @_glfwInputError(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %66

41:                                               ; preds = %32
  %42 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %42(i32 %43, i32 %44, i32* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %66

48:                                               ; preds = %18, %3
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @vkGetInstanceProcAddr(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32 (i32, i32, i32, i32)*
  store i32 (i32, i32, i32, i32)* %52, i32 (i32, i32, i32, i32)** %11, align 8
  %53 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %11, align 8
  %54 = icmp ne i32 (i32, i32, i32, i32)* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %57 = call i32 @_glfwInputError(i32 %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %48
  %60 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %11, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 %60(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %55, %41, %37, %28
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @XVisualIDFromVisual(i32) #1

declare dso_local i32 @DefaultVisual(i32, i32) #1

declare dso_local i32 @vkGetInstanceProcAddr(i32, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32* @XGetXCBConnection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
