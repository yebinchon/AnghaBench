; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll46xx_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll46xx_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.samsung_clk_pll = type { i64, i64 }

@PLL46XX_MDIV_SHIFT = common dso_local global i32 0, align 4
@pll_1460x = common dso_local global i64 0, align 8
@PLL1460X_MDIV_MASK = common dso_local global i32 0, align 4
@PLL46XX_MDIV_MASK = common dso_local global i32 0, align 4
@PLL46XX_PDIV_SHIFT = common dso_local global i32 0, align 4
@PLL46XX_PDIV_MASK = common dso_local global i32 0, align 4
@PLL46XX_SDIV_SHIFT = common dso_local global i32 0, align 4
@PLL46XX_SDIV_MASK = common dso_local global i32 0, align 4
@pll_4650c = common dso_local global i64 0, align 8
@PLL4650C_KDIV_MASK = common dso_local global i32 0, align 4
@PLL46XX_KDIV_MASK = common dso_local global i32 0, align 4
@pll_4600 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @samsung_pll46xx_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @samsung_pll46xx_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.samsung_clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw* %14)
  store %struct.samsung_clk_pll* %15, %struct.samsung_clk_pll** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %19 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %23 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 4
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PLL46XX_MDIV_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %31 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @pll_1460x, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @PLL1460X_MDIV_MASK, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @PLL46XX_MDIV_MASK, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = and i32 %29, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @PLL46XX_PDIV_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @PLL46XX_PDIV_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PLL46XX_SDIV_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32, i32* @PLL46XX_SDIV_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %53 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @pll_4650c, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @PLL4650C_KDIV_MASK, align 4
  %60 = and i32 %58, %59
  br label %65

61:                                               ; preds = %39
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @PLL46XX_KDIV_MASK, align 4
  %64 = and i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ %60, %57 ], [ %64, %61 ]
  store i32 %66, i32* %9, align 4
  %67 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %68 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @pll_4600, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %5, align 8
  %74 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @pll_1460x, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %72, %65
  %79 = phi i1 [ true, %65 ], [ %77, %72 ]
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 16, i32 10
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %12, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 %90, %91
  %93 = call i32 @do_div(i32 %89, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = ashr i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  ret i64 %98
}

declare dso_local %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
