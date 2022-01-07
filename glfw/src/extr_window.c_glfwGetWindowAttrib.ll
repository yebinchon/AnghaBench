; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_window.c_glfwGetWindowAttrib.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_window.c_glfwGetWindowAttrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid window attribute 0x%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwGetWindowAttrib(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 0)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %108 [
    i32 138, label %15
    i32 135, label %18
    i32 128, label %21
    i32 134, label %24
    i32 136, label %27
    i32 137, label %30
    i32 129, label %34
    i32 130, label %37
    i32 140, label %41
    i32 139, label %45
    i32 149, label %49
    i32 148, label %53
    i32 147, label %58
    i32 142, label %63
    i32 141, label %68
    i32 144, label %73
    i32 143, label %78
    i32 132, label %83
    i32 133, label %88
    i32 131, label %93
    i32 145, label %98
    i32 146, label %103
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i32 @_glfwPlatformWindowFocused(%struct.TYPE_10__* %16)
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = call i32 @_glfwPlatformWindowIconified(%struct.TYPE_10__* %19)
  store i32 %20, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call i32 @_glfwPlatformWindowVisible(%struct.TYPE_10__* %22)
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = call i32 @_glfwPlatformWindowMaximized(%struct.TYPE_10__* %25)
  store i32 %26, i32* %3, align 4
  br label %112

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = call i32 @_glfwPlatformWindowHovered(%struct.TYPE_10__* %28)
  store i32 %29, i32* %3, align 4
  br label %112

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %112

34:                                               ; preds = %2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = call i32 @_glfwPlatformFramebufferTransparent(%struct.TYPE_10__* %35)
  store i32 %36, i32* %3, align 4
  br label %112

37:                                               ; preds = %2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %112

41:                                               ; preds = %2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %112

45:                                               ; preds = %2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %112

49:                                               ; preds = %2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %112

53:                                               ; preds = %2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %112

58:                                               ; preds = %2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %112

63:                                               ; preds = %2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %3, align 4
  br label %112

73:                                               ; preds = %2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %3, align 4
  br label %112

78:                                               ; preds = %2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %3, align 4
  br label %112

83:                                               ; preds = %2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %112

88:                                               ; preds = %2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %3, align 4
  br label %112

93:                                               ; preds = %2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %3, align 4
  br label %112

98:                                               ; preds = %2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %112

103:                                              ; preds = %2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %3, align 4
  br label %112

108:                                              ; preds = %2
  %109 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @_glfwInputError(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %49, %45, %41, %37, %34, %30, %27, %24, %21, %18, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local i32 @_glfwPlatformWindowFocused(%struct.TYPE_10__*) #1

declare dso_local i32 @_glfwPlatformWindowIconified(%struct.TYPE_10__*) #1

declare dso_local i32 @_glfwPlatformWindowVisible(%struct.TYPE_10__*) #1

declare dso_local i32 @_glfwPlatformWindowMaximized(%struct.TYPE_10__*) #1

declare dso_local i32 @_glfwPlatformWindowHovered(%struct.TYPE_10__*) #1

declare dso_local i32 @_glfwPlatformFramebufferTransparent(%struct.TYPE_10__*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
