; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_huayra_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_huayra_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_ALPHA_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clock needs to be gated %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PLL_ALPHA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @alpha_pll_huayra_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_pll_huayra_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_alpha_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %13)
  store %struct.clk_alpha_pll* %14, %struct.clk_alpha_pll** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @alpha_huayra_pll_round_rate(i64 %15, i64 %16, i32* %9, i32* %10)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %19 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %23 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %22)
  %24 = call i32 @regmap_read(i32 %21, i32 %23, i32* %11)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PLL_ALPHA_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %31 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %35 = call i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll* %34)
  %36 = call i32 @regmap_read(i32 %33, i32 %35, i32* %12)
  br label %37

37:                                               ; preds = %29, %3
  %38 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %39 = call i64 @clk_alpha_pll_is_enabled(%struct.clk_hw* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %47 = call i32 @clk_hw_get_name(%struct.clk_hw* %46)
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %104

51:                                               ; preds = %41
  %52 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %53 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %57 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @regmap_write(i32 %55, i32 %57, i32 %58)
  %60 = call i32 (...) @mb()
  %61 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %62 = call i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll* %61)
  store i32 %62, i32* %4, align 4
  br label %104

63:                                               ; preds = %37
  %64 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %65 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %69 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @regmap_write(i32 %67, i32 %69, i32 %70)
  %72 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %73 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %77 = call i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll* %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @regmap_write(i32 %75, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %63
  %83 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %84 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %88 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %87)
  %89 = load i32, i32* @PLL_ALPHA_EN, align 4
  %90 = call i32 @regmap_update_bits(i32 %86, i32 %88, i32 %89, i32 0)
  br label %103

91:                                               ; preds = %63
  %92 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %93 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %97 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %96)
  %98 = load i32, i32* @PLL_ALPHA_EN, align 4
  %99 = load i32, i32* @PLL_ALPHA_MODE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @PLL_ALPHA_EN, align 4
  %102 = call i32 @regmap_update_bits(i32 %95, i32 %97, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %91, %82
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %51, %45
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i64 @alpha_huayra_pll_round_rate(i64, i64, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i64 @clk_alpha_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
