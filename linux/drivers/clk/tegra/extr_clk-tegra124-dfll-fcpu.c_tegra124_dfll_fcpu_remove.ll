; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra124-dfll-fcpu.c_tegra124_dfll_fcpu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra124-dfll-fcpu.c_tegra124_dfll_fcpu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_dfll_soc_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to unregister DFLL: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra124_dfll_fcpu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_dfll_fcpu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_dfll_soc_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.tegra_dfll_soc_data* @tegra_dfll_unregister(%struct.platform_device* %5)
  store %struct.tegra_dfll_soc_data* %6, %struct.tegra_dfll_soc_data** %4, align 8
  %7 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %4, align 8
  %8 = call i64 @IS_ERR(%struct.tegra_dfll_soc_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.tegra_dfll_soc_data* %13)
  %15 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.tegra_dfll_soc_data* %16)
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tegra_cvb_remove_opp_table(i32 %21, i32 %24, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.tegra_dfll_soc_data* @tegra_dfll_unregister(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_dfll_soc_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_dfll_soc_data*) #1

declare dso_local i32 @tegra_cvb_remove_opp_table(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
