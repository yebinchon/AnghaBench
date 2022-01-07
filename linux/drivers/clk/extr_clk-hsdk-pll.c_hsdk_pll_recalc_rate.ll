; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hsdk_pll_clk = type { i32 }

@CGU_PLL_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"current configuration: %#x\0A\00", align 1
@CGU_PLL_CTRL_PD = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_BYPASS = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_IDIV_MASK = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_IDIV_SHIFT = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_FBDIV_MASK = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_FBDIV_SHIFT = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_ODIV_MASK = common dso_local global i32 0, align 4
@CGU_PLL_CTRL_ODIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @hsdk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hsdk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hsdk_pll_clk*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.hsdk_pll_clk* @to_hsdk_pll_clk(%struct.clk_hw* %12)
  store %struct.hsdk_pll_clk* %13, %struct.hsdk_pll_clk** %11, align 8
  %14 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %11, align 8
  %15 = load i32, i32* @CGU_PLL_CTRL, align 4
  %16 = call i32 @hsdk_pll_read(%struct.hsdk_pll_clk* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %11, align 8
  %18 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CGU_PLL_CTRL_PD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %65

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CGU_PLL_CTRL_BYPASS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %3, align 8
  br label %65

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CGU_PLL_CTRL_IDIV_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CGU_PLL_CTRL_IDIV_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = add nsw i32 1, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CGU_PLL_CTRL_FBDIV_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @CGU_PLL_CTRL_FBDIV_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = add nsw i32 1, %45
  %47 = mul nsw i32 2, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @CGU_PLL_CTRL_ODIV_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @CGU_PLL_CTRL_ODIV_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = shl i32 1, %52
  store i32 %53, i32* %10, align 4
  %54 = load i64, i64* %5, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @do_div(i32 %58, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %34, %32, %26
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local %struct.hsdk_pll_clk* @to_hsdk_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @hsdk_pll_read(%struct.hsdk_pll_clk*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
