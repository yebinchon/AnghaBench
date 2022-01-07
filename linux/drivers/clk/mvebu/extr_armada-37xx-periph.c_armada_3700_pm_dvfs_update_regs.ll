; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_pm_dvfs_update_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_pm_dvfs_update_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARMADA_37XX_DVFS_LOAD_1 = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_L0L1 = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_L2L3 = common dso_local global i32 0, align 4
@ARMADA_37XX_DVFS_LOAD_0 = common dso_local global i32 0, align 4
@ARMADA_37XX_DVFS_LOAD_2 = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_CONFIG_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @armada_3700_pm_dvfs_update_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_3700_pm_dvfs_update_regs(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ARMADA_37XX_DVFS_LOAD_1, align 4
  %9 = icmp ule i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @ARMADA_37XX_NB_L0L1, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ARMADA_37XX_NB_L2L3, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ARMADA_37XX_DVFS_LOAD_0, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ARMADA_37XX_DVFS_LOAD_2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %16
  %25 = load i64, i64* @ARMADA_37XX_NB_CONFIG_SHIFT, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %25
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  br label %31

31:                                               ; preds = %24, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
