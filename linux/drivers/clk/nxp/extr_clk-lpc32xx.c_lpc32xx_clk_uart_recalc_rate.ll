; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_lpc32xx_clk_uart_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_lpc32xx_clk_uart_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk = type { i32 }

@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @lpc32xx_clk_uart_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpc32xx_clk_uart_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpc32xx_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.lpc32xx_clk* @to_lpc32xx_clk(%struct.clk_hw* %10)
  store %struct.lpc32xx_clk* %11, %struct.lpc32xx_clk** %6, align 8
  %12 = load i32, i32* @clk_regmap, align 4
  %13 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %6, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %7)
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 65280
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %28, %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %31, %33
  store i64 %34, i64* %3, align 8
  br label %36

35:                                               ; preds = %24, %2
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local %struct.lpc32xx_clk* @to_lpc32xx_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
