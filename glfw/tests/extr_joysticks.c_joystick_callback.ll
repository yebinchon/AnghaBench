; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_joysticks.c_joystick_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_joysticks.c_joystick_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_CONNECTED = common dso_local global i32 0, align 4
@joysticks = common dso_local global i32* null, align 8
@joystick_count = common dso_local global i32 0, align 4
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@GLFW_FOCUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @joystick_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @joystick_callback(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GLFW_CONNECTED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32*, i32** @joysticks, align 8
  %12 = load i32, i32* @joystick_count, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @joystick_count, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  store i32 %10, i32* %15, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @joystick_count, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32*, i32** @joysticks, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %33, %21
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %56, %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @joystick_count, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32*, i32** @joysticks, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** @joysticks, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load i32, i32* @joystick_count, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* @joystick_count, align 4
  br label %62

62:                                               ; preds = %59, %16
  br label %63

63:                                               ; preds = %62, %9
  %64 = load i32, i32* @window, align 4
  %65 = load i32, i32* @GLFW_FOCUSED, align 4
  %66 = call i32 @glfwGetWindowAttrib(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @window, align 4
  %70 = call i32 @glfwRequestWindowAttention(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @glfwGetWindowAttrib(i32, i32) #1

declare dso_local i32 @glfwRequestWindowAttention(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
