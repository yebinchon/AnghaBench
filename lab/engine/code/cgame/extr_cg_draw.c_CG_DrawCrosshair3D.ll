; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawCrosshair3D.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawCrosshair3D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { float, float, %struct.TYPE_23__, i64, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { float, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_17__ = type { float }
%struct.TYPE_15__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { float }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { float, i32 }
%struct.TYPE_25__ = type { i32, float, i32, i32, i32 }

@cg_drawCrosshair = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@cg_crosshairSize = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ITEM_BLOB_TIME = common dso_local global float 0.000000e+00, align 4
@cgs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@NUM_CROSSHAIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"r_zProj\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"r_stereoSeparation\00", align 1
@M_PI = common dso_local global float 0.000000e+00, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@RF_DEPTHHACK = common dso_local global i32 0, align 4
@RF_CROSSHAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawCrosshair3D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawCrosshair3D() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.TYPE_25__, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_drawCrosshair, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %126

16:                                               ; preds = %0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 4), align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @PERS_TEAM, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TEAM_SPECTATOR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %126

27:                                               ; preds = %16
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 3), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %126

31:                                               ; preds = %27
  %32 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_crosshairSize, i32 0, i32 0), align 4
  store float %32, float* %1, align 4
  %33 = load float, float* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 0), align 8
  %34 = load float, float* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 1), align 4
  %35 = fsub float %33, %34
  store float %35, float* %3, align 4
  %36 = load float, float* %3, align 4
  %37 = fcmp ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load float, float* %3, align 4
  %40 = load float, float* @ITEM_BLOB_TIME, align 4
  %41 = fcmp olt float %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load float, float* @ITEM_BLOB_TIME, align 4
  %44 = load float, float* %3, align 4
  %45 = fdiv float %44, %43
  store float %45, float* %3, align 4
  %46 = load float, float* %3, align 4
  %47 = fadd float 1.000000e+00, %46
  %48 = load float, float* %1, align 4
  %49 = fmul float %48, %47
  store float %49, float* %1, align 4
  br label %50

50:                                               ; preds = %42, %38, %31
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_drawCrosshair, i32 0, i32 0), align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 1, i32 0), align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @NUM_CROSSHAIRS, align 4
  %59 = srem i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %64 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %63, i32 128)
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %66 = call float @atof(i8* %65)
  store float %66, float* %8, align 4
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %68 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 128)
  %69 = load float, float* %8, align 4
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %71 = call float @atof(i8* %70)
  %72 = fdiv float %69, %71
  store float %72, float* %7, align 4
  %73 = load float, float* %8, align 4
  %74 = load float, float* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 2, i32 0), align 8
  %75 = load float, float* @M_PI, align 4
  %76 = fmul float %74, %75
  %77 = fdiv float %76, 3.600000e+02
  %78 = call float @tan(float %77)
  %79 = fmul float %73, %78
  store float %79, float* %10, align 4
  %80 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 0, i32 0), align 8
  %81 = load float, float* %7, align 4
  %82 = fmul float %80, %81
  %83 = load float, float* %8, align 4
  %84 = fmul float %82, %83
  %85 = load float, float* %10, align 4
  %86 = fmul float 2.000000e+00, %85
  %87 = fdiv float %84, %86
  store float %87, float* %9, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 2, i32 1), align 4
  %89 = load float, float* %9, align 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 2, i32 2), align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @VectorMA(i32 %88, float %89, i32 %92, i32 %93)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 2, i32 1), align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @MASK_SHOT, align 4
  %98 = call i32 @CG_Trace(%struct.TYPE_24__* %5, i32 %95, i32* null, i32* null, i32 %96, i32 0, i32 %97)
  %99 = call i32 @memset(%struct.TYPE_25__* %12, i32 0, i32 20)
  %100 = load i32, i32* @RT_SPRITE, align 4
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 4
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @RF_DEPTHHACK, align 4
  %103 = load i32, i32* @RF_CROSSHAIR, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VectorCopy(i32 %107, i32 %109)
  %111 = load float, float* %1, align 4
  %112 = fdiv float %111, 6.400000e+02
  %113 = load float, float* %10, align 4
  %114 = fmul float %112, %113
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  %116 = load float, float* %115, align 4
  %117 = fmul float %114, %116
  %118 = load float, float* %9, align 4
  %119 = fmul float %117, %118
  %120 = load float, float* %8, align 4
  %121 = fdiv float %119, %120
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  store float %121, float* %122, align 4
  %123 = load i32, i32* %2, align 4
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_25__* %12)
  br label %126

126:                                              ; preds = %55, %30, %26, %15
  ret void
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local float @atof(i8*) #1

declare dso_local float @tan(float) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_24__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
