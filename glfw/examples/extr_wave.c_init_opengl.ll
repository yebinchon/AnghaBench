; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_wave.c_init_opengl.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_wave.c_init_opengl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GL_SMOOTH = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@vertex = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_opengl() #0 {
  %1 = load i32, i32* @GL_SMOOTH, align 4
  %2 = call i32 @glShadeModel(i32 %1)
  %3 = load i32, i32* @GL_DEPTH_TEST, align 4
  %4 = call i32 @glEnable(i32 %3)
  %5 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %6 = call i32 @glEnableClientState(i32 %5)
  %7 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %8 = call i32 @glEnableClientState(i32 %7)
  %9 = load i32, i32* @GL_FLOAT, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vertex, align 8
  %11 = call i32 @glVertexPointer(i32 3, i32 %9, i32 4, %struct.TYPE_3__* %10)
  %12 = load i32, i32* @GL_FLOAT, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vertex, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @glColorPointer(i32 3, i32 %12, i32 4, i32* %15)
  %17 = call i32 @glPointSize(double 2.000000e+00)
  %18 = call i32 @glClearColor(i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @glShadeModel(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @glColorPointer(i32, i32, i32, i32*) #1

declare dso_local i32 @glPointSize(double) #1

declare dso_local i32 @glClearColor(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
