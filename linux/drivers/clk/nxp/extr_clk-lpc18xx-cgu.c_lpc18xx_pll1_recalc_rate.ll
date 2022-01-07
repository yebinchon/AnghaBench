; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-cgu.c_lpc18xx_pll1_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-cgu.c_lpc18xx_pll1_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc18xx_pll = type { i64 }

@LPC18XX_CGU_PLL1_STAT = common dso_local global i64 0, align 8
@LPC18XX_CGU_PLL1_CTRL = common dso_local global i64 0, align 8
@LPC18XX_PLL1_CTRL_DIRECT = common dso_local global i32 0, align 4
@LPC18XX_PLL1_CTRL_FBSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @lpc18xx_pll1_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpc18xx_pll1_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpc18xx_pll*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.lpc18xx_pll* @to_lpc_pll(%struct.clk_hw* %14)
  store %struct.lpc18xx_pll* %15, %struct.lpc18xx_pll** %6, align 8
  %16 = load %struct.lpc18xx_pll*, %struct.lpc18xx_pll** %6, align 8
  %17 = getelementptr inbounds %struct.lpc18xx_pll, %struct.lpc18xx_pll* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LPC18XX_CGU_PLL1_STAT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.lpc18xx_pll*, %struct.lpc18xx_pll** %6, align 8
  %23 = getelementptr inbounds %struct.lpc18xx_pll, %struct.lpc18xx_pll* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPC18XX_CGU_PLL1_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @LPC18XX_PLL1_CTRL_DIRECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @LPC18XX_PLL1_CTRL_FBSEL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = ashr i32 %45, 12
  %47 = and i32 %46, 3
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %2
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = udiv i64 %57, %58
  %60 = mul i64 %56, %59
  store i64 %60, i64* %3, align 8
  br label %78

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 3
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = mul i64 2, %71
  %73 = udiv i64 %70, %72
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = udiv i64 %74, %75
  %77 = mul i64 %73, %76
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %61, %55
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local %struct.lpc18xx_pll* @to_lpc_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
