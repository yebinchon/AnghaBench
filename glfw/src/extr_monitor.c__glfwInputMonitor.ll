; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_monitor.c__glfwInputMonitor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_monitor.c__glfwInputMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32**, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 (i32*, i32)* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_9__* }

@GLFW_CONNECTED = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@_GLFW_INSERT_FIRST = common dso_local global i32 0, align 4
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputMonitor(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GLFW_CONNECTED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %3
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %19 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32** @realloc(i32** %19, i32 %23)
  store i32** %24, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @_GLFW_INSERT_FIRST, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 1
  %35 = mul i64 %34, 8
  %36 = call i32 @memmove(i32** %30, i32** %31, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  store i32* %37, i32** %39, align 8
  br label %47

40:                                               ; preds = %16
  %41 = load i32*, i32** %4, align 8
  %42 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  store i32* %41, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %28
  br label %119

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 3), align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %8, align 8
  br label %54

54:                                               ; preds = %77, %52
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_9__* %64, i32* %9, i32* %10)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @_glfwPlatformSetWindowMonitor(%struct.TYPE_9__* %66, i32* null, i32 0, i32 0, i32 %67, i32 %68, i32 0)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = call i32 @_glfwPlatformGetWindowFrameSize(%struct.TYPE_9__* %70, i32* %11, i32* %12, i32* null, i32* null)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @_glfwPlatformSetWindowPos(%struct.TYPE_9__* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %57
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %8, align 8
  br label %54

81:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %114, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %82
  %87 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = icmp eq i32* %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %86
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %97 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 2), align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0), align 8
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %107, %109
  %111 = mul i64 %110, 8
  %112 = call i32 @memmove(i32** %100, i32** %105, i64 %111)
  br label %117

113:                                              ; preds = %86
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %82

117:                                              ; preds = %94, %82
  br label %118

118:                                              ; preds = %117, %48
  br label %119

119:                                              ; preds = %118, %47
  %120 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 1, i32 0), align 8
  %121 = icmp ne i32 (i32*, i32)* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 1, i32 0), align 8
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 %123(i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @_glfwFreeMonitor(i32* %132)
  br label %134

134:                                              ; preds = %131, %127
  ret void
}

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @memmove(i32**, i32**, i64) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetWindowMonitor(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwPlatformGetWindowFrameSize(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetWindowPos(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @_glfwFreeMonitor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
