; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetGamepadName.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetGamepadName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8* }

@GLFW_JOYSTICK_1 = common dso_local global i32 0, align 4
@GLFW_JOYSTICK_LAST = common dso_local global i32 0, align 4
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid joystick ID %i\00", align 1
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@_GLFW_POLL_PRESENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @glfwGetGamepadName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
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
  %15 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32* null)
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %1
  %23 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @_glfwInputError(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i8* null, i8** %2, align 8
  br label %54

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0), align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %54

36:                                               ; preds = %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = load i32, i32* @_GLFW_POLL_PRESENCE, align 4
  %39 = call i32 @_glfwPlatformPollJoystick(%struct.TYPE_6__* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i8* null, i8** %2, align 8
  br label %54

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i8* null, i8** %2, align 8
  br label %54

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %2, align 8
  br label %54

54:                                               ; preds = %48, %47, %41, %35, %22
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

declare dso_local i32 @_glfwPlatformPollJoystick(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
