; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_vulkan.c_glfwGetPhysicalDevicePresentationSupport.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_vulkan.c_glfwGetPhysicalDevicePresentationSupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4
@_GLFW_REQUIRE_LOADER = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Vulkan: Window surface creation extensions not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwGetPhysicalDevicePresentationSupport(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @VK_NULL_HANDLE, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @VK_NULL_HANDLE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @GLFW_FALSE, align 4
  %19 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %18)
  %20 = load i32, i32* @_GLFW_REQUIRE_LOADER, align 4
  %21 = call i32 @_glfwInitVulkan(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %3
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %32 = call i32 @_glfwInputError(i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @_glfwPlatformGetPhysicalDevicePresentationSupport(i64 %35, i64 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %30, %23
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i32 @_glfwInitVulkan(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfwPlatformGetPhysicalDevicePresentationSupport(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
