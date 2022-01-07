; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_pll_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_pll_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i64 }

@SIRFSOC_CLKC_MEMPLL_AB_CTRL0 = common dso_local global i64 0, align 8
@SIRFSOC_CLKC_MEMPLL_AB_FREQ = common dso_local global i64 0, align 8
@SIRFSOC_CLKC_MEMPLL_AB_SSC = common dso_local global i64 0, align 8
@SIRFSOC_ABPLL_CTRL0_BYPASS = common dso_local global i32 0, align 4
@SIRFSOC_ABPLL_CTRL0_SSEN = common dso_local global i32 0, align 4
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = call %struct.clk_pll* @to_pllclk(%struct.clk_hw* %18)
  store %struct.clk_pll* %19, %struct.clk_pll** %7, align 8
  %20 = load %struct.clk_pll*, %struct.clk_pll** %7, align 8
  %21 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SIRFSOC_CLKC_MEMPLL_AB_CTRL0, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @SIRFSOC_CLKC_MEMPLL_AB_FREQ, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 @clkc_readl(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.clk_pll*, %struct.clk_pll** %7, align 8
  %29 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @clkc_readl(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.clk_pll*, %struct.clk_pll** %7, align 8
  %33 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIRFSOC_CLKC_MEMPLL_AB_SSC, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @SIRFSOC_CLKC_MEMPLL_AB_FREQ, align 8
  %38 = sub nsw i64 %36, %37
  %39 = call i32 @clkc_readl(i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 16
  %42 = call i32 @BIT(i32 3)
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @BIT(i32 9)
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 8
  %53 = call i32 @BIT(i32 12)
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %11, align 4
  %57 = ashr i32 %56, 20
  %58 = call i32 @BIT(i32 2)
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %57, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @BIT(i32 8)
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SIRFSOC_ABPLL_CTRL0_BYPASS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %2
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %109

71:                                               ; preds = %2
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SIRFSOC_ABPLL_CTRL0_SSEN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load i64, i64* %6, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 16777216
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @do_div(i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = shl i32 %87, %88
  %90 = mul nsw i32 256, %89
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = shl i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = call i32 @do_div(i32 %84, i32 %94)
  br label %106

96:                                               ; preds = %71
  %97 = load i64, i64* %6, align 8
  %98 = mul i64 2, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @do_div(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %96, %76
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %106, %69
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local %struct.clk_pll* @to_pllclk(%struct.clk_hw*) #1

declare dso_local i32 @clkc_readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
