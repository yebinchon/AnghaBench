; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetMouseButton.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_input.c_glfwGetMouseButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@GLFW_RELEASE = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_1 = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_LAST = common dso_local global i32 0, align 4
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid mouse button %i\00", align 1
@_GLFW_STICK = common dso_local global i64 0, align 8
@GLFW_PRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwGetMouseButton(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @GLFW_RELEASE, align 4
  %14 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GLFW_MOUSE_BUTTON_1, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GLFW_MOUSE_BUTTON_LAST, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @_glfwInputError(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @GLFW_RELEASE, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_GLFW_STICK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load i32, i32* @GLFW_RELEASE, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  %46 = load i32, i32* @GLFW_PRESS, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %27
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %37, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
