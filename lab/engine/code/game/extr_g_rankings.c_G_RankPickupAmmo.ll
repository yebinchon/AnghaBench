; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankPickupAmmo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_rankings.c_G_RankPickupAmmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@QGR_KEY_BOXES = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_BULLETS = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_BULLETS = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_SHELLS = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_SHELLS = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_GRENADES = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_GRENADES = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_ROCKETS = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_ROCKETS = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_LG_AMMO = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_LG_AMMO = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_SLUGS = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_SLUGS = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_CELLS = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_CELLS = common dso_local global i32 0, align 4
@QGR_KEY_BOXES_BFG_AMMO = common dso_local global i32 0, align 4
@QGR_KEY_ROUNDS_BFG_AMMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankPickupAmmo(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %84

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @QGR_KEY_BOXES, align 4
  %13 = call i32 @trap_RankReportInt(i32 %11, i32 -1, i32 %12, i32 1, i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @QGR_KEY_ROUNDS, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @trap_RankReportInt(i32 %14, i32 -1, i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %83 [
    i32 132, label %19
    i32 128, label %27
    i32 134, label %35
    i32 129, label %43
    i32 133, label %51
    i32 130, label %59
    i32 131, label %67
    i32 135, label %75
  ]

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @QGR_KEY_BOXES_BULLETS, align 4
  %22 = call i32 @trap_RankReportInt(i32 %20, i32 -1, i32 %21, i32 1, i32 1)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @QGR_KEY_ROUNDS_BULLETS, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @trap_RankReportInt(i32 %23, i32 -1, i32 %24, i32 %25, i32 1)
  br label %84

27:                                               ; preds = %10
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @QGR_KEY_BOXES_SHELLS, align 4
  %30 = call i32 @trap_RankReportInt(i32 %28, i32 -1, i32 %29, i32 1, i32 1)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @QGR_KEY_ROUNDS_SHELLS, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @trap_RankReportInt(i32 %31, i32 -1, i32 %32, i32 %33, i32 1)
  br label %84

35:                                               ; preds = %10
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @QGR_KEY_BOXES_GRENADES, align 4
  %38 = call i32 @trap_RankReportInt(i32 %36, i32 -1, i32 %37, i32 1, i32 1)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @QGR_KEY_ROUNDS_GRENADES, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @trap_RankReportInt(i32 %39, i32 -1, i32 %40, i32 %41, i32 1)
  br label %84

43:                                               ; preds = %10
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @QGR_KEY_BOXES_ROCKETS, align 4
  %46 = call i32 @trap_RankReportInt(i32 %44, i32 -1, i32 %45, i32 1, i32 1)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @QGR_KEY_ROUNDS_ROCKETS, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @trap_RankReportInt(i32 %47, i32 -1, i32 %48, i32 %49, i32 1)
  br label %84

51:                                               ; preds = %10
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @QGR_KEY_BOXES_LG_AMMO, align 4
  %54 = call i32 @trap_RankReportInt(i32 %52, i32 -1, i32 %53, i32 1, i32 1)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @QGR_KEY_ROUNDS_LG_AMMO, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @trap_RankReportInt(i32 %55, i32 -1, i32 %56, i32 %57, i32 1)
  br label %84

59:                                               ; preds = %10
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @QGR_KEY_BOXES_SLUGS, align 4
  %62 = call i32 @trap_RankReportInt(i32 %60, i32 -1, i32 %61, i32 1, i32 1)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @QGR_KEY_ROUNDS_SLUGS, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @trap_RankReportInt(i32 %63, i32 -1, i32 %64, i32 %65, i32 1)
  br label %84

67:                                               ; preds = %10
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @QGR_KEY_BOXES_CELLS, align 4
  %70 = call i32 @trap_RankReportInt(i32 %68, i32 -1, i32 %69, i32 1, i32 1)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @QGR_KEY_ROUNDS_CELLS, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @trap_RankReportInt(i32 %71, i32 -1, i32 %72, i32 %73, i32 1)
  br label %84

75:                                               ; preds = %10
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @QGR_KEY_BOXES_BFG_AMMO, align 4
  %78 = call i32 @trap_RankReportInt(i32 %76, i32 -1, i32 %77, i32 1, i32 1)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @QGR_KEY_ROUNDS_BFG_AMMO, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @trap_RankReportInt(i32 %79, i32 -1, i32 %80, i32 %81, i32 1)
  br label %84

83:                                               ; preds = %10
  br label %84

84:                                               ; preds = %9, %83, %75, %67, %59, %51, %43, %35, %27, %19
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
