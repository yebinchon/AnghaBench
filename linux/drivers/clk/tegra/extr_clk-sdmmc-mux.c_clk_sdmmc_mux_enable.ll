; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_sdmmc_mux = type { %struct.TYPE_2__, %struct.clk_ops* }
%struct.TYPE_2__ = type { %struct.clk_hw }
%struct.clk_ops = type { i32 (%struct.clk_hw*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_sdmmc_mux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sdmmc_mux_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tegra_sdmmc_mux*, align 8
  %4 = alloca %struct.clk_ops*, align 8
  %5 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw* %6)
  store %struct.tegra_sdmmc_mux* %7, %struct.tegra_sdmmc_mux** %3, align 8
  %8 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %8, i32 0, i32 1
  %10 = load %struct.clk_ops*, %struct.clk_ops** %9, align 8
  store %struct.clk_ops* %10, %struct.clk_ops** %4, align 8
  %11 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.clk_hw* %13, %struct.clk_hw** %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %16 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %14, %struct.clk_hw* %15)
  %17 = load %struct.clk_ops*, %struct.clk_ops** %4, align 8
  %18 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %18, align 8
  %20 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %21 = call i32 %19(%struct.clk_hw* %20)
  ret i32 %21
}

declare dso_local %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
