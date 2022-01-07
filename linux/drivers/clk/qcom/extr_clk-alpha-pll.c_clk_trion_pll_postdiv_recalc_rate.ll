; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_postdiv_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_postdiv_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll_postdiv = type { i64, i64, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_trion_pll_postdiv_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_trion_pll_postdiv_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_alpha_pll_postdiv*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw* %10)
  store %struct.clk_alpha_pll_postdiv* %11, %struct.clk_alpha_pll_postdiv** %5, align 8
  %12 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %13 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  store i64 1, i64* %8, align 8
  %16 = load %struct.regmap*, %struct.regmap** %6, align 8
  %17 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %18 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv* %17)
  %19 = call i32 @regmap_read(%struct.regmap* %16, i32 %18, i64* %9)
  %20 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %21 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = lshr i64 %23, %22
  store i64 %24, i64* %9, align 8
  %25 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %26 = call i64 @PLL_POST_DIV_MASK(%struct.clk_alpha_pll_postdiv* %25)
  %27 = load i64, i64* %9, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %54, %2
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %32 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %37 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %5, align 8
  %47 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %57

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %29

57:                                               ; preds = %45, %29
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = udiv i64 %58, %59
  ret i64 %60
}

declare dso_local %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i64*) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv*) #1

declare dso_local i64 @PLL_POST_DIV_MASK(%struct.clk_alpha_pll_postdiv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
