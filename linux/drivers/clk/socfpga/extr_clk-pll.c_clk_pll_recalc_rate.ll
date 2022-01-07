; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@clk_mgr_base_addr = common dso_local global i32 0, align 4
@CLKMGR_BYPASS = common dso_local global i32 0, align 4
@MAINPLL_BYPASS = common dso_local global i64 0, align 8
@SOCFPGA_PLL_DIVF_MASK = common dso_local global i64 0, align 8
@SOCFPGA_PLL_DIVF_SHIFT = common dso_local global i64 0, align 8
@SOCFPGA_PLL_DIVQ_MASK = common dso_local global i64 0, align 8
@SOCFPGA_PLL_DIVQ_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.socfpga_pll*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw* %12)
  store %struct.socfpga_pll* %13, %struct.socfpga_pll** %6, align 8
  %14 = load %struct.socfpga_pll*, %struct.socfpga_pll** %6, align 8
  %15 = getelementptr inbounds %struct.socfpga_pll, %struct.socfpga_pll* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @readl(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @clk_mgr_base_addr, align 4
  %20 = load i32, i32* @CLKMGR_BYPASS, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i64 @readl(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @MAINPLL_BYPASS, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %3, align 8
  br label %50

29:                                               ; preds = %2
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @SOCFPGA_PLL_DIVF_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @SOCFPGA_PLL_DIVF_SHIFT, align 8
  %34 = lshr i64 %32, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @SOCFPGA_PLL_DIVQ_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @SOCFPGA_PLL_DIVQ_SHIFT, align 8
  %39 = lshr i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  %43 = mul i64 %40, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 1, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @do_div(i64 %44, i32 %47)
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %29, %27
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
