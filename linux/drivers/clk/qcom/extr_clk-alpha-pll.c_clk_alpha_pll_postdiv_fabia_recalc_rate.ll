; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_postdiv_fabia_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_postdiv_fabia_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll_postdiv = type { i32, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_alpha_pll_postdiv_fabia_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_alpha_pll_postdiv_fabia_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_alpha_pll_postdiv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw* %11)
  store %struct.clk_alpha_pll_postdiv* %12, %struct.clk_alpha_pll_postdiv** %6, align 8
  store i32 1, i32* %8, align 4
  %13 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %14 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %18 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv* %17)
  %19 = call i32 @regmap_read(i32 %16, i32 %18, i32* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %27 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %32 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @BIT(i32 %33)
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %65, %25
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %41 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %46 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %6, align 8
  %57 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %38

68:                                               ; preds = %55, %38
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %69, %71
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %68, %22
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
