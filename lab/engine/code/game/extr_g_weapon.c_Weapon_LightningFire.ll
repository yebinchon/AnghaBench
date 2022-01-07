; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_Weapon_LightningFire.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_weapon.c_Weapon_LightningFire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, i64 }
%struct.TYPE_18__ = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }

@s_quadFactor = common dso_local global i32 0, align 4
@muzzle = common dso_local global i32 0, align 4
@LIGHTNING_RANGE = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_21__* null, align 8
@MOD_LIGHTNING = common dso_local global i32 0, align 4
@EV_MISSILE_HIT = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@EV_MISSILE_MISS = common dso_local global i32 0, align 4
@EV_LIGHTNINGBOLT = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Weapon_LightningFire(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %10 = load i32, i32* @s_quadFactor, align 4
  %11 = mul nsw i32 8, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %123, %1
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %126

19:                                               ; preds = %16
  %20 = load i32, i32* @muzzle, align 4
  %21 = load i32, i32* @LIGHTNING_RANGE, align 4
  %22 = load i32, i32* @forward, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @VectorMA(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @muzzle, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MASK_SHOT, align 4
  %29 = call i32 @trap_Trace(%struct.TYPE_20__* %3, i32 %25, i32* null, i32* null, i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ENTITYNUM_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %126

35:                                               ; preds = %19
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %39
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %5, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %35
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %48 = call i64 @LogAccuracyHit(%struct.TYPE_21__* %46, %struct.TYPE_21__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = load i32, i32* @forward, align 4
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MOD_LIGHTNING, align 4
  %66 = call i32 @G_Damage(%struct.TYPE_21__* %58, %struct.TYPE_21__* %59, %struct.TYPE_21__* %60, i32 %61, i32 %63, i32 %64, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %57, %35
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %67
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = icmp ne %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %103

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EV_MISSILE_HIT, align 4
  %81 = call %struct.TYPE_21__* @G_TempEntity(i32 %79, i32 %80)
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %6, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @DirToByte(i32 %91)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 8
  br label %122

103:                                              ; preds = %72, %67
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SURF_NOIMPACT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EV_MISSILE_MISS, align 4
  %113 = call %struct.TYPE_21__* @G_TempEntity(i32 %111, i32 %112)
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @DirToByte(i32 %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %109, %103
  br label %122

122:                                              ; preds = %121, %77
  br label %126

123:                                              ; No predecessors!
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %16

126:                                              ; preds = %34, %122, %16
  ret void
}

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @G_Damage(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @G_TempEntity(i32, i32) #1

declare dso_local i8* @DirToByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
