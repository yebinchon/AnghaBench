; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankFireWeapon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankFireWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WP_GAUNTLET = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_MACHINEGUN = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_SHOTGUN = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_GRENADE = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_ROCKET = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_LIGHTNING = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_RAILGUN = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_PLASMA = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_BFG = common dso_local global i32 0, align 4
@QGR_KEY_SHOT_FIRED_GRAPPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankFireWeapon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %55

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @WP_GAUNTLET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %55

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @QGR_KEY_SHOT_FIRED, align 4
  %16 = call i32 @trap_RankReportInt(i32 %14, i32 -1, i32 %15, i32 1, i32 1)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %54 [
    i32 132, label %18
    i32 128, label %22
    i32 134, label %26
    i32 129, label %30
    i32 133, label %34
    i32 130, label %38
    i32 131, label %42
    i32 136, label %46
    i32 135, label %50
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @QGR_KEY_SHOT_FIRED_MACHINEGUN, align 4
  %21 = call i32 @trap_RankReportInt(i32 %19, i32 -1, i32 %20, i32 1, i32 1)
  br label %55

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @QGR_KEY_SHOT_FIRED_SHOTGUN, align 4
  %25 = call i32 @trap_RankReportInt(i32 %23, i32 -1, i32 %24, i32 1, i32 1)
  br label %55

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @QGR_KEY_SHOT_FIRED_GRENADE, align 4
  %29 = call i32 @trap_RankReportInt(i32 %27, i32 -1, i32 %28, i32 1, i32 1)
  br label %55

30:                                               ; preds = %13
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @QGR_KEY_SHOT_FIRED_ROCKET, align 4
  %33 = call i32 @trap_RankReportInt(i32 %31, i32 -1, i32 %32, i32 1, i32 1)
  br label %55

34:                                               ; preds = %13
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @QGR_KEY_SHOT_FIRED_LIGHTNING, align 4
  %37 = call i32 @trap_RankReportInt(i32 %35, i32 -1, i32 %36, i32 1, i32 1)
  br label %55

38:                                               ; preds = %13
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @QGR_KEY_SHOT_FIRED_RAILGUN, align 4
  %41 = call i32 @trap_RankReportInt(i32 %39, i32 -1, i32 %40, i32 1, i32 1)
  br label %55

42:                                               ; preds = %13
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @QGR_KEY_SHOT_FIRED_PLASMA, align 4
  %45 = call i32 @trap_RankReportInt(i32 %43, i32 -1, i32 %44, i32 1, i32 1)
  br label %55

46:                                               ; preds = %13
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @QGR_KEY_SHOT_FIRED_BFG, align 4
  %49 = call i32 @trap_RankReportInt(i32 %47, i32 -1, i32 %48, i32 1, i32 1)
  br label %55

50:                                               ; preds = %13
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @QGR_KEY_SHOT_FIRED_GRAPPLE, align 4
  %53 = call i32 @trap_RankReportInt(i32 %51, i32 -1, i32 %52, i32 1, i32 1)
  br label %55

54:                                               ; preds = %13
  br label %55

55:                                               ; preds = %7, %12, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
