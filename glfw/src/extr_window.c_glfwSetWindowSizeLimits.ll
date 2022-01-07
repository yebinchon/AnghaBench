; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_window.c_glfwSetWindowSizeLimits.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_window.c_glfwSetWindowSizeLimits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }

@GLFW_DONT_CARE = common dso_local global i32 0, align 4
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid window minimum size %ix%i\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid window maximum size %ix%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetWindowSizeLimits(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GLFW_DONT_CARE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GLFW_DONT_CARE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @_glfwInputError(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %96

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %22, %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @GLFW_DONT_CARE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @GLFW_DONT_CARE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %52, %49, %46
  %61 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @_glfwInputError(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %96

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %42, %38
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %66
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83, %66
  br label %96

89:                                               ; preds = %83
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @_glfwPlatformSetWindowSizeLimits(%struct.TYPE_3__* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %88, %60, %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32, i32) #1

declare dso_local i32 @_glfwPlatformSetWindowSizeLimits(%struct.TYPE_3__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
