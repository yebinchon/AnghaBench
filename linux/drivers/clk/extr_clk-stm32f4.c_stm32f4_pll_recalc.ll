; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32 }
%struct.stm32f4_pll = type { i64 }

@base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @stm32f4_pll_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm32f4_pll_recalc(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_gate*, align 8
  %6 = alloca %struct.stm32f4_pll*, align 8
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %8)
  store %struct.clk_gate* %9, %struct.clk_gate** %5, align 8
  %10 = load %struct.clk_gate*, %struct.clk_gate** %5, align 8
  %11 = call %struct.stm32f4_pll* @to_stm32f4_pll(%struct.clk_gate* %10)
  store %struct.stm32f4_pll* %11, %struct.stm32f4_pll** %6, align 8
  %12 = load i64, i64* @base, align 8
  %13 = load %struct.stm32f4_pll*, %struct.stm32f4_pll** %6, align 8
  %14 = getelementptr inbounds %struct.stm32f4_pll, %struct.stm32f4_pll* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl(i64 %16)
  %18 = ashr i32 %17, 6
  %19 = and i32 %18, 511
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 %21, %22
  ret i64 %23
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local %struct.stm32f4_pll* @to_stm32f4_pll(%struct.clk_gate*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
