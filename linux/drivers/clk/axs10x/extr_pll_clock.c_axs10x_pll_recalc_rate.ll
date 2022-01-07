; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axs10x_pll_clk = type { i32 }

@PLL_REG_IDIV = common dso_local global i32 0, align 4
@PLL_REG_FBDIV = common dso_local global i32 0, align 4
@PLL_REG_ODIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @axs10x_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @axs10x_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.axs10x_pll_clk*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.axs10x_pll_clk* @to_axs10x_pll_clk(%struct.clk_hw* %10)
  store %struct.axs10x_pll_clk* %11, %struct.axs10x_pll_clk** %9, align 8
  %12 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %13 = load i32, i32* @PLL_REG_IDIV, align 4
  %14 = call i32 @axs10x_pll_read(%struct.axs10x_pll_clk* %12, i32 %13)
  %15 = call i64 @axs10x_div_get_value(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %17 = load i32, i32* @PLL_REG_FBDIV, align 4
  %18 = call i32 @axs10x_pll_read(%struct.axs10x_pll_clk* %16, i32 %17)
  %19 = call i64 @axs10x_div_get_value(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %21 = load i32, i32* @PLL_REG_ODIV, align 4
  %22 = call i32 @axs10x_pll_read(%struct.axs10x_pll_clk* %20, i32 %21)
  %23 = call i64 @axs10x_div_get_value(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = mul i64 %24, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = mul i64 %28, %29
  %31 = call i32 @do_div(i64 %27, i64 %30)
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local %struct.axs10x_pll_clk* @to_axs10x_pll_clk(%struct.clk_hw*) #1

declare dso_local i64 @axs10x_div_get_value(i32) #1

declare dso_local i32 @axs10x_pll_read(%struct.axs10x_pll_clk*, i32) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
