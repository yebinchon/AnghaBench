; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_gears.c_draw.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_gears.c_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@view_rotx = common dso_local global float 0.000000e+00, align 4
@view_roty = common dso_local global float 0.000000e+00, align 4
@view_rotz = common dso_local global float 0.000000e+00, align 4
@angle = common dso_local global float 0.000000e+00, align 4
@gear1 = common dso_local global i32 0, align 4
@gear2 = common dso_local global i32 0, align 4
@gear3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw() #0 {
  %1 = call i32 @glClearColor(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %2 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %3 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @glClear(i32 %4)
  %6 = call i32 (...) @glPushMatrix()
  %7 = load float, float* @view_rotx, align 4
  %8 = call i32 @glRotatef(float %7, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %9 = load float, float* @view_roty, align 4
  %10 = call i32 @glRotatef(float %9, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %11 = load float, float* @view_rotz, align 4
  %12 = call i32 @glRotatef(float %11, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %13 = call i32 (...) @glPushMatrix()
  %14 = call i32 @glTranslatef(float -3.000000e+00, float -2.000000e+00, float 0.000000e+00)
  %15 = load float, float* @angle, align 4
  %16 = call i32 @glRotatef(float %15, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %17 = load i32, i32* @gear1, align 4
  %18 = call i32 @glCallList(i32 %17)
  %19 = call i32 (...) @glPopMatrix()
  %20 = call i32 (...) @glPushMatrix()
  %21 = call i32 @glTranslatef(float 0x4008CCCCC0000000, float -2.000000e+00, float 0.000000e+00)
  %22 = load float, float* @angle, align 4
  %23 = fmul float -2.000000e+00, %22
  %24 = fsub float %23, 9.000000e+00
  %25 = call i32 @glRotatef(float %24, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %26 = load i32, i32* @gear2, align 4
  %27 = call i32 @glCallList(i32 %26)
  %28 = call i32 (...) @glPopMatrix()
  %29 = call i32 (...) @glPushMatrix()
  %30 = call i32 @glTranslatef(float 0xC008CCCCC0000000, float 0x4010CCCCC0000000, float 0.000000e+00)
  %31 = load float, float* @angle, align 4
  %32 = fmul float -2.000000e+00, %31
  %33 = fsub float %32, 2.500000e+01
  %34 = call i32 @glRotatef(float %33, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %35 = load i32, i32* @gear3, align 4
  %36 = call i32 @glCallList(i32 %35)
  %37 = call i32 (...) @glPopMatrix()
  %38 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glClearColor(double, double, double, double) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @glTranslatef(float, float, float) #1

declare dso_local i32 @glCallList(i32) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
