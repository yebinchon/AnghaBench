; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_CheckGauntletAttack.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_CheckGauntletAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__*, i64, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_22__, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i32, i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@forward = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4
@muzzle = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_27__* null, align 8
@EV_MISSILE_HIT = common dso_local global i32 0, align 4
@PW_QUAD = common dso_local global i64 0, align 8
@EV_POWERUP_QUAD = common dso_local global i32 0, align 4
@g_quadfactor = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@s_quadFactor = common dso_local global i32 0, align 4
@MOD_GAUNTLET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PW_DOUBLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckGauntletAttack(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @forward, align 4
  %16 = load i32, i32* @right, align 4
  %17 = load i32, i32* @up, align 4
  %18 = call i32 @AngleVectors(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = load i32, i32* @forward, align 4
  %21 = load i32, i32* @right, align 4
  %22 = load i32, i32* @up, align 4
  %23 = load i32, i32* @muzzle, align 4
  %24 = call i32 @CalcMuzzlePoint(%struct.TYPE_27__* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @muzzle, align 4
  %26 = load i32, i32* @forward, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @VectorMA(i32 %25, i32 32, i32 %26, i32 %27)
  %29 = load i32, i32* @muzzle, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MASK_SHOT, align 4
  %36 = call i32 @trap_Trace(%struct.TYPE_26__* %4, i32 %29, i32* null, i32* null, i32 %30, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SURF_NOIMPACT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %2, align 4
  br label %130

44:                                               ; preds = %1
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @qfalse, align 4
  store i32 %52, i32* %2, align 4
  br label %130

53:                                               ; preds = %44
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** @g_entities, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i64 %56
  store %struct.TYPE_27__* %57, %struct.TYPE_27__** %7, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %53
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = icmp ne %struct.TYPE_25__* %65, null
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EV_MISSILE_HIT, align 4
  %71 = call %struct.TYPE_27__* @G_TempEntity(i32 %69, i32 %70)
  store %struct.TYPE_27__* %71, %struct.TYPE_27__** %6, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DirToByte(i32 %81)
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %67, %62, %53
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @qfalse, align 4
  store i32 %99, i32* %2, align 4
  br label %130

100:                                              ; preds = %93
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @PW_QUAD, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %113 = load i32, i32* @EV_POWERUP_QUAD, align 4
  %114 = call i32 @G_AddEvent(%struct.TYPE_27__* %112, i32 %113, i32 0)
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_quadfactor, i32 0, i32 0), align 4
  store i32 %115, i32* @s_quadFactor, align 4
  br label %117

116:                                              ; preds = %100
  store i32 1, i32* @s_quadFactor, align 4
  br label %117

117:                                              ; preds = %116, %111
  %118 = load i32, i32* @s_quadFactor, align 4
  %119 = mul nsw i32 50, %118
  store i32 %119, i32* %8, align 4
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %123 = load i32, i32* @forward, align 4
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @MOD_GAUNTLET, align 4
  %128 = call i32 @G_Damage(%struct.TYPE_27__* %120, %struct.TYPE_27__* %121, %struct.TYPE_27__* %122, i32 %123, i32 %125, i32 %126, i32 0, i32 %127)
  %129 = load i32, i32* @qtrue, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %117, %98, %51, %42
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @AngleVectors(i32, i32, i32, i32) #1

declare dso_local i32 @CalcMuzzlePoint(%struct.TYPE_27__*, i32, i32, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_26__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @G_TempEntity(i32, i32) #1

declare dso_local i32 @DirToByte(i32) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
