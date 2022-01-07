; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_build_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_build_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dev_pm_opp = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"couldn't get vmax opp, empty opp table?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TEGRA_DFLL_PMU_PWM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_build_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_build_lut(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dev_pm_opp*, align 8
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %7 = load i64, i64* @ULONG_MAX, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(i32 %12, i64* %4)
  store %struct.dev_pm_opp* %13, %struct.dev_pm_opp** %6, align 8
  %14 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %15 = call i64 @IS_ERR(%struct.dev_pm_opp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %26 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %28 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %27)
  %29 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TEGRA_DFLL_PMU_PWM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @dfll_build_pwm_lut(%struct.tegra_dfll* %35, i64 %36)
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @dfll_build_i2c_lut(%struct.tegra_dfll* %39, i64 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %34, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @dfll_build_pwm_lut(%struct.tegra_dfll*, i64) #1

declare dso_local i32 @dfll_build_i2c_lut(%struct.tegra_dfll*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
