; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sccg_pll = type { i64 }

@PLL_CFG2 = common dso_local global i64 0, align 8
@PLL_DIVR1_MASK = common dso_local global i32 0, align 4
@PLL_DIVR2_MASK = common dso_local global i32 0, align 4
@PLL_DIVF1_MASK = common dso_local global i32 0, align 4
@PLL_DIVF2_MASK = common dso_local global i32 0, align 4
@PLL_DIVQ_MASK = common dso_local global i32 0, align 4
@PLL_CFG0 = common dso_local global i64 0, align 8
@SSCG_PLL_BYPASS2_MASK = common dso_local global i32 0, align 4
@SSCG_PLL_BYPASS1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_sccg_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_sccg_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_sccg_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw* %13)
  store %struct.clk_sccg_pll* %14, %struct.clk_sccg_pll** %5, align 8
  %15 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %5, align 8
  %16 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PLL_CFG2, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @PLL_DIVR1_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @FIELD_GET(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @PLL_DIVR2_MASK, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @FIELD_GET(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @PLL_DIVF1_MASK, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @FIELD_GET(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @PLL_DIVF2_MASK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @FIELD_GET(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @PLL_DIVQ_MASK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @FIELD_GET(i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* %4, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %5, align 8
  %39 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PLL_CFG0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SSCG_PLL_BYPASS2_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i64, i64* %4, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %88

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SSCG_PLL_BYPASS1_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = mul nsw i32 %62, %64
  %66 = call i32 @do_div(i32 %60, i32 %65)
  br label %87

67:                                               ; preds = %51
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = mul nsw i32 %71, %73
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = mul nsw i32 %79, %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = mul nsw i32 %82, %84
  %86 = call i32 @do_div(i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %67, %56
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  ret i64 %90
}

declare dso_local %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
