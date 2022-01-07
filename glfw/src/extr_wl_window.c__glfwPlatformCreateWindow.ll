; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformCreateWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c__glfwPlatformCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i64, i32, i32*, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_NO_API = common dso_local global i64 0, align 8
@GLFW_EGL_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_NATIVE_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_OSMESA_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateWindow(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, %struct.TYPE_25__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 7
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %18 = call i32 @createSurface(%struct.TYPE_23__* %16, %struct.TYPE_22__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %133

22:                                               ; preds = %4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GLFW_NO_API, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %22
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GLFW_EGL_CONTEXT_API, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34, %28
  %41 = call i32 (...) @_glfwInitEGL()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %133

45:                                               ; preds = %40
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %49 = call i32 @_glfwCreateContextEGL(%struct.TYPE_23__* %46, %struct.TYPE_25__* %47, %struct.TYPE_24__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %133

53:                                               ; preds = %45
  br label %75

54:                                               ; preds = %34
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GLFW_OSMESA_CONTEXT_API, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = call i32 (...) @_glfwInitOSMesa()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %133

65:                                               ; preds = %60
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = call i32 @_glfwCreateContextOSMesa(%struct.TYPE_23__* %66, %struct.TYPE_25__* %67, %struct.TYPE_24__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %72, i32* %5, align 4
  br label %133

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %54
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %22
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @_glfw_strdup(i64 %84)
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 6
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = call i32 @createXdgSurface(%struct.TYPE_23__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %99, i32* %5, align 4
  br label %133

100:                                              ; preds = %94
  %101 = load i32, i32* @GLFW_TRUE, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  br label %118

105:                                              ; preds = %89
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  %114 = load i32, i32* @GLFW_FALSE, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %105, %100
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  %122 = call i32 @calloc(i32 1, i32 8)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %118, %98, %71, %63, %51, %43, %20
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @createSurface(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @_glfwInitEGL(...) #1

declare dso_local i32 @_glfwCreateContextEGL(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @_glfwInitOSMesa(...) #1

declare dso_local i32 @_glfwCreateContextOSMesa(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @_glfw_strdup(i64) #1

declare dso_local i32 @createXdgSurface(%struct.TYPE_23__*) #1

declare dso_local i32 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
