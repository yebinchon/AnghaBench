; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_load_VK_KHR_swapchain.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_load_VK_KHR_swapchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_VK_KHR_swapchain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vkAcquireNextImage2KHR\00", align 1
@vkAcquireNextImage2KHR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"vkAcquireNextImageKHR\00", align 1
@vkAcquireNextImageKHR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"vkCreateSwapchainKHR\00", align 1
@vkCreateSwapchainKHR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"vkDestroySwapchainKHR\00", align 1
@vkDestroySwapchainKHR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"vkGetDeviceGroupPresentCapabilitiesKHR\00", align 1
@vkGetDeviceGroupPresentCapabilitiesKHR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"vkGetDeviceGroupSurfacePresentModesKHR\00", align 1
@vkGetDeviceGroupSurfacePresentModesKHR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"vkGetPhysicalDevicePresentRectanglesKHR\00", align 1
@vkGetPhysicalDevicePresentRectanglesKHR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"vkGetSwapchainImagesKHR\00", align 1
@vkGetSwapchainImagesKHR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"vkQueuePresentKHR\00", align 1
@vkQueuePresentKHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_vk_load_VK_KHR_swapchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_vk_load_VK_KHR_swapchain(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_VK_KHR_swapchain, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %36

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @vkAcquireNextImage2KHR, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @vkAcquireNextImageKHR, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @vkCreateSwapchainKHR, align 8
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 %18(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  store i64 %20, i64* @vkDestroySwapchainKHR, align 8
  %21 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 %21(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  store i64 %23, i64* @vkGetDeviceGroupPresentCapabilitiesKHR, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 %24(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  store i64 %26, i64* @vkGetDeviceGroupSurfacePresentModesKHR, align 8
  %27 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 %27(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  store i64 %29, i64* @vkGetPhysicalDevicePresentRectanglesKHR, align 8
  %30 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 %30(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  store i64 %32, i64* @vkGetSwapchainImagesKHR, align 8
  %33 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 %33(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  store i64 %35, i64* @vkQueuePresentKHR, align 8
  br label %36

36:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
