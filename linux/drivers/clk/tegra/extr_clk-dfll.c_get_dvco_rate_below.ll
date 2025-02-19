; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_get_dvco_rate_below.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_get_dvco_rate_below.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dev_pm_opp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tegra_dfll*, i64)* @get_dvco_rate_below to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_dvco_rate_below(%struct.tegra_dfll* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tegra_dfll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dev_pm_opp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %43, %2
  %18 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32 %22, i64* %7)
  store %struct.dev_pm_opp* %23, %struct.dev_pm_opp** %6, align 8
  %24 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %25 = call i64 @IS_ERR(%struct.dev_pm_opp* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %30 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %32 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %31)
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %3, align 8
  br label %48

41:                                               ; preds = %35, %28
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %17

46:                                               ; preds = %27
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
