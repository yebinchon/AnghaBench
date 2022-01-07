; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa3xx.c_clk_pxa3xx_smemc_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa3xx.c_clk_pxa3xx_smemc_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@ACSR = common dso_local global i64 0, align 8
@MEMCLKCFG = common dso_local global i32 0, align 4
@smcfs_mult = common dso_local global i64* null, align 8
@df_clkdiv = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pxa3xx_smemc_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pxa3xx_smemc_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @ACSR, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @MEMCLKCFG, align 4
  %9 = call i64 @__raw_readl(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = udiv i64 %10, 48
  %12 = load i64*, i64** @smcfs_mult, align 8
  %13 = load i64, i64* %5, align 8
  %14 = lshr i64 %13, 23
  %15 = and i64 %14, 7
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %11, %17
  %19 = load i64*, i64** @df_clkdiv, align 8
  %20 = load i64, i64* %6, align 8
  %21 = lshr i64 %20, 16
  %22 = and i64 %21, 3
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = udiv i64 %18, %24
  ret i64 %25
}

declare dso_local i64 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
