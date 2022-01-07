; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.stm32_pll_obj = type { i32, i32 }

@PLL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.stm32_pll_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.stm32_pll_obj* @to_pll(%struct.clk_hw* %6)
  store %struct.stm32_pll_obj* %7, %struct.stm32_pll_obj** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl_relaxed(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @PLL_ON, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel_relaxed(i32 %21, i32 %24)
  %26 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  ret void
}

declare dso_local %struct.stm32_pll_obj* @to_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
