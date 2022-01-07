; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_sdmmc_mux = type { i64, i32, i32 }

@mux_non_lj_idx = common dso_local global i64* null, align 8
@mux_lj_idx = common dso_local global i64* null, align 8
@MUX_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_sdmmc_mux_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sdmmc_mux_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tegra_sdmmc_mux*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw* %13)
  store %struct.tegra_sdmmc_mux* %14, %struct.tegra_sdmmc_mux** %8, align 8
  store i64 0, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %18 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @div_frac_get(i64 %15, i64 %16, i32 8, i32 1, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %27 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %32 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %38 = call i64 @clk_sdmmc_mux_get_parent(%struct.clk_hw* %37)
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64*, i64** @mux_non_lj_idx, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  br label %51

46:                                               ; preds = %36
  %47 = load i64*, i64** @mux_lj_idx, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @MUX_SHIFT, align 8
  %54 = shl i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %61 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @writel(i32 %59, i32 %62)
  %64 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %65 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fence_udelay(i32 2, i32 %66)
  %68 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %69 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %51
  %73 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %8, align 8
  %74 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %72, %51
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw*) #1

declare dso_local i32 @div_frac_get(i64, i64, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @clk_sdmmc_mux_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @fence_udelay(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
