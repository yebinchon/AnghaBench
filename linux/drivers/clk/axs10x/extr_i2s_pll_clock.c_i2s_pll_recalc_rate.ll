; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.i2s_pll_clk = type { i32 }

@PLL_IDIV_REG = common dso_local global i32 0, align 4
@PLL_FBDIV_REG = common dso_local global i32 0, align 4
@PLL_ODIV0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @i2s_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2s_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2s_pll_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.i2s_pll_clk* @to_i2s_pll_clk(%struct.clk_hw* %9)
  store %struct.i2s_pll_clk* %10, %struct.i2s_pll_clk** %5, align 8
  %11 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %5, align 8
  %12 = load i32, i32* @PLL_IDIV_REG, align 4
  %13 = call i32 @i2s_pll_read(%struct.i2s_pll_clk* %11, i32 %12)
  %14 = call i32 @i2s_pll_get_value(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %5, align 8
  %16 = load i32, i32* @PLL_FBDIV_REG, align 4
  %17 = call i32 @i2s_pll_read(%struct.i2s_pll_clk* %15, i32 %16)
  %18 = call i32 @i2s_pll_get_value(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %5, align 8
  %20 = load i32, i32* @PLL_ODIV0_REG, align 4
  %21 = call i32 @i2s_pll_read(%struct.i2s_pll_clk* %19, i32 %20)
  %22 = call i32 @i2s_pll_get_value(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = udiv i64 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %29, %31
  ret i64 %32
}

declare dso_local %struct.i2s_pll_clk* @to_i2s_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @i2s_pll_get_value(i32) #1

declare dso_local i32 @i2s_pll_read(%struct.i2s_pll_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
