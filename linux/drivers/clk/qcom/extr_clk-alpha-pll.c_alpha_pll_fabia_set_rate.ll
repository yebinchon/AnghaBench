; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_fabia_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_fabia_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FABIA_PLL_RATE_MARGIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Call set rate on the PLL with rounded rates!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @alpha_pll_fabia_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_pll_fabia_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_alpha_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %15)
  store %struct.clk_alpha_pll* %16, %struct.clk_alpha_pll** %8, align 8
  %17 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %18 = call i32 @pll_alpha_width(%struct.clk_alpha_pll* %17)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %20 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %24 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %23)
  %25 = call i32 @regmap_read(i32 %22, i32 %24, i32* %9)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @alpha_pll_round_rate(i64 %31, i64 %32, i32* %10, i32* %12, i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @FABIA_PLL_RATE_MARGIN, align 8
  %38 = add i64 %36, %37
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %30
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %67

48:                                               ; preds = %40
  %49 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %50 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %54 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @regmap_write(i32 %52, i32 %54, i32 %55)
  %57 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %58 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %62 = call i32 @PLL_FRAC(%struct.clk_alpha_pll* %61)
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @regmap_write(i32 %60, i32 %62, i32 %63)
  %65 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %66 = call i32 @__clk_alpha_pll_update_latch(%struct.clk_alpha_pll* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %48, %44, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_alpha_width(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i64 @alpha_pll_round_rate(i64, i64, i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_FRAC(%struct.clk_alpha_pll*) #1

declare dso_local i32 @__clk_alpha_pll_update_latch(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
