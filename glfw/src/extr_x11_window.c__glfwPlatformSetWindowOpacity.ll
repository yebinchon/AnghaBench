; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformSetWindowOpacity.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformSetWindowOpacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetWindowOpacity(%struct.TYPE_8__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store float %1, float* %4, align 4
  %6 = load float, float* %4, align 4
  %7 = fpext float %6 to double
  %8 = fmul double 0x41EFFFFFFFE00000, %7
  %9 = fptosi double %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 4
  %16 = load i32, i32* @XA_CARDINAL, align 4
  %17 = load i32, i32* @PropModeReplace, align 4
  %18 = bitcast i32* %5 to i8*
  %19 = call i32 @XChangeProperty(i32 %10, i32 %14, i32 %15, i32 %16, i32 32, i32 %17, i8* %18, i32 1)
  ret void
}

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
