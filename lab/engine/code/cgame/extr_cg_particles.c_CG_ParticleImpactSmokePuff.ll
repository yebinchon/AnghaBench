; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_ParticleImpactSmokePuff.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_ParticleImpactSmokePuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"CG_ParticleImpactSmokePuff pshader == ZERO!\0A\00", align 1
@free_particles = common dso_local global %struct.TYPE_5__* null, align 8
@active_particles = common dso_local global %struct.TYPE_5__* null, align 8
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@P_SMOKE_IMPACT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ParticleImpactSmokePuff(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @CG_Printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %90

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** @free_particles, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @active_particles, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 16
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** @active_particles, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 15
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store double 2.500000e-01, double* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 14
  store i64 0, i64* %29, align 8
  %30 = call i32 (...) @crandom()
  %31 = mul nsw i32 %30, 179
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 13
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %38 = add nsw i64 %37, 1000
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 11
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %42 = add nsw i64 %41, 100
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 12
  store i64 %42, i64* %44, align 8
  %45 = call i32 (...) @rand()
  %46 = srem i32 %45, 4
  %47 = add nsw i32 %46, 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = call i32 (...) @rand()
  %51 = srem i32 %50, 4
  %52 = add nsw i32 %51, 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %68 = add nsw i64 %67, 500
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 11
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @P_SMOKE_IMPACT, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @VectorCopy(i32 %74, i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @VectorSet(i32 %81, i32 0, i32 0, i32 20)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @VectorSet(i32 %85, i32 0, i32 0, i32 20)
  %87 = load i32, i32* @qtrue, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
