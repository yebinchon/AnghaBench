; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-sdmmc-mux.c_clk_sdmmc_mux_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, i32, i32 }
%struct.tegra_sdmmc_mux = type { i32 }

@TEGRA_DIVIDER_ROUND_UP = common dso_local global i32 0, align 4
@SDMMC_MUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_sdmmc_mux_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sdmmc_mux_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.tegra_sdmmc_mux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw* %9)
  store %struct.tegra_sdmmc_mux* %10, %struct.tegra_sdmmc_mux** %6, align 8
  %11 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %12 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %15 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %18 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @max(i64 %16, i32 %19)
  %21 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %22 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %24 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %27 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @min(i64 %25, i32 %28)
  %30 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %31 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %33 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %82

39:                                               ; preds = %2
  %40 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %41 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @div_frac_get(i64 %42, i64 %43, i32 8, i32 1, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.tegra_sdmmc_mux*, %struct.tegra_sdmmc_mux** %6, align 8
  %53 = getelementptr inbounds %struct.tegra_sdmmc_mux, %struct.tegra_sdmmc_mux* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TEGRA_DIVIDER_ROUND_UP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @SDMMC_MUL, align 8
  %61 = mul i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @SDMMC_MUL, align 8
  %65 = add i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @DIV_ROUND_UP(i64 %61, i32 %66)
  %68 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %69 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %81

70:                                               ; preds = %51
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @SDMMC_MUL, align 8
  %73 = mul i64 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @SDMMC_MUL, align 8
  %77 = add i64 %75, %76
  %78 = udiv i64 %73, %77
  %79 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %80 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %70, %58
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.tegra_sdmmc_mux* @to_clk_sdmmc_mux(%struct.clk_hw*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @div_frac_get(i64, i64, i32, i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
