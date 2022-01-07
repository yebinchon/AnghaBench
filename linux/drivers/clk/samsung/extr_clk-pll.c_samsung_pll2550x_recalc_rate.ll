; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll2550x_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll2550x_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.samsung_clk_pll = type { i32 }

@PLL2550X_R_SHIFT = common dso_local global i32 0, align 4
@PLL2550X_R_MASK = common dso_local global i32 0, align 4
@PLL2550X_P_SHIFT = common dso_local global i32 0, align 4
@PLL2550X_P_MASK = common dso_local global i32 0, align 4
@PLL2550X_M_SHIFT = common dso_local global i32 0, align 4
@PLL2550X_M_MASK = common dso_local global i32 0, align 4
@PLL2550X_S_SHIFT = common dso_local global i32 0, align 4
@PLL2550X_S_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @samsung_pll2550x_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @samsung_pll2550x_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.samsung_clk_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw* %13)
  store %struct.samsung_clk_pll* %14, %struct.samsung_clk_pll** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.samsung_clk_pll*, %struct.samsung_clk_pll** %6, align 8
  %18 = getelementptr inbounds %struct.samsung_clk_pll, %struct.samsung_clk_pll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @readl_relaxed(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PLL2550X_R_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* @PLL2550X_R_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %55

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PLL2550X_P_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @PLL2550X_P_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PLL2550X_M_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @PLL2550X_M_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @PLL2550X_S_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @PLL2550X_S_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @do_div(i32 %48, i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %29, %28
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local %struct.samsung_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
