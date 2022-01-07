; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_PlayerShadow.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_PlayerShadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i32, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { double, i32*, %struct.TYPE_18__, i64, i64 }
%struct.TYPE_18__ = type { i32 }

@cg_shadows = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@PW_INVIS = common dso_local global i32 0, align 4
@SHADOW_DISTANCE = common dso_local global i64 0, align 8
@MASK_PLAYERSOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, float*)* @CG_PlayerShadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_PlayerShadow(%struct.TYPE_22__* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca float, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store float* %1, float** %5, align 8
  store i32* inttoptr (i64 -15 to i32*), i32** %7, align 8
  store i32* inttoptr (i64 15 to i32*), i32** %8, align 8
  %11 = load float*, float** %5, align 8
  store float 0.000000e+00, float* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_shadows, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PW_INVIS, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %16
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @VectorCopy(i32 %30, i32* %31)
  %33 = load i64, i64* @SHADOW_DISTANCE, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @MASK_PLAYERSOLID, align 4
  %47 = call i32 @trap_CM_BoxTrace(%struct.TYPE_21__* %9, i32 %42, i32* %43, i32* %44, i32* %45, i32 0, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fcmp oeq double %49, 1.000000e+00
  br i1 %50, label %59, label %51

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51, %27
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %3, align 4
  br label %96

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = sitofp i32 %66 to float
  %68 = load float*, float** %5, align 8
  store float %67, float* %68, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_shadows, i32 0, i32 0), align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @qtrue, align 4
  store i32 %72, i32* %3, align 4
  br label %96

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fsub double 1.000000e+00, %75
  %77 = fptrunc double %76 to float
  store float %77, float* %10, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0, i32 0), align 4
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load float, float* %10, align 4
  %90 = load float, float* %10, align 4
  %91 = load float, float* %10, align 4
  %92 = load i32, i32* @qfalse, align 4
  %93 = load i32, i32* @qtrue, align 4
  %94 = call i32 @CG_ImpactMark(i32 %78, i32* %80, i32 %83, i32 %88, float %89, float %90, float %91, i32 1, i32 %92, i32 24, i32 %93)
  %95 = load i32, i32* @qtrue, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %73, %71, %59, %25, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @trap_CM_BoxTrace(%struct.TYPE_21__*, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CG_ImpactMark(i32, i32*, i32, i32, float, float, float, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
