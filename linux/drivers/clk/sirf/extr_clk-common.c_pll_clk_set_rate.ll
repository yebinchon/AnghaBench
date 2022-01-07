; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_pll_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_pll_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i64 }

@MHZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SIRFSOC_CLKC_PLL1_CFG1 = common dso_local global i64 0, align 8
@SIRFSOC_CLKC_PLL1_CFG0 = common dso_local global i64 0, align 8
@SIRFSOC_CLKC_PLL1_CFG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @pll_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.clk_pll* @to_pllclk(%struct.clk_hw* %14)
  store %struct.clk_pll* %15, %struct.clk_pll** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MHZ, align 8
  %18 = udiv i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @MHZ, align 8
  %21 = urem i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @BIT(i32 13)
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %28, 1
  br label %30

30:                                               ; preds = %27, %23, %3
  %31 = phi i1 [ true, %23 ], [ true, %3 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %104

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @MHZ, align 8
  %42 = icmp ult i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @MHZ, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @MHZ, align 8
  %50 = urem i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %38
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @BIT(i32 6)
  %55 = icmp ugt i64 %53, %54
  br label %56

56:                                               ; preds = %52, %38
  %57 = phi i1 [ true, %38 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  store i64 1, i64* %12, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, 1
  %62 = load i64, i64* %11, align 8
  %63 = sub i64 %62, 1
  %64 = shl i64 %63, 13
  %65 = or i64 %61, %64
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %66, 1
  %68 = shl i64 %67, 19
  %69 = or i64 %65, %68
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %72 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @clkc_writel(i64 %70, i64 %73)
  %75 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %76 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SIRFSOC_CLKC_PLL1_CFG1, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* @SIRFSOC_CLKC_PLL1_CFG0, align 8
  %81 = sub i64 %79, %80
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %10, align 8
  %83 = lshr i64 %82, 1
  %84 = sub i64 %83, 1
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @clkc_writel(i64 %84, i64 %85)
  %87 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %88 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SIRFSOC_CLKC_PLL1_CFG2, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* @SIRFSOC_CLKC_PLL1_CFG0, align 8
  %93 = sub i64 %91, %92
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %101, %56
  %95 = load i64, i64* %13, align 8
  %96 = call i64 @clkc_readl(i64 %95)
  %97 = call i64 @BIT(i32 6)
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 (...) @cpu_relax()
  br label %94

103:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.clk_pll* @to_pllclk(%struct.clk_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clkc_writel(i64, i64) #1

declare dso_local i64 @clkc_readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
