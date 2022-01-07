; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_particle_engine.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_particle_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MIN_DELTA_T = common dso_local global float 0.000000e+00, align 4
@MAX_PARTICLES = common dso_local global i32 0, align 4
@particles = common dso_local global %struct.TYPE_4__* null, align 8
@min_age = common dso_local global float 0.000000e+00, align 4
@BIRTH_INTERVAL = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, float)* @particle_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @particle_engine(double %0, float %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store double %0, double* %3, align 8
  store float %1, float* %4, align 4
  br label %7

7:                                                ; preds = %79, %2
  %8 = load float, float* %4, align 4
  %9 = fcmp ogt float %8, 0.000000e+00
  br i1 %9, label %10, label %83

10:                                               ; preds = %7
  %11 = load float, float* %4, align 4
  %12 = load float, float* @MIN_DELTA_T, align 4
  %13 = fcmp olt float %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load float, float* %4, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load float, float* @MIN_DELTA_T, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi float [ %15, %14 ], [ %17, %16 ]
  store float %19, float* %6, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %31, %18
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MAX_PARTICLES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @particles, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = load float, float* %6, align 4
  %30 = call i32 @update_particle(%struct.TYPE_4__* %28, float %29)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load float, float* %6, align 4
  %36 = load float, float* @min_age, align 4
  %37 = fadd float %36, %35
  store float %37, float* @min_age, align 4
  br label %38

38:                                               ; preds = %78, %34
  %39 = load float, float* @min_age, align 4
  %40 = load float, float* @BIRTH_INTERVAL, align 4
  %41 = fcmp oge float %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load float, float* @BIRTH_INTERVAL, align 4
  %44 = load float, float* @min_age, align 4
  %45 = fsub float %44, %43
  store float %45, float* @min_age, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %75, %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MAX_PARTICLES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @particles, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @particles, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = load double, double* %3, align 8
  %64 = load float, float* @min_age, align 4
  %65 = fpext float %64 to double
  %66 = fadd double %63, %65
  %67 = call i32 @init_particle(%struct.TYPE_4__* %62, double %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @particles, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = load float, float* @min_age, align 4
  %73 = call i32 @update_particle(%struct.TYPE_4__* %71, float %72)
  br label %78

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %46

78:                                               ; preds = %58, %46
  br label %38

79:                                               ; preds = %38
  %80 = load float, float* %6, align 4
  %81 = load float, float* %4, align 4
  %82 = fsub float %81, %80
  store float %82, float* %4, align 4
  br label %7

83:                                               ; preds = %7
  ret void
}

declare dso_local i32 @update_particle(%struct.TYPE_4__*, float) #1

declare dso_local i32 @init_particle(%struct.TYPE_4__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
