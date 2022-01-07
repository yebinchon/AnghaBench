; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_gladLoadVulkanUserPtr.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_gladLoadVulkanUserPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vkEnumerateInstanceVersion = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gladLoadVulkanUserPtr(i32 %0, i64 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 (i8*, i8*)* %1, i64 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @glad_vk_find_core_vulkan(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @glad_vk_load_VK_VERSION_1_0(i64 (i8*, i8*)* %15, i8* %16)
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @glad_vk_load_VK_VERSION_1_1(i64 (i8*, i8*)* %18, i8* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @glad_vk_find_extensions_vulkan(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %36

25:                                               ; preds = %14
  %26 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @glad_vk_load_VK_EXT_debug_report(i64 (i8*, i8*)* %26, i8* %27)
  %29 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @glad_vk_load_VK_KHR_surface(i64 (i8*, i8*)* %29, i8* %30)
  %32 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @glad_vk_load_VK_KHR_swapchain(i64 (i8*, i8*)* %32, i8* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %24, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @glad_vk_find_core_vulkan(i32) #1

declare dso_local i32 @glad_vk_load_VK_VERSION_1_0(i64 (i8*, i8*)*, i8*) #1

declare dso_local i32 @glad_vk_load_VK_VERSION_1_1(i64 (i8*, i8*)*, i8*) #1

declare dso_local i32 @glad_vk_find_extensions_vulkan(i32) #1

declare dso_local i32 @glad_vk_load_VK_EXT_debug_report(i64 (i8*, i8*)*, i8*) #1

declare dso_local i32 @glad_vk_load_VK_KHR_surface(i64 (i8*, i8*)*, i8*) #1

declare dso_local i32 @glad_vk_load_VK_KHR_swapchain(i64 (i8*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
