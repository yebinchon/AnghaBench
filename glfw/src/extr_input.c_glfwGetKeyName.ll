; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetKeyName.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetKeyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_KEY_UNKNOWN = common dso_local global i32 0, align 4
@GLFW_KEY_KP_EQUAL = common dso_local global i32 0, align 4
@GLFW_KEY_KP_0 = common dso_local global i32 0, align 4
@GLFW_KEY_KP_ADD = common dso_local global i32 0, align 4
@GLFW_KEY_APOSTROPHE = common dso_local global i32 0, align 4
@GLFW_KEY_WORLD_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @glfwGetKeyName(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32* null)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GLFW_KEY_UNKNOWN, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GLFW_KEY_KP_EQUAL, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GLFW_KEY_KP_0, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GLFW_KEY_KP_ADD, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GLFW_KEY_APOSTROPHE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GLFW_KEY_WORLD_2, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i8* null, i8** %3, align 8
  br label %37

31:                                               ; preds = %26, %18, %10
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @_glfwPlatformGetKeyScancode(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @_glfwPlatformGetScancodeName(i32 %35)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32*) #1

declare dso_local i32 @_glfwPlatformGetKeyScancode(i32) #1

declare dso_local i8* @_glfwPlatformGetScancodeName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
