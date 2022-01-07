; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_postdiv_fabia_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_postdiv_fabia_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll_postdiv = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_alpha_pll_postdiv_fabia_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_alpha_pll_postdiv_fabia_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_alpha_pll_postdiv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw* %13)
  store %struct.clk_alpha_pll_postdiv* %14, %struct.clk_alpha_pll_postdiv** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %16 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %20 = call i32 @PLL_MODE(%struct.clk_alpha_pll_postdiv* %19)
  %21 = call i32 @regmap_read(i32 %18, i32 %20, i32* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %88

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @DIV_ROUND_UP_ULL(i64 %33, i64 %34)
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %63, %32
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %39 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %44 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %55 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %36

66:                                               ; preds = %53, %36
  %67 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %68 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %72 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv* %71)
  %73 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %74 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @BIT(i32 %75)
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %79 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %77, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.clk_alpha_pll_postdiv*, %struct.clk_alpha_pll_postdiv** %8, align 8
  %84 = getelementptr inbounds %struct.clk_alpha_pll_postdiv, %struct.clk_alpha_pll_postdiv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = call i32 @regmap_update_bits(i32 %70, i32 %72, i32 %81, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %66, %31, %24
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.clk_alpha_pll_postdiv* @to_clk_alpha_pll_postdiv(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll_postdiv*) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i64, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll_postdiv*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
