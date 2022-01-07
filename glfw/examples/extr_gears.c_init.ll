; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_gears.c_init.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_gears.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init.pos = internal global [4 x float] [float 5.000000e+00, float 5.000000e+00, float 1.000000e+01, float 0.000000e+00], align 16
@init.red = internal global [4 x float] [float 0x3FE99999A0000000, float 0x3FB99999A0000000, float 0.000000e+00, float 1.000000e+00], align 16
@init.green = internal global [4 x float] [float 0.000000e+00, float 0x3FE99999A0000000, float 0x3FC99999A0000000, float 1.000000e+00], align 16
@init.blue = internal global [4 x float] [float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 1.000000e+00, float 1.000000e+00], align 16
@GL_LIGHT0 = common dso_local global i32 0, align 4
@GL_POSITION = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@gear1 = common dso_local global i32 0, align 4
@GL_COMPILE = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_AMBIENT_AND_DIFFUSE = common dso_local global i32 0, align 4
@gear2 = common dso_local global i32 0, align 4
@gear3 = common dso_local global i32 0, align 4
@GL_NORMALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = load i32, i32* @GL_LIGHT0, align 4
  %2 = load i32, i32* @GL_POSITION, align 4
  %3 = call i32 @glLightfv(i32 %1, i32 %2, float* getelementptr inbounds ([4 x float], [4 x float]* @init.pos, i64 0, i64 0))
  %4 = load i32, i32* @GL_CULL_FACE, align 4
  %5 = call i32 @glEnable(i32 %4)
  %6 = load i32, i32* @GL_LIGHTING, align 4
  %7 = call i32 @glEnable(i32 %6)
  %8 = load i32, i32* @GL_LIGHT0, align 4
  %9 = call i32 @glEnable(i32 %8)
  %10 = load i32, i32* @GL_DEPTH_TEST, align 4
  %11 = call i32 @glEnable(i32 %10)
  %12 = call i32 @glGenLists(i32 1)
  store i32 %12, i32* @gear1, align 4
  %13 = load i32, i32* @gear1, align 4
  %14 = load i32, i32* @GL_COMPILE, align 4
  %15 = call i32 @glNewList(i32 %13, i32 %14)
  %16 = load i32, i32* @GL_FRONT, align 4
  %17 = load i32, i32* @GL_AMBIENT_AND_DIFFUSE, align 4
  %18 = call i32 @glMaterialfv(i32 %16, i32 %17, float* getelementptr inbounds ([4 x float], [4 x float]* @init.red, i64 0, i64 0))
  %19 = call i32 @gear(float 1.000000e+00, float 4.000000e+00, float 1.000000e+00, i32 20, float 0x3FE6666660000000)
  %20 = call i32 (...) @glEndList()
  %21 = call i32 @glGenLists(i32 1)
  store i32 %21, i32* @gear2, align 4
  %22 = load i32, i32* @gear2, align 4
  %23 = load i32, i32* @GL_COMPILE, align 4
  %24 = call i32 @glNewList(i32 %22, i32 %23)
  %25 = load i32, i32* @GL_FRONT, align 4
  %26 = load i32, i32* @GL_AMBIENT_AND_DIFFUSE, align 4
  %27 = call i32 @glMaterialfv(i32 %25, i32 %26, float* getelementptr inbounds ([4 x float], [4 x float]* @init.green, i64 0, i64 0))
  %28 = call i32 @gear(float 5.000000e-01, float 2.000000e+00, float 2.000000e+00, i32 10, float 0x3FE6666660000000)
  %29 = call i32 (...) @glEndList()
  %30 = call i32 @glGenLists(i32 1)
  store i32 %30, i32* @gear3, align 4
  %31 = load i32, i32* @gear3, align 4
  %32 = load i32, i32* @GL_COMPILE, align 4
  %33 = call i32 @glNewList(i32 %31, i32 %32)
  %34 = load i32, i32* @GL_FRONT, align 4
  %35 = load i32, i32* @GL_AMBIENT_AND_DIFFUSE, align 4
  %36 = call i32 @glMaterialfv(i32 %34, i32 %35, float* getelementptr inbounds ([4 x float], [4 x float]* @init.blue, i64 0, i64 0))
  %37 = call i32 @gear(float 0x3FF4CCCCC0000000, float 2.000000e+00, float 5.000000e-01, i32 10, float 0x3FE6666660000000)
  %38 = call i32 (...) @glEndList()
  %39 = load i32, i32* @GL_NORMALIZE, align 4
  %40 = call i32 @glEnable(i32 %39)
  ret void
}

declare dso_local i32 @glLightfv(i32, i32, float*) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glGenLists(i32) #1

declare dso_local i32 @glNewList(i32, i32) #1

declare dso_local i32 @glMaterialfv(i32, i32, float*) #1

declare dso_local i32 @gear(float, float, float, i32, float) #1

declare dso_local i32 @glEndList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
