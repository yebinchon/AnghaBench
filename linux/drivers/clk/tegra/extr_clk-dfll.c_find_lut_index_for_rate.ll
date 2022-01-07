; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_find_lut_index_for_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_find_lut_index_for_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dev_pm_opp = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*, i64)* @find_lut_index_for_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_lut_index_for_rate(%struct.tegra_dfll* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dfll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dev_pm_opp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32 %13, i64* %5)
  store %struct.dev_pm_opp* %14, %struct.dev_pm_opp** %6, align 8
  %15 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %16 = call i64 @IS_ERR(%struct.dev_pm_opp* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.dev_pm_opp* %19)
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %23 = call i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %22)
  %24 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %23, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %32 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %31)
  %33 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %62, %21
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %49, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %59, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
