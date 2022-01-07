; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa168.c_pxa168_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa168.c_pxa168_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_clk_unit = type { i64, %struct.mmp_clk_unit }
%struct.mmp_clk_unit = type { i32 }
%struct.clk = type { i32 }

@fixed_rate_clks = common dso_local global i32 0, align 4
@fixed_factor_clks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"uart_pll\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pll1_4\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@MPMU_UART_PLL = common dso_local global i64 0, align 8
@uart_factor_masks = common dso_local global i32 0, align 4
@uart_factor_tbl = common dso_local global i32 0, align 4
@PXA168_CLK_UART_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168_clk_unit*)* @pxa168_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa168_pll_init(%struct.pxa168_clk_unit* %0) #0 {
  %2 = alloca %struct.pxa168_clk_unit*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.mmp_clk_unit*, align 8
  store %struct.pxa168_clk_unit* %0, %struct.pxa168_clk_unit** %2, align 8
  %5 = load %struct.pxa168_clk_unit*, %struct.pxa168_clk_unit** %2, align 8
  %6 = getelementptr inbounds %struct.pxa168_clk_unit, %struct.pxa168_clk_unit* %5, i32 0, i32 1
  store %struct.mmp_clk_unit* %6, %struct.mmp_clk_unit** %4, align 8
  %7 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %8 = load i32, i32* @fixed_rate_clks, align 4
  %9 = load i32, i32* @fixed_rate_clks, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @mmp_register_fixed_rate_clks(%struct.mmp_clk_unit* %7, i32 %8, i32 %10)
  %12 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %13 = load i32, i32* @fixed_factor_clks, align 4
  %14 = load i32, i32* @fixed_factor_clks, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @mmp_register_fixed_factor_clks(%struct.mmp_clk_unit* %12, i32 %13, i32 %15)
  %17 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %18 = load %struct.pxa168_clk_unit*, %struct.pxa168_clk_unit** %2, align 8
  %19 = getelementptr inbounds %struct.pxa168_clk_unit, %struct.pxa168_clk_unit* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPMU_UART_PLL, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @uart_factor_tbl, align 4
  %24 = load i32, i32* @uart_factor_tbl, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call %struct.clk* @mmp_clk_register_factor(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %17, i64 %22, i32* @uart_factor_masks, i32 %23, i32 %25, i32* null)
  store %struct.clk* %26, %struct.clk** %3, align 8
  %27 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %28 = load i32, i32* @PXA168_CLK_UART_PLL, align 4
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = call i32 @mmp_clk_add(%struct.mmp_clk_unit* %27, i32 %28, %struct.clk* %29)
  ret void
}

declare dso_local i32 @mmp_register_fixed_rate_clks(%struct.mmp_clk_unit*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mmp_register_fixed_factor_clks(%struct.mmp_clk_unit*, i32, i32) #1

declare dso_local %struct.clk* @mmp_clk_register_factor(i8*, i8*, i32, i64, i32*, i32, i32, i32*) #1

declare dso_local i32 @mmp_clk_add(%struct.mmp_clk_unit*, i32, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
