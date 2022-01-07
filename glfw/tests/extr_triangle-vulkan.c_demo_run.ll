; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_run.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { float, float, i64, i64, i32, i32 }

@INT32_MAX = common dso_local global i64 0, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demo*)* @demo_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_run(%struct.demo* %0) #0 {
  %2 = alloca %struct.demo*, align 8
  store %struct.demo* %0, %struct.demo** %2, align 8
  br label %3

3:                                                ; preds = %64, %1
  %4 = load %struct.demo*, %struct.demo** %2, align 8
  %5 = getelementptr inbounds %struct.demo, %struct.demo* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @glfwWindowShouldClose(i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %65

10:                                               ; preds = %3
  %11 = call i32 (...) @glfwPollEvents()
  %12 = load %struct.demo*, %struct.demo** %2, align 8
  %13 = call i32 @demo_draw(%struct.demo* %12)
  %14 = load %struct.demo*, %struct.demo** %2, align 8
  %15 = getelementptr inbounds %struct.demo, %struct.demo* %14, i32 0, i32 0
  %16 = load float, float* %15, align 8
  %17 = fcmp ogt float %16, 0x3FEFAE1480000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.demo*, %struct.demo** %2, align 8
  %20 = getelementptr inbounds %struct.demo, %struct.demo* %19, i32 0, i32 1
  store float 0xBF50624DE0000000, float* %20, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = load %struct.demo*, %struct.demo** %2, align 8
  %23 = getelementptr inbounds %struct.demo, %struct.demo* %22, i32 0, i32 0
  %24 = load float, float* %23, align 8
  %25 = fcmp olt float %24, 0x3FE99999A0000000
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.demo*, %struct.demo** %2, align 8
  %28 = getelementptr inbounds %struct.demo, %struct.demo* %27, i32 0, i32 1
  store float 0x3F50624DE0000000, float* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.demo*, %struct.demo** %2, align 8
  %31 = getelementptr inbounds %struct.demo, %struct.demo* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = load %struct.demo*, %struct.demo** %2, align 8
  %34 = getelementptr inbounds %struct.demo, %struct.demo* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  %36 = fadd float %35, %32
  store float %36, float* %34, align 8
  %37 = load %struct.demo*, %struct.demo** %2, align 8
  %38 = getelementptr inbounds %struct.demo, %struct.demo* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vkDeviceWaitIdle(i32 %39)
  %41 = load %struct.demo*, %struct.demo** %2, align 8
  %42 = getelementptr inbounds %struct.demo, %struct.demo* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.demo*, %struct.demo** %2, align 8
  %46 = getelementptr inbounds %struct.demo, %struct.demo* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INT32_MAX, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %29
  %51 = load %struct.demo*, %struct.demo** %2, align 8
  %52 = getelementptr inbounds %struct.demo, %struct.demo* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.demo*, %struct.demo** %2, align 8
  %55 = getelementptr inbounds %struct.demo, %struct.demo* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.demo*, %struct.demo** %2, align 8
  %60 = getelementptr inbounds %struct.demo, %struct.demo* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GLFW_TRUE, align 4
  %63 = call i32 @glfwSetWindowShouldClose(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %50, %29
  br label %3

65:                                               ; preds = %3
  ret void
}

declare dso_local i32 @glfwWindowShouldClose(i32) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @demo_draw(%struct.demo*) #1

declare dso_local i32 @vkDeviceWaitIdle(i32) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
