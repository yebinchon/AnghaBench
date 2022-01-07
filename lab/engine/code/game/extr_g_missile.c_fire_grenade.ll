; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_missile.c_fire_grenade.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_missile.c_fire_grenade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i8*, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32*, i32, i32, i32, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"grenade\00", align 1
@level = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@G_ExplodeMissile = common dso_local global i32 0, align 4
@ET_MISSILE = common dso_local global i32 0, align 4
@SVF_USE_CURRENT_ORIGIN = common dso_local global i32 0, align 4
@WP_GRENADE_LAUNCHER = common dso_local global i32 0, align 4
@EF_BOUNCE_HALF = common dso_local global i32 0, align 4
@MOD_GRENADE = common dso_local global i32 0, align 4
@MOD_GRENADE_SPLASH = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@TR_GRAVITY = common dso_local global i32 0, align 4
@MISSILE_PRESTEP_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @fire_grenade(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @VectorNormalize(i32 %8)
  %10 = call %struct.TYPE_12__* (...) @G_Spawn()
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %14 = add nsw i64 %13, 2500
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 12
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @G_ExplodeMissile, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @ET_MISSILE, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @SVF_USE_CURRENT_ORIGIN, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @WP_GRENADE_LAUNCHER, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @EF_BOUNCE_HALF, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 10
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i32 100, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  store i32 100, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i32 150, i32* %51, align 8
  %52 = load i32, i32* @MOD_GRENADE, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @MOD_GRENADE_SPLASH, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @MASK_SHOT, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* @TR_GRAVITY, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %69 = load i64, i64* @MISSILE_PRESTEP_TIME, align 8
  %70 = sub nsw i64 %68, %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VectorCopy(i32 %75, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @VectorScale(i32 %82, i32 700, i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @SnapVector(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @VectorCopy(i32 %95, i32 %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %101
}

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local %struct.TYPE_12__* @G_Spawn(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorScale(i32, i32, i32) #1

declare dso_local i32 @SnapVector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
