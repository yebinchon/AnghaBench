; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pm_cpu = type { %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@LOAD_LEVEL_NR = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_DIV_OFF = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_pm_cpu_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pm_cpu_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_pm_cpu*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw* %15)
  store %struct.clk_pm_cpu* %16, %struct.clk_pm_cpu** %8, align 8
  %17 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %8, align 8
  %18 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %9, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.regmap*, %struct.regmap** %9, align 8
  %26 = call i32 @armada_3700_pm_dvfs_is_enabled(%struct.regmap* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %65

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @LOAD_LEVEL_NR, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load i32, i32* @ARMADA_37XX_NB_TBG_DIV_OFF, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @armada_3700_pm_dvfs_update_regs(i32 %38, i32* %12, i32* %14)
  %40 = load %struct.regmap*, %struct.regmap** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @regmap_read(%struct.regmap* %40, i32 %41, i32* %13)
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = lshr i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @ARMADA_37XX_NB_TBG_DIV_MASK, align 4
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = udiv i64 %54, %56
  store i64 %57, i64* %4, align 8
  br label %65

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %32

62:                                               ; preds = %32
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %62, %52, %28
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw*) #1

declare dso_local i32 @armada_3700_pm_dvfs_is_enabled(%struct.regmap*) #1

declare dso_local i32 @armada_3700_pm_dvfs_update_regs(i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
