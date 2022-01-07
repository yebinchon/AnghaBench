; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_find_core_vulkan.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_find_core_vulkan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GLAD_VK_VERSION_1_0 = common dso_local global i32 0, align 4
@GLAD_VK_VERSION_1_1 = common dso_local global i32 0, align 4
@VK_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @glad_vk_find_core_vulkan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glad_vk_find_core_vulkan(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @vkGetPhysicalDeviceProperties(i32* %9, %struct.TYPE_3__* %5)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @VK_VERSION_MAJOR(i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @VK_VERSION_MINOR(i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %8, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 1
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ true, %22 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @GLAD_VK_VERSION_1_0, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %3, align 4
  %38 = icmp sgt i32 %37, 1
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* @GLAD_VK_VERSION_1_1, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @GLAD_MAKE_VERSION(i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @vkGetPhysicalDeviceProperties(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @VK_VERSION_MAJOR(i32) #1

declare dso_local i64 @VK_VERSION_MINOR(i32) #1

declare dso_local i32 @GLAD_MAKE_VERSION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
