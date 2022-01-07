; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pm_cpu = type { %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOAD_LEVEL_NR = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_DIV_OFF = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_DIV_MASK = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_CPU_LOAD = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_CPU_LOAD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pm_cpu_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pm_cpu_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pm_cpu*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = call %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw* %16)
  store %struct.clk_pm_cpu* %17, %struct.clk_pm_cpu** %8, align 8
  %18 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %8, align 8
  %19 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %18, i32 0, i32 0
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.regmap*, %struct.regmap** %9, align 8
  %26 = call i32 @armada_3700_pm_dvfs_is_enabled(%struct.regmap* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %72

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %66, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @LOAD_LEVEL_NR, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %32
  %37 = load i32, i32* @ARMADA_37XX_NB_TBG_DIV_OFF, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @armada_3700_pm_dvfs_update_regs(i32 %38, i32* %12, i32* %15)
  %40 = load %struct.regmap*, %struct.regmap** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @regmap_read(%struct.regmap* %40, i32 %41, i32* %14)
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %14, align 4
  %45 = lshr i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @ARMADA_37XX_NB_TBG_DIV_MASK, align 4
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %36
  %53 = load i32, i32* @ARMADA_37XX_NB_CPU_LOAD, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @ARMADA_37XX_NB_CPU_LOAD_MASK, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.regmap*, %struct.regmap** %9, align 8
  %57 = call i32 @clk_pm_cpu_set_rate_wa(i64 %55, %struct.regmap* %56)
  %58 = load %struct.regmap*, %struct.regmap** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @regmap_update_bits(%struct.regmap* %58, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %32

69:                                               ; preds = %32
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %52, %28
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw*) #1

declare dso_local i32 @armada_3700_pm_dvfs_is_enabled(%struct.regmap*) #1

declare dso_local i32 @armada_3700_pm_dvfs_update_regs(i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @clk_pm_cpu_set_rate_wa(i64, %struct.regmap*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
