; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddFallScaleFade.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddFallScaleFade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { float, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { float, float, i32*, double, %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { double*, i64* }
%struct.TYPE_11__ = type { i32*, double, i64* }

@cg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CG_AddFallScaleFade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_AddFallScaleFade(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 5
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 4
  %13 = fsub float %11, %12
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %13, %16
  store float %17, float* %4, align 4
  %18 = load float, float* %4, align 4
  %19 = fmul float 2.550000e+02, %18
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = sitofp i32 %24 to float
  %26 = fmul float %19, %25
  %27 = fptosi float %26 to i32
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = load float, float* %4, align 4
  %40 = fpext float %39 to double
  %41 = fsub double 1.000000e+00, %40
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = getelementptr inbounds double, double* %45, i64 2
  %47 = load double, double* %46, align 8
  %48 = fmul double %41, %47
  %49 = fsub double %38, %48
  %50 = fptosi double %49 to i64
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  store i64 %50, i64* %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load double, double* %56, align 8
  %58 = load float, float* %4, align 4
  %59 = fpext float %58 to double
  %60 = fsub double 1.000000e+00, %59
  %61 = fmul double %57, %60
  %62 = fadd double %61, 1.600000e+01
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store double %62, double* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 1, i32 0), align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @VectorSubtract(i64* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call float @VectorLength(i32 %71)
  store float %72, float* %6, align 4
  %73 = load float, float* %6, align 4
  %74 = fpext float %73 to double
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load double, double* %76, align 8
  %78 = fcmp olt double %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = call i32 @CG_FreeLocalEntity(%struct.TYPE_12__* %80)
  br label %85

82:                                               ; preds = %1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_11__* %83)
  br label %85

85:                                               ; preds = %82, %79
  ret void
}

declare dso_local i32 @VectorSubtract(i64*, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @CG_FreeLocalEntity(%struct.TYPE_12__*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
