; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll1443x_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll1443x_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll14xx = type { i64 }

@MDIV_MASK = common dso_local global i32 0, align 4
@MDIV_SHIFT = common dso_local global i32 0, align 4
@PDIV_MASK = common dso_local global i32 0, align 4
@PDIV_SHIFT = common dso_local global i32 0, align 4
@SDIV_MASK = common dso_local global i32 0, align 4
@SDIV_SHIFT = common dso_local global i32 0, align 4
@KDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll1443x_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll1443x_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pll14xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.clk_pll14xx* @to_clk_pll14xx(%struct.clk_hw* %13)
  store %struct.clk_pll14xx* %14, %struct.clk_pll14xx** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %5, align 8
  %18 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 4
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %5, align 8
  %23 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 8
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MDIV_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MDIV_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PDIV_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @PDIV_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SDIV_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @SDIV_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @KDIV_MASK, align 4
  %44 = and i32 %42, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %11, align 2
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 65536
  %48 = load i16, i16* %11, align 2
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %47, %49
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 65536
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %56, %57
  %59 = call i32 @do_div(i32 %55, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  ret i64 %61
}

declare dso_local %struct.clk_pll14xx* @to_clk_pll14xx(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
