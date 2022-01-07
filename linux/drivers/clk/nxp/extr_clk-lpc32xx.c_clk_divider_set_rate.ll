; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_divider_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_divider_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk_div = type { i32, i32, i32, i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_divider_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_divider_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lpc32xx_clk_div*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.lpc32xx_clk_div* @to_lpc32xx_div(%struct.clk_hw* %9)
  store %struct.lpc32xx_clk_div* %10, %struct.lpc32xx_clk_div** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %20 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @divider_get_val(i64 %11, i64 %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @clk_regmap, align 4
  %24 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @div_mask(i32 %29)
  %31 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.lpc32xx_clk_div*, %struct.lpc32xx_clk_div** %7, align 8
  %37 = getelementptr inbounds %struct.lpc32xx_clk_div, %struct.lpc32xx_clk_div* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = call i32 @regmap_update_bits(i32 %23, i32 %26, i32 %34, i32 %39)
  ret i32 %40
}

declare dso_local %struct.lpc32xx_clk_div* @to_lpc32xx_div(%struct.clk_hw*) #1

declare dso_local i32 @divider_get_val(i64, i64, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @div_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
