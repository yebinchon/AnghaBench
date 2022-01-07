; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_pll_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_pll_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32 }

@SIRFSOC_CLKC_PLL1_CFG2 = common dso_local global i32 0, align 4
@SIRFSOC_CLKC_PLL1_CFG0 = common dso_local global i32 0, align 4
@MHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @pll_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_pll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_pll* @to_pllclk(%struct.clk_hw* %14)
  store %struct.clk_pll* %15, %struct.clk_pll** %7, align 8
  %16 = load %struct.clk_pll*, %struct.clk_pll** %7, align 8
  %17 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SIRFSOC_CLKC_PLL1_CFG2, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @SIRFSOC_CLKC_PLL1_CFG0, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @clkc_readl(i32 %23)
  %25 = call i32 @BIT(i32 2)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %70

30:                                               ; preds = %2
  %31 = load %struct.clk_pll*, %struct.clk_pll** %7, align 8
  %32 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clkc_readl(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @BIT(i32 13)
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 13
  %42 = call i32 @BIT(i32 6)
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 19
  %48 = call i32 @BIT(i32 4)
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @MHZ, align 8
  %54 = urem i64 %52, %53
  %55 = call i32 @WARN_ON(i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @MHZ, align 8
  %58 = udiv i64 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %58, %60
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %61, %63
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %64, %66
  %68 = load i64, i64* @MHZ, align 8
  %69 = mul i64 %67, %68
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %30, %28
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local %struct.clk_pll* @to_pllclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
