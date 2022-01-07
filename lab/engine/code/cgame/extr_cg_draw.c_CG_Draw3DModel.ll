; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_Draw3DModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_Draw3DModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, float, float, float, float, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@cg_draw3dIcons = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cg_drawIcons = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_Draw3DModel(float %0, float %1, float %2, float %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_draw3dIcons, i32 0, i32 0), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_drawIcons, i32 0, i32 0), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %8
  br label %63

25:                                               ; preds = %21
  %26 = call i32 @CG_AdjustFrom640(float* %9, float* %10, float* %11, float* %12)
  %27 = call i32 @memset(%struct.TYPE_9__* %17, i32 0, i32 64)
  %28 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 64)
  %29 = load i32, i32* %16, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @AnglesToAxis(i32 %29, i32 %31)
  %33 = load i32, i32* %15, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @VectorCopy(i32 %33, i32 %35)
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 11
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 10
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @RF_NOSHADOW, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 9
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 8
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @AxisClear(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 30, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 30, i32* %49, align 4
  %50 = load float, float* %9, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store float %50, float* %51, align 8
  %52 = load float, float* %10, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  store float %52, float* %53, align 4
  %54 = load float, float* %11, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store float %54, float* %55, align 8
  %56 = load float, float* %12, align 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  store float %56, float* %57, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 6
  store i32 %58, i32* %59, align 8
  %60 = call i32 (...) @trap_R_ClearScene()
  %61 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_9__* %18)
  %62 = call i32 @trap_R_RenderScene(%struct.TYPE_9__* %17)
  br label %63

63:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @CG_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @AnglesToAxis(i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AxisClear(i32) #1

declare dso_local i32 @trap_R_ClearScene(...) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_9__*) #1

declare dso_local i32 @trap_R_RenderScene(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
