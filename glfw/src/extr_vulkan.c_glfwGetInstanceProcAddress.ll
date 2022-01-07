; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_vulkan.c_glfwGetInstanceProcAddress.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_vulkan.c_glfwGetInstanceProcAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@_GLFW_REQUIRE_LOADER = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @glfwGetInstanceProcAddress(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32* null)
  %12 = load i32, i32* @_GLFW_REQUIRE_LOADER, align 4
  %13 = call i32 @_glfwInitVulkan(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @vkGetInstanceProcAddr(i32 %17, i8* %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @_glfw_dlsym(i32 %24, i8* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %28, %15
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32*) #1

declare dso_local i32 @_glfwInitVulkan(i32) #1

declare dso_local i64 @vkGetInstanceProcAddr(i32, i8*) #1

declare dso_local i64 @_glfw_dlsym(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
