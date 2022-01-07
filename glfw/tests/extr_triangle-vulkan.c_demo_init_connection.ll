; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_init_connection.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { i32 }

@demo_error_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot initialize GLFW.\0AExiting ...\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"GLFW failed to find the Vulkan loader.\0AExiting ...\0A\00", align 1
@glad_vulkan_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demo*)* @demo_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_init_connection(%struct.demo* %0) #0 {
  %2 = alloca %struct.demo*, align 8
  store %struct.demo* %0, %struct.demo** %2, align 8
  %3 = load i32, i32* @demo_error_callback, align 4
  %4 = call i32 @glfwSetErrorCallback(i32 %3)
  %5 = call i32 (...) @glfwInit()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fflush(i32 %9)
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %1
  %13 = call i32 (...) @glfwVulkanSupported()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fflush(i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %12
  %21 = load i32, i32* @glad_vulkan_callback, align 4
  %22 = call i32 @gladLoadVulkanUserPtr(i32* null, i32 %21, i32* null)
  ret void
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwVulkanSupported(...) #1

declare dso_local i32 @gladLoadVulkanUserPtr(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
