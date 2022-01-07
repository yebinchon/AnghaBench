; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_postdiv_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_postdiv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll_postdiv = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PLL_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_trion_pll_postdiv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_trion_pll_postdiv_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_alpha_pll_postdiv*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw* %12)
  store %struct.clk_alpha_pll_postdiv* %13, %struct.clk_alpha_pll_postdiv** %7, align 8
  %14 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %15 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @DIV_ROUND_UP_ULL(i64 %18, i64 %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %48, %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %24 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %29 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %40 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %21

51:                                               ; preds = %38, %21
  %52 = load %struct.regmap*, %struct.regmap** %8, align 8
  %53 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %54 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv* %53)
  %55 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %7, align 8
  %56 = call i32 @PLL_POST_DIV_MASK(%struct.clk_alpha_pll_postdiv* %55)
  %57 = load i32, i32* @PLL_POST_DIV_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @PLL_POST_DIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @regmap_update_bits(%struct.regmap* %52, i32 %54, i32 %58, i32 %61)
  ret i32 %62
}

declare dso_local %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i64, i64) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv*) #1

declare dso_local i32 @PLL_POST_DIV_MASK(%struct.clk_alpha_pll_postdiv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
