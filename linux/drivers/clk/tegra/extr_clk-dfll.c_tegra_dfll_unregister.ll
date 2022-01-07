; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_tegra_dfll_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_tegra_dfll_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll_soc_data = type { i32 }
%struct.platform_device = type { i32 }
%struct.tegra_dfll = type { i64, %struct.tegra_dfll_soc_data*, i32, i32, i32, i32, i32 }

@DFLL_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"must disable DFLL before removing driver\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_dfll_soc_data* @tegra_dfll_unregister(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.tegra_dfll_soc_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_dfll*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.tegra_dfll* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.tegra_dfll* %6, %struct.tegra_dfll** %4, align 8
  %7 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DFLL_DISABLED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.tegra_dfll_soc_data* @ERR_PTR(i32 %17)
  store %struct.tegra_dfll_soc_data* %18, %struct.tegra_dfll_soc_data** %2, align 8
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debugfs_remove_recursive(i32 %22)
  %24 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %25 = call i32 @dfll_unregister_clk(%struct.tegra_dfll* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_disable(i32* %27)
  %29 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_unprepare(i32 %31)
  %33 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_unprepare(i32 %35)
  %37 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_unprepare(i32 %39)
  %41 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @reset_control_assert(i32 %43)
  %45 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %45, i32 0, i32 1
  %47 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %46, align 8
  store %struct.tegra_dfll_soc_data* %47, %struct.tegra_dfll_soc_data** %2, align 8
  br label %48

48:                                               ; preds = %19, %12
  %49 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %2, align 8
  ret %struct.tegra_dfll_soc_data* %49
}

declare dso_local %struct.tegra_dfll* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.tegra_dfll_soc_data* @ERR_PTR(i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @dfll_unregister_clk(%struct.tegra_dfll*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
