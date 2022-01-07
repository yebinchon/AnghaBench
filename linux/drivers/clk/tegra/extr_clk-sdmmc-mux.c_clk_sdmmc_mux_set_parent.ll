; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_sdmmc_mux = type { i32 }

@mux_non_lj_idx = common dso_local global i64* null, align 8
@mux_lj_idx = common dso_local global i64* null, align 8
@MUX_MASK = common dso_local global i64 0, align 8
@MUX_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @clk_sdmmc_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sdmmc_mux_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_sdmmc_mux*, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw* %7)
  store %struct.tegra_sdmmc_mux* %8, %struct.tegra_sdmmc_mux** %5, align 8
  %9 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @readl_relaxed(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @get_div_field(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64*, i64** @mux_non_lj_idx, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i64*, i64** @mux_lj_idx, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i64, i64* @MUX_MASK, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @MUX_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel(i64 %36, i32 %39)
  ret i32 0
}

declare dso_local %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i64 @get_div_field(i64) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
