; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_clk_pm_cpu_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pm_cpu = type { %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOAD_LEVEL_NR = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_SEL_OFF = common dso_local global i32 0, align 4
@ARMADA_37XX_NB_TBG_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_pm_cpu_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pm_cpu_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_pm_cpu*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw* %13)
  store %struct.clk_pm_cpu* %14, %struct.clk_pm_cpu** %6, align 8
  %15 = load %struct.clk_pm_cpu*, %struct.clk_pm_cpu** %6, align 8
  %16 = getelementptr inbounds %struct.clk_pm_cpu, %struct.clk_pm_cpu* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %7, align 8
  %18 = load %struct.regmap*, %struct.regmap** %7, align 8
  %19 = call i64 @IS_ERR(%struct.regmap* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = call i64 @armada_3700_pm_dvfs_is_enabled(%struct.regmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @LOAD_LEVEL_NR, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32, i32* @ARMADA_37XX_NB_TBG_SEL_OFF, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @armada_3700_pm_dvfs_update_regs(i32 %35, i32* %9, i32* %12)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @ARMADA_37XX_NB_TBG_SEL_MASK, align 4
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.regmap*, %struct.regmap** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @regmap_update_bits(%struct.regmap* %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %29

51:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.clk_pm_cpu* @to_clk_pm_cpu(%struct.clk_hw*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i64 @armada_3700_pm_dvfs_is_enabled(%struct.regmap*) #1

declare dso_local i32 @armada_3700_pm_dvfs_update_regs(i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
