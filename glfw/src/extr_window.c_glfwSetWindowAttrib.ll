; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_window.c_glfwSetWindowAttrib.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_window.c_glfwSetWindowAttrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_AUTO_ICONIFY = common dso_local global i32 0, align 4
@GLFW_RESIZABLE = common dso_local global i32 0, align 4
@GLFW_DECORATED = common dso_local global i32 0, align 4
@GLFW_FLOATING = common dso_local global i32 0, align 4
@GLFW_FOCUS_ON_SHOW = common dso_local global i32 0, align 4
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid window attribute 0x%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetWindowAttrib(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @GLFW_TRUE, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @GLFW_FALSE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GLFW_AUTO_ICONIFY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %118

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GLFW_RESIZABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %118

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @_glfwPlatformSetWindowResizable(%struct.TYPE_5__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %41
  br label %117

54:                                               ; preds = %30
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GLFW_DECORATED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %118

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @_glfwPlatformSetWindowDecorated(%struct.TYPE_5__* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %65
  br label %116

78:                                               ; preds = %54
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @GLFW_FLOATING, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %118

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @_glfwPlatformSetWindowFloating(%struct.TYPE_5__* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %89
  br label %115

102:                                              ; preds = %78
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @GLFW_FOCUS_ON_SHOW, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  br label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @_glfwInputError(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %101
  br label %116

116:                                              ; preds = %115, %77
  br label %117

117:                                              ; preds = %116, %53
  br label %118

118:                                              ; preds = %40, %64, %88, %117, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwPlatformSetWindowResizable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_glfwPlatformSetWindowDecorated(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_glfwPlatformSetWindowFloating(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
