; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_spll_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_spll_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_sys_pll = type { i64, i32 }

@PLL_ODIV_SHIFT = common dso_local global i32 0, align 4
@PLL_ODIV_MASK = common dso_local global i32 0, align 4
@PLL_MULT_SHIFT = common dso_local global i32 0, align 4
@PLL_MULT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @spll_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spll_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pic32_sys_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.pic32_sys_pll* @clkhw_to_spll(%struct.clk_hw* %12)
  store %struct.pic32_sys_pll* %13, %struct.pic32_sys_pll** %5, align 8
  %14 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %5, align 8
  %15 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @readl(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @PLL_ODIV_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @PLL_ODIV_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PLL_MULT_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* @PLL_MULT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @spll_odiv_to_divider(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %5, align 8
  %33 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = udiv i64 %31, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @do_div(i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  ret i64 %45
}

declare dso_local %struct.pic32_sys_pll* @clkhw_to_spll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spll_odiv_to_divider(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
