; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankPickupWeapon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankPickupWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@QGR_KEY_PICKUP_WEAPON = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_GAUNTLET = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_MACHINEGUN = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_SHOTGUN = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_GRENADE = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_ROCKET = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_LIGHTNING = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_RAILGUN = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_PLASMA = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_BFG = common dso_local global i32 0, align 4
@QGR_KEY_PICKUP_GRAPPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankPickupWeapon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %54

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @QGR_KEY_PICKUP_WEAPON, align 4
  %11 = call i32 @trap_RankReportInt(i32 %9, i32 -1, i32 %10, i32 1, i32 1)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %53 [
    i32 136, label %13
    i32 132, label %17
    i32 128, label %21
    i32 134, label %25
    i32 129, label %29
    i32 133, label %33
    i32 130, label %37
    i32 131, label %41
    i32 137, label %45
    i32 135, label %49
  ]

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @QGR_KEY_PICKUP_GAUNTLET, align 4
  %16 = call i32 @trap_RankReportInt(i32 %14, i32 -1, i32 %15, i32 1, i32 1)
  br label %54

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @QGR_KEY_PICKUP_MACHINEGUN, align 4
  %20 = call i32 @trap_RankReportInt(i32 %18, i32 -1, i32 %19, i32 1, i32 1)
  br label %54

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @QGR_KEY_PICKUP_SHOTGUN, align 4
  %24 = call i32 @trap_RankReportInt(i32 %22, i32 -1, i32 %23, i32 1, i32 1)
  br label %54

25:                                               ; preds = %8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @QGR_KEY_PICKUP_GRENADE, align 4
  %28 = call i32 @trap_RankReportInt(i32 %26, i32 -1, i32 %27, i32 1, i32 1)
  br label %54

29:                                               ; preds = %8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @QGR_KEY_PICKUP_ROCKET, align 4
  %32 = call i32 @trap_RankReportInt(i32 %30, i32 -1, i32 %31, i32 1, i32 1)
  br label %54

33:                                               ; preds = %8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @QGR_KEY_PICKUP_LIGHTNING, align 4
  %36 = call i32 @trap_RankReportInt(i32 %34, i32 -1, i32 %35, i32 1, i32 1)
  br label %54

37:                                               ; preds = %8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @QGR_KEY_PICKUP_RAILGUN, align 4
  %40 = call i32 @trap_RankReportInt(i32 %38, i32 -1, i32 %39, i32 1, i32 1)
  br label %54

41:                                               ; preds = %8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @QGR_KEY_PICKUP_PLASMA, align 4
  %44 = call i32 @trap_RankReportInt(i32 %42, i32 -1, i32 %43, i32 1, i32 1)
  br label %54

45:                                               ; preds = %8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @QGR_KEY_PICKUP_BFG, align 4
  %48 = call i32 @trap_RankReportInt(i32 %46, i32 -1, i32 %47, i32 1, i32 1)
  br label %54

49:                                               ; preds = %8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @QGR_KEY_PICKUP_GRAPPLE, align 4
  %52 = call i32 @trap_RankReportInt(i32 %50, i32 -1, i32 %51, i32 1, i32 1)
  br label %54

53:                                               ; preds = %8
  br label %54

54:                                               ; preds = %7, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
