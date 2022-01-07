; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pll_freq_tbl = type { i32, i32, i32, i32 }

@PLL_OUTCTRL = common dso_local global i32 0, align 4
@PLL_BYPASSNL = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pll*, align 8
  %9 = alloca %struct.pll_freq_tbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %13)
  store %struct.clk_pll* %14, %struct.clk_pll** %8, align 8
  %15 = load i32, i32* @PLL_OUTCTRL, align 4
  %16 = load i32, i32* @PLL_BYPASSNL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PLL_RESET_N, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %21 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.pll_freq_tbl* @find_freq(i32 %22, i64 %23)
  store %struct.pll_freq_tbl* %24, %struct.pll_freq_tbl** %9, align 8
  %25 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %9, align 8
  %26 = icmp ne %struct.pll_freq_tbl* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %3
  %31 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %32 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %36 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regmap_read(i32 %34, i32 %37, i32* %11)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %49 = call i32 @clk_pll_disable(%struct.clk_hw* %48)
  br label %50

50:                                               ; preds = %47, %30
  %51 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %52 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %56 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %9, align 8
  %59 = getelementptr inbounds %struct.pll_freq_tbl, %struct.pll_freq_tbl* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regmap_update_bits(i32 %54, i32 %57, i32 1023, i32 %60)
  %62 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %63 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %67 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %9, align 8
  %70 = getelementptr inbounds %struct.pll_freq_tbl, %struct.pll_freq_tbl* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regmap_update_bits(i32 %65, i32 %68, i32 524287, i32 %71)
  %73 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %74 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %78 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %9, align 8
  %81 = getelementptr inbounds %struct.pll_freq_tbl, %struct.pll_freq_tbl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @regmap_update_bits(i32 %76, i32 %79, i32 524287, i32 %82)
  %84 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %85 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %89 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %9, align 8
  %92 = getelementptr inbounds %struct.pll_freq_tbl, %struct.pll_freq_tbl* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @regmap_write(i32 %87, i32 %90, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %50
  %98 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %99 = call i32 @clk_pll_enable(%struct.clk_hw* %98)
  br label %100

100:                                              ; preds = %97, %50
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %27
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local %struct.pll_freq_tbl* @find_freq(i32, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @clk_pll_enable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
