; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll-s10.c_clk_boot_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-pll-s10.c_clk_boot_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SWCTRLBTCLKSEL_MASK = common dso_local global i32 0, align 4
@SWCTRLBTCLKSEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_boot_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_boot_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.socfpga_pll*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw* %7)
  store %struct.socfpga_pll* %8, %struct.socfpga_pll** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.socfpga_pll*, %struct.socfpga_pll** %5, align 8
  %10 = getelementptr inbounds %struct.socfpga_pll, %struct.socfpga_pll* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load i32, i32* @SWCTRLBTCLKSEL_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @SWCTRLBTCLKSEL_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = udiv i64 %22, %21
  store i64 %23, i64* %4, align 8
  ret i64 %23
}

declare dso_local %struct.socfpga_pll* @to_socfpga_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
