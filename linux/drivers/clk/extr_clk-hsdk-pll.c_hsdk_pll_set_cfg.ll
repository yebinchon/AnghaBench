; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsdk_pll_clk = type { i32 }
%struct.hsdk_pll_cfg = type { i32, i32, i32, i32 }

@CGU_PLL_CTRL_IDIV_SHIFT = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_FBDIV_SHIFT = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_ODIV_SHIFT = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_BAND_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"write configuration: %#x\0A\00", align 1
@CGU_PLL_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsdk_pll_clk*, %struct.hsdk_pll_cfg*)* @hsdk_pll_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsdk_pll_set_cfg(%struct.hsdk_pll_clk* %0, %struct.hsdk_pll_cfg* %1) #0 {
  %3 = alloca %struct.hsdk_pll_clk*, align 8
  %4 = alloca %struct.hsdk_pll_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.hsdk_pll_clk* %0, %struct.hsdk_pll_clk** %3, align 8
  store %struct.hsdk_pll_cfg* %1, %struct.hsdk_pll_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %4, align 8
  %7 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CGU_PLL_CTRL_IDIV_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CGU_PLL_CTRL_FBDIV_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CGU_PLL_CTRL_ODIV_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CGU_PLL_CTRL_BAND_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %3, align 8
  %35 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %3, align 8
  %40 = load i32, i32* @CGU_PLL_CTRL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @hsdk_pll_write(%struct.hsdk_pll_clk* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @hsdk_pll_write(%struct.hsdk_pll_clk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
