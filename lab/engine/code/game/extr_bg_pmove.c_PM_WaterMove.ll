; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_WaterMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_WaterMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i32*, float }
%struct.TYPE_12__ = type { i32, float, float }
%struct.TYPE_10__ = type { float*, float*, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@pm = common dso_local global %struct.TYPE_11__* null, align 8
@pml = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@pm_swimScale = common dso_local global float 0.000000e+00, align 4
@pm_wateraccelerate = common dso_local global i32 0, align 4
@OVERCLIP = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_WaterMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_WaterMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = call i64 (...) @PM_CheckWaterJump()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @PM_WaterJumpMove()
  br label %157

11:                                               ; preds = %0
  %12 = call i32 (...) @PM_Friction()
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = call float @PM_CmdScale(%struct.TYPE_12__* %14)
  store float %15, float* %5, align 4
  %16 = load float, float* %5, align 4
  %17 = fcmp une float %16, 0.000000e+00
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load float*, float** %2, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float 0.000000e+00, float* %20, align 4
  %21 = load float*, float** %2, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  store float 0.000000e+00, float* %22, align 4
  %23 = load float*, float** %2, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  store float -6.000000e+01, float* %24, align 4
  br label %74

25:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load float, float* %5, align 4
  %31 = load float*, float** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 0), align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fmul float %30, %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fmul float %36, %40
  %42 = load float, float* %5, align 4
  %43 = load float*, float** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 1), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fmul float %42, %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load float, float* %51, align 8
  %53 = fmul float %48, %52
  %54 = fadd float %41, %53
  %55 = load float*, float** %2, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float %54, float* %58, align 4
  br label %59

59:                                               ; preds = %29
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %26

62:                                               ; preds = %26
  %63 = load float, float* %5, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sitofp i32 %67 to float
  %69 = fmul float %63, %68
  %70 = load float*, float** %2, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %69
  store float %73, float* %71, align 4
  br label %74

74:                                               ; preds = %62, %18
  %75 = load float*, float** %2, align 8
  %76 = load float*, float** %4, align 8
  %77 = call i32 @VectorCopy(float* %75, float* %76)
  %78 = load float*, float** %4, align 8
  %79 = call float @VectorNormalize(float* %78)
  store float %79, float* %3, align 4
  %80 = load float, float* %3, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load float, float* %84, align 8
  %86 = load float, float* @pm_swimScale, align 4
  %87 = fmul float %85, %86
  %88 = fcmp ogt float %80, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %74
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 8
  %95 = load float, float* @pm_swimScale, align 4
  %96 = fmul float %94, %95
  store float %96, float* %3, align 4
  br label %97

97:                                               ; preds = %89, %74
  %98 = load float*, float** %4, align 8
  %99 = load float, float* %3, align 4
  %100 = load i32, i32* @pm_wateraccelerate, align 4
  %101 = call i32 @PM_Accelerate(float* %98, float %99, i32 %100)
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 3), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %154

104:                                              ; preds = %97
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 2, i32 0, i32 0), align 8
  %111 = call i64 @DotProduct(i32* %109, i32 %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %154

113:                                              ; preds = %104
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call float @VectorLength(i32* %118)
  store float %119, float* %6, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 2, i32 0, i32 0), align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @OVERCLIP, align 4
  %132 = call i32 @PM_ClipVelocity(i32* %124, i32 %125, i32* %130, i32 %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to float*
  %139 = call float @VectorNormalize(float* %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to float*
  %146 = load float, float* %6, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = bitcast i32* %151 to float*
  %153 = call i32 @VectorScale(float* %145, float %146, float* %152)
  br label %154

154:                                              ; preds = %113, %104, %97
  %155 = load i32, i32* @qfalse, align 4
  %156 = call i32 @PM_SlideMove(i32 %155)
  br label %157

157:                                              ; preds = %154, %9
  ret void
}

declare dso_local i64 @PM_CheckWaterJump(...) #1

declare dso_local i32 @PM_WaterJumpMove(...) #1

declare dso_local i32 @PM_Friction(...) #1

declare dso_local float @PM_CmdScale(%struct.TYPE_12__*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local i32 @PM_Accelerate(float*, float, i32) #1

declare dso_local i64 @DotProduct(i32*, i32) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @PM_ClipVelocity(i32*, i32, i32*, i32) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @PM_SlideMove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
