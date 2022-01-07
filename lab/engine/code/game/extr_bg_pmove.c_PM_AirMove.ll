; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_AirMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_AirMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_12__ = type { float*, float*, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@pm = common dso_local global %struct.TYPE_13__* null, align 8
@pml = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@pm_airaccelerate = common dso_local global i32 0, align 4
@OVERCLIP = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PMF_GRAPPLE_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_AirMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_AirMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = call i32 (...) @PM_Friction()
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 8
  store float %13, float* %3, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  store float %17, float* %4, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_11__* %8 to i8*
  %21 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = call float @PM_CmdScale(%struct.TYPE_11__* %8)
  store float %22, float* %7, align 4
  %23 = call i32 (...) @PM_SetMovementDir()
  %24 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %25 = getelementptr inbounds float, float* %24, i64 2
  store float 0.000000e+00, float* %25, align 4
  %26 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %27 = getelementptr inbounds float, float* %26, i64 2
  store float 0.000000e+00, float* %27, align 4
  %28 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %29 = call float @VectorNormalize(float* %28)
  %30 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %31 = call float @VectorNormalize(float* %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %55, %0
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load float, float* %3, align 4
  %42 = fmul float %40, %41
  %43 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float, float* %4, align 4
  %49 = fmul float %47, %48
  %50 = fadd float %42, %49
  %51 = load float*, float** %2, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  store float %50, float* %54, align 4
  br label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load float*, float** %2, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  store float 0.000000e+00, float* %60, align 4
  %61 = load float*, float** %2, align 8
  %62 = load float*, float** %5, align 8
  %63 = call i32 @VectorCopy(float* %61, float* %62)
  %64 = load float*, float** %5, align 8
  %65 = call float @VectorNormalize(float* %64)
  store float %65, float* %6, align 4
  %66 = load float, float* %7, align 4
  %67 = load float, float* %6, align 4
  %68 = fmul float %67, %66
  store float %68, float* %6, align 4
  %69 = load float*, float** %5, align 8
  %70 = load float, float* %6, align 4
  %71 = load i32, i32* @pm_airaccelerate, align 4
  %72 = call i32 @PM_Accelerate(float* %69, float %70, i32 %71)
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %58
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 2, i32 0, i32 0), align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @OVERCLIP, align 4
  %88 = call i32 @PM_ClipVelocity(i32 %80, i32 %81, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %75, %58
  %90 = load i32, i32* @qtrue, align 4
  %91 = call i32 @PM_StepSlideMove(i32 %90)
  ret void
}

declare dso_local i32 @PM_Friction(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @PM_CmdScale(%struct.TYPE_11__*) #1

declare dso_local i32 @PM_SetMovementDir(...) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @PM_Accelerate(float*, float, i32) #1

declare dso_local i32 @PM_ClipVelocity(i32, i32, i32, i32) #1

declare dso_local i32 @PM_StepSlideMove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
