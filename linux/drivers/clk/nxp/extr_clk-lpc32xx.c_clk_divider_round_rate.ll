; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_divider_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_divider_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk_div = type { i32, i32, i32, i32, i32 }

@CLK_DIVIDER_READ_ONLY = common dso_local global i32 0, align 4
@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_divider_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_divider_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lpc32xx_clk_div*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.lpc32xx_clk_div* @to_lpc32xx_div(%struct.clk_hw* %10)
  store %struct.lpc32xx_clk_div* %11, %struct.lpc32xx_clk_div** %8, align 8
  %12 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLK_DIVIDER_READ_ONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load i32, i32* @clk_regmap, align 4
  %20 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_read(i32 %19, i32 %22, i32* %9)
  %24 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @div_mask(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @_get_div(i32 %37, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @DIV_ROUND_UP(i64 %47, i32 %48)
  store i64 %49, i64* %4, align 8
  br label %64

50:                                               ; preds = %3
  %51 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %8, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @divider_round_rate(%struct.clk_hw* %51, i64 %52, i64* %53, i32 %56, i32 %59, i32 %62)
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %50, %18
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local %struct.lpc32xx_clk_div* @to_lpc32xx_div(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @div_mask(i32) #1

declare dso_local i32 @_get_div(i32, i32, i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @divider_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
