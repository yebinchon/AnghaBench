; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_init_particle.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_init_particle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float, float, float, float, float, i32 }

@FOUNTAIN_HEIGHT = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global i64 0, align 8
@VELOCITY = common dso_local global float 0.000000e+00, align 4
@glow_pos = common dso_local global float* null, align 8
@glow_color = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double)* @init_particle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_particle(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store double %1, double* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store float 0.000000e+00, float* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store float 0.000000e+00, float* %10, align 4
  %11 = load float, float* @FOUNTAIN_HEIGHT, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store float %11, float* %13, align 4
  %14 = call i32 (...) @rand()
  %15 = and i32 %14, 4095
  %16 = sitofp i32 %15 to float
  %17 = fmul float 0x3F13333340000000, %16
  %18 = fadd float 0x3FE6666660000000, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store float %18, float* %20, align 4
  %21 = load i64, i64* @M_PI, align 8
  %22 = sitofp i64 %21 to float
  %23 = fmul float 2.000000e+00, %22
  %24 = fdiv float %23, 4.096000e+03
  %25 = call i32 (...) @rand()
  %26 = and i32 %25, 4095
  %27 = sitofp i32 %26 to float
  %28 = fmul float %24, %27
  store float %28, float* %5, align 4
  %29 = load float, float* %5, align 4
  %30 = call i64 @cos(float %29)
  %31 = sitofp i64 %30 to float
  %32 = fmul float 0x3FD99999A0000000, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store float %32, float* %34, align 4
  %35 = load float, float* %5, align 4
  %36 = fpext float %35 to double
  %37 = call i64 @sin(double %36)
  %38 = sitofp i64 %37 to float
  %39 = fmul float 0x3FD99999A0000000, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store float %39, float* %41, align 4
  %42 = load float, float* @VELOCITY, align 4
  %43 = load double, double* %4, align 8
  %44 = fmul double 5.000000e-01, %43
  %45 = call i64 @sin(double %44)
  %46 = load double, double* %4, align 8
  %47 = fmul double 1.310000e+00, %46
  %48 = call i64 @sin(double %47)
  %49 = add nsw i64 %45, %48
  %50 = sitofp i64 %49 to float
  %51 = fmul float 0x3FB99999A0000000, %50
  %52 = fadd float 0x3FE99999A0000000, %51
  %53 = fmul float %42, %52
  store float %53, float* %6, align 4
  %54 = load float, float* %6, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, %54
  store float %58, float* %56, align 4
  %59 = load float, float* %6, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load float, float* %61, align 4
  %63 = fmul float %62, %59
  store float %63, float* %61, align 4
  %64 = load float, float* %6, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load float, float* %66, align 4
  %68 = fmul float %67, %64
  store float %68, float* %66, align 4
  %69 = load double, double* %4, align 8
  %70 = fmul double 3.400000e-01, %69
  %71 = fadd double %70, 1.000000e-01
  %72 = call i64 @sin(double %71)
  %73 = sitofp i64 %72 to float
  %74 = fmul float 0x3FD3333340000000, %73
  %75 = fadd float 0x3FE6666660000000, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  store float %75, float* %77, align 4
  %78 = load double, double* %4, align 8
  %79 = fmul double 6.300000e-01, %78
  %80 = fadd double %79, 1.100000e+00
  %81 = call i64 @sin(double %80)
  %82 = sitofp i64 %81 to float
  %83 = fmul float 0x3FD99999A0000000, %82
  %84 = fadd float 0x3FE3333340000000, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 7
  store float %84, float* %86, align 4
  %87 = load double, double* %4, align 8
  %88 = fmul double 9.100000e-01, %87
  %89 = fadd double %88, 2.100000e+00
  %90 = call i64 @sin(double %89)
  %91 = sitofp i64 %90 to float
  %92 = fmul float 0x3FD99999A0000000, %91
  %93 = fadd float 0x3FE3333340000000, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 8
  store float %93, float* %95, align 4
  %96 = load double, double* %4, align 8
  %97 = fmul double 1.340000e+00, %96
  %98 = call i64 @sin(double %97)
  %99 = sitofp i64 %98 to float
  %100 = fmul float 0x3FD99999A0000000, %99
  %101 = load float*, float** @glow_pos, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  store float %100, float* %102, align 4
  %103 = load double, double* %4, align 8
  %104 = fmul double 3.110000e+00, %103
  %105 = call i64 @sin(double %104)
  %106 = sitofp i64 %105 to float
  %107 = fmul float 0x3FD99999A0000000, %106
  %108 = load float*, float** @glow_pos, align 8
  %109 = getelementptr inbounds float, float* %108, i64 1
  store float %107, float* %109, align 4
  %110 = load float, float* @FOUNTAIN_HEIGHT, align 4
  %111 = fadd float %110, 1.000000e+00
  %112 = load float*, float** @glow_pos, align 8
  %113 = getelementptr inbounds float, float* %112, i64 2
  store float %111, float* %113, align 4
  %114 = load float*, float** @glow_pos, align 8
  %115 = getelementptr inbounds float, float* %114, i64 3
  store float 1.000000e+00, float* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 6
  %118 = load float, float* %117, align 4
  %119 = load float*, float** @glow_color, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  store float %118, float* %120, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 7
  %123 = load float, float* %122, align 4
  %124 = load float*, float** @glow_color, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  store float %123, float* %125, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 8
  %128 = load float, float* %127, align 4
  %129 = load float*, float** @glow_color, align 8
  %130 = getelementptr inbounds float, float* %129, i64 2
  store float %128, float* %130, align 4
  %131 = load float*, float** @glow_color, align 8
  %132 = getelementptr inbounds float, float* %131, i64 3
  store float 1.000000e+00, float* %132, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 9
  store float 1.000000e+00, float* %134, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 10
  store i32 1, i32* %136, align 4
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i64 @cos(float) #1

declare dso_local i64 @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
