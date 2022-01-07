; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformGetPhysicalDevicePresentationSupport.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformGetPhysicalDevicePresentationSupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"vkGetPhysicalDeviceWaylandPresentationSupportKHR\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Wayland: Vulkan instance missing VK_KHR_wayland_surface extension\00", align 1
@VK_NULL_HANDLE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformGetPhysicalDevicePresentationSupport(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32, i32, i32)*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @vkGetInstanceProcAddr(i32 %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32 (i32, i32, i32)*
  store i32 (i32, i32, i32)* %12, i32 (i32, i32, i32)** %8, align 8
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %14 = icmp ne i32 (i32, i32, i32)* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %17 = call i32 @_glfwInputError(i32 %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @VK_NULL_HANDLE, align 4
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %24 = call i32 %20(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @vkGetInstanceProcAddr(i32, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
