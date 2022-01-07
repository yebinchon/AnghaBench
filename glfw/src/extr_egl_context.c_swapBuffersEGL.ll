; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_egl_context.c_swapBuffersEGL.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_egl_context.c_swapBuffersEGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"EGL: The context must be current on the calling thread when swapping buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @swapBuffersEGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapBuffersEGL(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = call %struct.TYPE_11__* @_glfwPlatformGetTls(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 1))
  %5 = icmp ne %struct.TYPE_11__* %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %8 = call i32 @_glfwInputError(i32 %7, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @eglSwapBuffers(i32 %10, i32 %15)
  br label %17

17:                                               ; preds = %9, %6
  ret void
}

declare dso_local %struct.TYPE_11__* @_glfwPlatformGetTls(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
