; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_vulkan.c__glfwInitVulkan.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_vulkan.c__glfwInitVulkan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i8* }
%struct.TYPE_8__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"libvulkan.so.1\00", align 1
@_GLFW_REQUIRE_LOADER = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Vulkan: Loader not found\00", align 1
@GLFW_FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"vkGetInstanceProcAddr\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Vulkan: Loader does not export vkGetInstanceProcAddr\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"vkEnumerateInstanceExtensionProperties\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Vulkan: Failed to retrieve vkEnumerateInstanceExtensionProperties\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Vulkan: Failed to query instance extension count: %s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Vulkan: Failed to query instance extensions: %s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"VK_KHR_surface\00", align 1
@_GLFW_VULKAN_LIBRARY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwInitVulkan(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %11, i8** %2, align 8
  br label %102

12:                                               ; preds = %1
  %13 = call i8* @_glfw_dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 10), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 10), align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @_GLFW_REQUIRE_LOADER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %22 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %24, i8** %2, align 8
  br label %102

25:                                               ; preds = %12
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 10), align 8
  %27 = call i64 @_glfw_dlsym(i8* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 9), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 9), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %32 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 (...) @_glfwTerminateVulkan()
  %34 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %34, i8** %2, align 8
  br label %102

35:                                               ; preds = %25
  %36 = call i64 @vkGetInstanceProcAddr(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 8), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 8), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %41 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %40, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %42 = call i32 (...) @_glfwTerminateVulkan()
  %43 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %43, i8** %2, align 8
  br label %102

44:                                               ; preds = %35
  %45 = call i64 @vkEnumerateInstanceExtensionProperties(i32* null, i64* %7, %struct.TYPE_8__* null)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @_GLFW_REQUIRE_LOADER, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @_glfwGetVulkanResultString(i64 %54)
  %56 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = call i32 (...) @_glfwTerminateVulkan()
  %59 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %59, i8** %2, align 8
  br label %102

60:                                               ; preds = %44
  %61 = load i64, i64* %7, align 8
  %62 = call %struct.TYPE_8__* @calloc(i64 %61, i32 4)
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %5, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = call i64 @vkEnumerateInstanceExtensionProperties(i32* null, i64* %7, %struct.TYPE_8__* %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @_glfwGetVulkanResultString(i64 %69)
  %71 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = call i32 @free(%struct.TYPE_8__* %72)
  %74 = call i32 (...) @_glfwTerminateVulkan()
  %75 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %75, i8** %2, align 8
  br label %102

76:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @strcmp(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 7), align 8
  br label %91

91:                                               ; preds = %89, %81
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %77

95:                                               ; preds = %77
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = call i32 @free(%struct.TYPE_8__* %96)
  %98 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %100 = call i32 @_glfwPlatformGetRequiredInstanceExtensions(i32 %99)
  %101 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %101, i8** %2, align 8
  br label %102

102:                                              ; preds = %95, %67, %57, %39, %30, %23, %10
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

declare dso_local i8* @_glfw_dlopen(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i64 @_glfw_dlsym(i8*, i8*) #1

declare dso_local i32 @_glfwTerminateVulkan(...) #1

declare dso_local i64 @vkGetInstanceProcAddr(i32*, i8*) #1

declare dso_local i64 @vkEnumerateInstanceExtensionProperties(i32*, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @_glfwGetVulkanResultString(i64) #1

declare dso_local %struct.TYPE_8__* @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @_glfwPlatformGetRequiredInstanceExtensions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
