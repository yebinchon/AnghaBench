; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformCreateWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64 }

@GLFW_NO_API = common dso_local global i64 0, align 8
@GLFW_NATIVE_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_EGL_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_OSMESA_CONTEXT_API = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateWindow(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_22__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GLFW_NO_API, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = call i32 (...) @_glfwInitGLX()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %170

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @_glfwChooseVisualGLX(i32* %29, %struct.TYPE_22__* %30, i32* %31, i32** %10, i32* %11)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %170

36:                                               ; preds = %28
  br label %71

37:                                               ; preds = %17
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GLFW_EGL_CONTEXT_API, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = call i32 (...) @_glfwInitEGL()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %170

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @_glfwChooseVisualEGL(i32* %49, %struct.TYPE_22__* %50, i32* %51, i32** %10, i32* %11)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %55, i32* %5, align 4
  br label %170

56:                                               ; preds = %48
  br label %70

57:                                               ; preds = %37
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @GLFW_OSMESA_CONTEXT_API, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = call i32 (...) @_glfwInitOSMesa()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %170

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %36
  br label %72

72:                                               ; preds = %71, %4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GLFW_NO_API, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GLFW_OSMESA_CONTEXT_API, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78, %72
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 0), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 1), align 4
  %87 = call i32* @DefaultVisual(i32 %85, i32 %86)
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 0), align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 1), align 4
  %90 = call i32 @DefaultDepth(i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @createNativeWindow(%struct.TYPE_21__* %92, i32* %93, i32* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %99, i32* %5, align 4
  br label %170

100:                                              ; preds = %91
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @GLFW_NO_API, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %100
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @_glfwCreateContextGLX(%struct.TYPE_21__* %113, %struct.TYPE_22__* %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %119, i32* %5, align 4
  br label %170

120:                                              ; preds = %112
  br label %153

121:                                              ; preds = %106
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GLFW_EGL_CONTEXT_API, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @_glfwCreateContextEGL(%struct.TYPE_21__* %128, %struct.TYPE_22__* %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %134, i32* %5, align 4
  br label %170

135:                                              ; preds = %127
  br label %152

136:                                              ; preds = %121
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @GLFW_OSMESA_CONTEXT_API, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @_glfwCreateContextOSMesa(%struct.TYPE_21__* %143, %struct.TYPE_22__* %144, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %149, i32* %5, align 4
  br label %170

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %136
  br label %152

152:                                              ; preds = %151, %135
  br label %153

153:                                              ; preds = %152, %120
  br label %154

154:                                              ; preds = %153, %100
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = call i32 @_glfwPlatformShowWindow(%struct.TYPE_21__* %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = call i32 @updateWindowMode(%struct.TYPE_21__* %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = call i32 @acquireMonitor(%struct.TYPE_21__* %164)
  br label %166

166:                                              ; preds = %159, %154
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @_glfw, i32 0, i32 0, i32 0), align 4
  %168 = call i32 @XFlush(i32 %167)
  %169 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %166, %148, %133, %118, %98, %66, %54, %46, %34, %26
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @_glfwInitGLX(...) #1

declare dso_local i32 @_glfwChooseVisualGLX(i32*, %struct.TYPE_22__*, i32*, i32**, i32*) #1

declare dso_local i32 @_glfwInitEGL(...) #1

declare dso_local i32 @_glfwChooseVisualEGL(i32*, %struct.TYPE_22__*, i32*, i32**, i32*) #1

declare dso_local i32 @_glfwInitOSMesa(...) #1

declare dso_local i32* @DefaultVisual(i32, i32) #1

declare dso_local i32 @DefaultDepth(i32, i32) #1

declare dso_local i32 @createNativeWindow(%struct.TYPE_21__*, i32*, i32*, i32) #1

declare dso_local i32 @_glfwCreateContextGLX(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @_glfwCreateContextEGL(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @_glfwCreateContextOSMesa(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @_glfwPlatformShowWindow(%struct.TYPE_21__*) #1

declare dso_local i32 @updateWindowMode(%struct.TYPE_21__*) #1

declare dso_local i32 @acquireMonitor(%struct.TYPE_21__*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
