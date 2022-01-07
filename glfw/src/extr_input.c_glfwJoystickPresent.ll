; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwJoystickPresent.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwJoystickPresent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GLFW_JOYSTICK_1 = common dso_local global i32 0, align 4
@GLFW_JOYSTICK_LAST = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid joystick ID %i\00", align 1
@_glfw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@_GLFW_POLL_PRESENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwJoystickPresent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GLFW_JOYSTICK_1, align 4
  %7 = icmp sge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %12 = icmp sle i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @GLFW_FALSE, align 4
  %16 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @_glfwInputError(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_glfw, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = load i32, i32* @_GLFW_POLL_PRESENCE, align 4
  %42 = call i32 @_glfwPlatformPollJoystick(%struct.TYPE_4__* %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %37, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

declare dso_local i32 @_glfwPlatformPollJoystick(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
