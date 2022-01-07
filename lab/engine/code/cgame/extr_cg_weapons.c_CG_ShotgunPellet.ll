; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_ShotgunPellet.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_ShotgunPellet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@MASK_SHOT = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_10__* null, align 8
@ET_PLAYER = common dso_local global i64 0, align 8
@WP_SHOTGUN = common dso_local global i32 0, align 4
@SURF_METALSTEPS = common dso_local global i32 0, align 4
@IMPACTSOUND_METAL = common dso_local global i32 0, align 4
@IMPACTSOUND_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @CG_ShotgunPellet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ShotgunPellet(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MASK_SHOT, align 4
  %16 = call i32 @CG_Trace(%struct.TYPE_9__* %7, i32 %12, i32* null, i32* null, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @CG_PointContents(i32 %17, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CG_PointContents(i32 %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CONTENTS_WATER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CG_BubbleTrail(i32 %31, i32 %33, i32 32)
  br label %35

35:                                               ; preds = %30, %25
  br label %67

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CONTENTS_WATER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @CONTENTS_WATER, align 4
  %45 = call i32 @trap_CM_BoxTrace(%struct.TYPE_9__* %10, i32 %42, i32 %43, i32* null, i32* null, i32 0, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CG_BubbleTrail(i32 %46, i32 %48, i32 32)
  br label %66

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CONTENTS_WATER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @CONTENTS_WATER, align 4
  %59 = call i32 @trap_CM_BoxTrace(%struct.TYPE_9__* %11, i32 %56, i32 %57, i32* null, i32* null, i32 0, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CG_BubbleTrail(i32 %61, i32 %63, i32 32)
  br label %65

65:                                               ; preds = %55, %50
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %35
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SURF_NOIMPACT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %126

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cg_entities, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ET_PLAYER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load i32, i32* @WP_SHOTGUN, align 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @CG_MissileHitPlayer(i32 %85, i32 %87, i32 %90, i64 %92)
  br label %126

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SURF_NOIMPACT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %126

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SURF_METALSTEPS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load i32, i32* @WP_SHOTGUN, align 4
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IMPACTSOUND_METAL, align 4
  %115 = call i32 @CG_MissileHitWall(i32 %108, i32 0, i32 %110, i32 %113, i32 %114)
  br label %125

116:                                              ; preds = %101
  %117 = load i32, i32* @WP_SHOTGUN, align 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IMPACTSOUND_DEFAULT, align 4
  %124 = call i32 @CG_MissileHitWall(i32 %117, i32 0, i32 %119, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %107
  br label %126

126:                                              ; preds = %73, %100, %125, %84
  ret void
}

declare dso_local i32 @CG_Trace(%struct.TYPE_9__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local i32 @CG_BubbleTrail(i32, i32, i32) #1

declare dso_local i32 @trap_CM_BoxTrace(%struct.TYPE_9__*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @CG_MissileHitPlayer(i32, i32, i32, i64) #1

declare dso_local i32 @CG_MissileHitWall(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
