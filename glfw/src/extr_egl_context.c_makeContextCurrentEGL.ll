; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_egl_context.c_makeContextCurrentEGL.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_egl_context.c_makeContextCurrentEGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EGL: Failed to make context current: %s\00", align 1
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EGL: Failed to clear current context: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @makeContextCurrentEGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeContextCurrentEGL(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = icmp ne %struct.TYPE_11__* %3, null
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 1, i32 0), align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @eglMakeCurrent(i32 %6, i32 %11, i32 %16, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %26 = call i32 (...) @eglGetError()
  %27 = call i32 @getEGLErrorString(i32 %26)
  %28 = call i32 @_glfwInputError(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %46

29:                                               ; preds = %5
  br label %43

30:                                               ; preds = %1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 1, i32 0), align 4
  %32 = load i32, i32* @EGL_NO_SURFACE, align 4
  %33 = load i32, i32* @EGL_NO_SURFACE, align 4
  %34 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %35 = call i32 @eglMakeCurrent(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %39 = call i32 (...) @eglGetError()
  %40 = call i32 @getEGLErrorString(i32 %39)
  %41 = call i32 @_glfwInputError(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = call i32 @_glfwPlatformSetTls(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0), %struct.TYPE_11__* %44)
  br label %46

46:                                               ; preds = %43, %37, %24
  ret void
}

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i32) #1

declare dso_local i32 @getEGLErrorString(i32) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @_glfwPlatformSetTls(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
