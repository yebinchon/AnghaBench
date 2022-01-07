; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_pm_dvfs_get_cpu_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_pm_dvfs_get_cpu_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@ARMADA_37XX_NB_CPU_LOAD = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_DIV_OFF = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_CPU_LOAD_MASK = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @armada_3700_pm_dvfs_get_cpu_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_3700_pm_dvfs_get_cpu_div(%struct.regmap* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %2, align 8
  %7 = load i32, i32* @ARMADA_37XX_NB_CPU_LOAD, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @ARMADA_37XX_NB_TBG_DIV_OFF, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.regmap*, %struct.regmap** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @regmap_read(%struct.regmap* %9, i32 %10, i32* %5)
  %12 = load i32, i32* @ARMADA_37XX_NB_CPU_LOAD_MASK, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @armada_3700_pm_dvfs_update_regs(i32 %15, i32* %3, i32* %4)
  %17 = load %struct.regmap*, %struct.regmap** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = lshr i32 %20, %21
  %23 = load i32, i32* @ARMADA_37XX_NB_TBG_DIV_MASK, align 4
  %24 = and i32 %22, %23
  ret i32 %24
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @armada_3700_pm_dvfs_update_regs(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
