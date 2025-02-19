; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_pll_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_pll_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @pll_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_is_enabled(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_alpha_pll*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %9)
  store %struct.clk_alpha_pll* %10, %struct.clk_alpha_pll** %7, align 8
  %11 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %7, align 8
  %12 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %7, align 8
  %16 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %15)
  %17 = call i32 @regmap_read(i32 %14, i32 %16, i32* %8)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
