; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_mii_busy_wait.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_mii_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7620_gsw = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MT7620A_GSW_REG_PIAC = common dso_local global i32 0, align 4
@GSW_MDIO_ACCESS = common dso_local global i32 0, align 4
@GSW_REG_PHY_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"mdio: MDIO timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7620_gsw*)* @mt7620_mii_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7620_mii_busy_wait(%struct.mt7620_gsw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7620_gsw*, align 8
  %4 = alloca i64, align 8
  store %struct.mt7620_gsw* %0, %struct.mt7620_gsw** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  store i64 %5, i64* %4, align 8
  br label %6

6:                                                ; preds = %1, %22
  %7 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %3, align 8
  %8 = load i32, i32* @MT7620A_GSW_REG_PIAC, align 4
  %9 = call i32 @mtk_switch_r32(%struct.mt7620_gsw* %7, i32 %8)
  %10 = load i32, i32* @GSW_MDIO_ACCESS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %28

14:                                               ; preds = %6
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @GSW_REG_PHY_TIMEOUT, align 8
  %18 = add i64 %16, %17
  %19 = call i64 @time_after(i64 %15, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14
  br label %6

23:                                               ; preds = %21
  %24 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %3, align 8
  %25 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mtk_switch_r32(%struct.mt7620_gsw*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
