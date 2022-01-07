; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-audio-pll.c_clk_audio_pll_frac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-audio-pll.c_clk_audio_pll_frac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_audio_frac = type { i32, i32, i32 }

@AT91_PMC_AUDIO_PLL0 = common dso_local global i32 0, align 4
@AT91_PMC_AUDIO_PLL_RESETN = common dso_local global i32 0, align 4
@AT91_PMC_AUDIO_PLL1 = common dso_local global i32 0, align 4
@AT91_PMC_AUDIO_PLL_FRACR_MASK = common dso_local global i32 0, align 4
@AT91_PMC_AUDIO_PLL_PLLEN = common dso_local global i32 0, align 4
@AT91_PMC_AUDIO_PLL_ND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_audio_pll_frac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_audio_pll_frac_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_audio_frac*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_audio_frac* @to_clk_audio_frac(%struct.clk_hw* %4)
  store %struct.clk_audio_frac* %5, %struct.clk_audio_frac** %3, align 8
  %6 = load %struct.clk_audio_frac*, %struct.clk_audio_frac** %3, align 8
  %7 = getelementptr inbounds %struct.clk_audio_frac, %struct.clk_audio_frac* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AT91_PMC_AUDIO_PLL0, align 4
  %10 = load i32, i32* @AT91_PMC_AUDIO_PLL_RESETN, align 4
  %11 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 0)
  %12 = load %struct.clk_audio_frac*, %struct.clk_audio_frac** %3, align 8
  %13 = getelementptr inbounds %struct.clk_audio_frac, %struct.clk_audio_frac* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AT91_PMC_AUDIO_PLL0, align 4
  %16 = load i32, i32* @AT91_PMC_AUDIO_PLL_RESETN, align 4
  %17 = load i32, i32* @AT91_PMC_AUDIO_PLL_RESETN, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.clk_audio_frac*, %struct.clk_audio_frac** %3, align 8
  %20 = getelementptr inbounds %struct.clk_audio_frac, %struct.clk_audio_frac* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AT91_PMC_AUDIO_PLL1, align 4
  %23 = load i32, i32* @AT91_PMC_AUDIO_PLL_FRACR_MASK, align 4
  %24 = load %struct.clk_audio_frac*, %struct.clk_audio_frac** %3, align 8
  %25 = getelementptr inbounds %struct.clk_audio_frac, %struct.clk_audio_frac* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.clk_audio_frac*, %struct.clk_audio_frac** %3, align 8
  %29 = getelementptr inbounds %struct.clk_audio_frac, %struct.clk_audio_frac* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AT91_PMC_AUDIO_PLL0, align 4
  %32 = load i32, i32* @AT91_PMC_AUDIO_PLL_PLLEN, align 4
  %33 = load i32, i32* @AT91_PMC_AUDIO_PLL_ND_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AT91_PMC_AUDIO_PLL_PLLEN, align 4
  %36 = load %struct.clk_audio_frac*, %struct.clk_audio_frac** %3, align 8
  %37 = getelementptr inbounds %struct.clk_audio_frac, %struct.clk_audio_frac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AT91_PMC_AUDIO_PLL_ND(i32 %38)
  %40 = or i32 %35, %39
  %41 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %34, i32 %40)
  ret i32 0
}

declare dso_local %struct.clk_audio_frac* @to_clk_audio_frac(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @AT91_PMC_AUDIO_PLL_ND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
