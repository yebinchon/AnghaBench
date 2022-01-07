; ModuleID = '/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_load_VK_EXT_debug_report.c'
source_filename = "/home/carl/AnghaBench/glfw/deps/extr_glad_vulkan.c_glad_vk_load_VK_EXT_debug_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_VK_EXT_debug_report = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vkCreateDebugReportCallbackEXT\00", align 1
@vkCreateDebugReportCallbackEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"vkDebugReportMessageEXT\00", align 1
@vkDebugReportMessageEXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"vkDestroyDebugReportCallbackEXT\00", align 1
@vkDestroyDebugReportCallbackEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*, i8*)*, i8*)* @glad_vk_load_VK_EXT_debug_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glad_vk_load_VK_EXT_debug_report(i64 (i8*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*, i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*, i8*)* %0, i64 (i8*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @GLAD_VK_EXT_debug_report, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %18

8:                                                ; preds = %2
  %9 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 %9(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* @vkCreateDebugReportCallbackEXT, align 8
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 %14, i64* @vkDebugReportMessageEXT, align 8
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 %15(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i64 %17, i64* @vkDestroyDebugReportCallbackEXT, align 8
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
