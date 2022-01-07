; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll-s10.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll-s10.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCFPGA_PLL_REFDIV_MASK = common dso_local global i64 0, align 8
@SOCFPGA_PLL_REFDIV_SHIFT = common dso_local global i64 0, align 8
@SOCFPGA_PLL_MDIV_MASK = common dso_local global i64 0, align 8
@SOCFPGA_PLL_MDIV_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.socfpga_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw* %10)
  store %struct.socfpga_pll* %11, %struct.socfpga_pll** %5, align 8
  %12 = load %struct.socfpga_pll*, %struct.socfpga_pll** %5, align 8
  %13 = getelementptr inbounds %struct.socfpga_pll, %struct.socfpga_pll* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @readl(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @SOCFPGA_PLL_REFDIV_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @SOCFPGA_PLL_REFDIV_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %9, align 8
  %25 = load %struct.socfpga_pll*, %struct.socfpga_pll** %5, align 8
  %26 = getelementptr inbounds %struct.socfpga_pll, %struct.socfpga_pll* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i64 @readl(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @SOCFPGA_PLL_MDIV_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @SOCFPGA_PLL_MDIV_SHIFT, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 6
  %39 = mul i64 %36, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  ret i64 %40
}

declare dso_local %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw*) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
