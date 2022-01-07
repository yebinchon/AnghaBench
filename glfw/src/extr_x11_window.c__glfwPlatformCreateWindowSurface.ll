; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformCreateWindowSurface.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformCreateWindowSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32* }

@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"X11: Failed to retrieve XCB connection\00", align 1
@VK_ERROR_EXTENSION_NOT_PRESENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"vkCreateXcbSurfaceKHR\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"X11: Vulkan instance missing VK_KHR_xcb_surface extension\00", align 1
@VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"X11: Failed to create Vulkan XCB surface: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"vkCreateXlibSurfaceKHR\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"X11: Vulkan instance missing VK_KHR_xlib_surface extension\00", align 1
@VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"X11: Failed to create Vulkan X11 surface: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_glfwPlatformCreateWindowSurface(i32 %0, %struct.TYPE_18__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 1, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %24 = call i32* @XGetXCBConnection(i32 %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %29 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %30, i64* %5, align 8
  br label %101

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @vkGetInstanceProcAddr(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = inttoptr i64 %33 to i64 (i32, %struct.TYPE_19__*, i32*, i32*)*
  store i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %34, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %12, align 8
  %35 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %12, align 8
  %36 = icmp ne i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %39 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %40, i64* %5, align 8
  br label %101

41:                                               ; preds = %31
  %42 = call i32 @memset(%struct.TYPE_19__* %11, i32 0, i32 24)
  %43 = load i32, i32* @VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR, align 4
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32* %45, i32** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %12, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 %52(i32 %53, %struct.TYPE_19__* %11, i32* %54, i32* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @_glfwGetVulkanResultString(i64 %61)
  %63 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %41
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %5, align 8
  br label %101

66:                                               ; preds = %19, %4
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @vkGetInstanceProcAddr(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %69 = inttoptr i64 %68 to i64 (i32, %struct.TYPE_19__*, i32*, i32*)*
  store i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %69, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %16, align 8
  %70 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %16, align 8
  %71 = icmp ne i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %74 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %75, i64* %5, align 8
  br label %101

76:                                               ; preds = %66
  %77 = call i32 @memset(%struct.TYPE_19__* %15, i32 0, i32 24)
  %78 = load i32, i32* @VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR, align 4
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %16, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 %87(i32 %88, %struct.TYPE_19__* %15, i32* %89, i32* %90)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @_glfwGetVulkanResultString(i64 %96)
  %98 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %76
  %100 = load i64, i64* %14, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %72, %64, %37, %27
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i32* @XGetXCBConnection(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i64 @vkGetInstanceProcAddr(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @_glfwGetVulkanResultString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
