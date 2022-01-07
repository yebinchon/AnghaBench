; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_draw_scene.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_draw_scene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@draw_scene.t_old = internal global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@aspect_ratio = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_CCW = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_FOG = common dso_local global i32 0, align 4
@GL_FOG_MODE = common dso_local global i32 0, align 4
@GL_EXP = common dso_local global i32 0, align 4
@GL_FOG_DENSITY = common dso_local global i32 0, align 4
@GL_FOG_COLOR = common dso_local global i32 0, align 4
@fog_color = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double)* @draw_scene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_scene(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %13 = load double, double* %4, align 8
  %14 = load double, double* @draw_scene.t_old, align 8
  %15 = fsub double %13, %14
  %16 = fptrunc double %15 to float
  store float %16, float* %11, align 4
  %17 = load double, double* %4, align 8
  store double %17, double* @draw_scene.t_old, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load double, double* @M_PI, align 8
  %20 = fptrunc double %19 to float
  %21 = fmul float 6.500000e+01, %20
  %22 = fdiv float %21, 1.800000e+02
  %23 = load i32, i32* @aspect_ratio, align 4
  %24 = call i32 @mat4x4_perspective(i64 %18, float %22, i32 %23, double 1.000000e+00, double 6.000000e+01)
  %25 = call i32 @glClearColor(float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 1.000000e+00)
  %26 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %27 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @glClear(i32 %28)
  %30 = load i32, i32* @GL_PROJECTION, align 4
  %31 = call i32 @glMatrixMode(i32 %30)
  %32 = load i64, i64* %12, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @glLoadMatrixf(i32* %33)
  %35 = load i32, i32* @GL_MODELVIEW, align 4
  %36 = call i32 @glMatrixMode(i32 %35)
  %37 = call i32 (...) @glLoadIdentity()
  store double 8.000000e+01, double* %8, align 8
  %38 = load double, double* %4, align 8
  %39 = fmul double 3.000000e-01, %38
  %40 = call double @sin(double %39) #3
  %41 = fmul double 1.000000e+01, %40
  store double %41, double* %9, align 8
  %42 = load double, double* %4, align 8
  %43 = fmul double 1.000000e+01, %42
  store double %43, double* %10, align 8
  %44 = load double, double* %8, align 8
  %45 = fneg double %44
  %46 = call i32 @glRotated(double %45, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %47 = load double, double* %9, align 8
  %48 = fneg double %47
  %49 = call i32 @glRotated(double %48, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %50 = load double, double* %10, align 8
  %51 = fneg double %50
  %52 = call i32 @glRotated(double %51, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %53 = load double, double* @M_PI, align 8
  %54 = fdiv double %53, 1.800000e+02
  %55 = load double, double* %10, align 8
  %56 = fmul double %54, %55
  %57 = call double @sin(double %56) #3
  %58 = fmul double 1.500000e+01, %57
  %59 = load double, double* @M_PI, align 8
  %60 = fdiv double %59, 1.800000e+02
  %61 = fmul double %60, 3.100000e+00
  %62 = load double, double* %4, align 8
  %63 = fmul double %61, %62
  %64 = call double @sin(double %63) #3
  %65 = fmul double 2.000000e+00, %64
  %66 = fadd double %58, %65
  store double %66, double* %5, align 8
  %67 = load double, double* @M_PI, align 8
  %68 = fdiv double %67, 1.800000e+02
  %69 = load double, double* %10, align 8
  %70 = fmul double %68, %69
  %71 = call double @cos(double %70) #3
  %72 = fmul double -1.500000e+01, %71
  %73 = load double, double* @M_PI, align 8
  %74 = fdiv double %73, 1.800000e+02
  %75 = fmul double %74, 2.900000e+00
  %76 = load double, double* %4, align 8
  %77 = fmul double %75, %76
  %78 = call double @cos(double %77) #3
  %79 = fmul double 2.000000e+00, %78
  %80 = fadd double %72, %79
  store double %80, double* %6, align 8
  %81 = load double, double* @M_PI, align 8
  %82 = fdiv double %81, 1.800000e+02
  %83 = fmul double %82, 4.900000e+00
  %84 = load double, double* %4, align 8
  %85 = fmul double %83, %84
  %86 = call double @cos(double %85) #3
  %87 = fmul double 2.000000e+00, %86
  %88 = fadd double 4.000000e+00, %87
  store double %88, double* %7, align 8
  %89 = load double, double* %5, align 8
  %90 = fneg double %89
  %91 = load double, double* %6, align 8
  %92 = fneg double %91
  %93 = load double, double* %7, align 8
  %94 = fneg double %93
  %95 = call i32 @glTranslated(double %90, double %92, double %94)
  %96 = load i32, i32* @GL_CCW, align 4
  %97 = call i32 @glFrontFace(i32 %96)
  %98 = load i32, i32* @GL_BACK, align 4
  %99 = call i32 @glCullFace(i32 %98)
  %100 = load i32, i32* @GL_CULL_FACE, align 4
  %101 = call i32 @glEnable(i32 %100)
  %102 = call i32 (...) @setup_lights()
  %103 = load i32, i32* @GL_LIGHTING, align 4
  %104 = call i32 @glEnable(i32 %103)
  %105 = load i32, i32* @GL_FOG, align 4
  %106 = call i32 @glEnable(i32 %105)
  %107 = load i32, i32* @GL_FOG_MODE, align 4
  %108 = load i32, i32* @GL_EXP, align 4
  %109 = call i32 @glFogi(i32 %107, i32 %108)
  %110 = load i32, i32* @GL_FOG_DENSITY, align 4
  %111 = call i32 @glFogf(i32 %110, float 0x3FA99999A0000000)
  %112 = load i32, i32* @GL_FOG_COLOR, align 4
  %113 = load i32, i32* @fog_color, align 4
  %114 = call i32 @glFogfv(i32 %112, i32 %113)
  %115 = call i32 (...) @draw_floor()
  %116 = load i32, i32* @GL_DEPTH_TEST, align 4
  %117 = call i32 @glEnable(i32 %116)
  %118 = load i32, i32* @GL_LEQUAL, align 4
  %119 = call i32 @glDepthFunc(i32 %118)
  %120 = load i32, i32* @GL_TRUE, align 4
  %121 = call i32 @glDepthMask(i32 %120)
  %122 = call i32 (...) @draw_fountain()
  %123 = load i32, i32* @GL_LIGHTING, align 4
  %124 = call i32 @glDisable(i32 %123)
  %125 = load i32, i32* @GL_FOG, align 4
  %126 = call i32 @glDisable(i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load double, double* %4, align 8
  %129 = load float, float* %11, align 4
  %130 = call i32 @draw_particles(i32* %127, double %128, float %129)
  %131 = load i32, i32* @GL_DEPTH_TEST, align 4
  %132 = call i32 @glDisable(i32 %131)
  ret void
}

declare dso_local i32 @mat4x4_perspective(i64, float, i32, double, double) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadMatrixf(i32*) #1

declare dso_local i32 @glLoadIdentity(...) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i32 @glRotated(double, double, double, double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

declare dso_local i32 @glTranslated(double, double, double) #1

declare dso_local i32 @glFrontFace(i32) #1

declare dso_local i32 @glCullFace(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @setup_lights(...) #1

declare dso_local i32 @glFogi(i32, i32) #1

declare dso_local i32 @glFogf(i32, float) #1

declare dso_local i32 @glFogfv(i32, i32) #1

declare dso_local i32 @draw_floor(...) #1

declare dso_local i32 @glDepthFunc(i32) #1

declare dso_local i32 @glDepthMask(i32) #1

declare dso_local i32 @draw_fountain(...) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @draw_particles(i32*, double, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
