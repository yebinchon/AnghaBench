; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_vulkan.c_glfwCreateWindowSurface.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_vulkan.c_glfwCreateWindowSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@VK_ERROR_INITIALIZATION_FAILED = common dso_local global i32 0, align 4
@_GLFW_REQUIRE_LOADER = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Vulkan: Window surface creation extensions not found\00", align 1
@VK_ERROR_EXTENSION_NOT_PRESENT = common dso_local global i32 0, align 4
@GLFW_NO_API = common dso_local global i64 0, align 8
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"Vulkan: Window surface creation requires the window to have the client API set to GLFW_NO_API\00", align 1
@VK_ERROR_NATIVE_WINDOW_IN_USE_KHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwCreateWindowSurface(i64 %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @VK_NULL_HANDLE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64*, i64** %9, align 8
  %23 = icmp ne i64* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* @VK_NULL_HANDLE, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @VK_ERROR_INITIALIZATION_FAILED, align 4
  %29 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %28)
  %30 = load i32, i32* @_GLFW_REQUIRE_LOADER, align 4
  %31 = call i32 @_glfwInitVulkan(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @VK_ERROR_INITIALIZATION_FAILED, align 4
  store i32 %34, i32* %5, align 4
  br label %61

35:                                               ; preds = %4
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %42 = call i32 @_glfwInputError(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @VK_ERROR_EXTENSION_NOT_PRESENT, align 4
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GLFW_NO_API, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %53 = call i32 @_glfwInputError(i32 %52, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @VK_ERROR_NATIVE_WINDOW_IN_USE_KHR, align 4
  store i32 %54, i32* %5, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = call i32 @_glfwPlatformCreateWindowSurface(i64 %56, %struct.TYPE_8__* %57, i32* %58, i64* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %51, %40, %33
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i32 @_glfwInitVulkan(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfwPlatformCreateWindowSurface(i64, %struct.TYPE_8__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
