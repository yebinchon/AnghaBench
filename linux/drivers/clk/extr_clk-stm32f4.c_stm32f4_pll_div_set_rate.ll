; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*, i64, i64)* }
%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32 }
%struct.stm32f4_pll_div = type { i32 }

@clk_divider_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @stm32f4_pll_div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_pll_div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_divider*, align 8
  %10 = alloca %struct.stm32f4_pll_div*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %11)
  store %struct.clk_divider* %12, %struct.clk_divider** %9, align 8
  %13 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %14 = call %struct.stm32f4_pll_div* @to_pll_div_clk(%struct.clk_divider* %13)
  store %struct.stm32f4_pll_div* %14, %struct.stm32f4_pll_div** %10, align 8
  %15 = load %struct.stm32f4_pll_div*, %struct.stm32f4_pll_div** %10, align 8
  %16 = getelementptr inbounds %struct.stm32f4_pll_div, %struct.stm32f4_pll_div* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @stm32f4_pll_is_enabled(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.stm32f4_pll_div*, %struct.stm32f4_pll_div** %10, align 8
  %23 = getelementptr inbounds %struct.stm32f4_pll_div, %struct.stm32f4_pll_div* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stm32f4_pll_disable(i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_divider_ops, i32 0, i32 0), align 8
  %28 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 %27(%struct.clk_hw* %28, i64 %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.stm32f4_pll_div*, %struct.stm32f4_pll_div** %10, align 8
  %36 = getelementptr inbounds %struct.stm32f4_pll_div, %struct.stm32f4_pll_div* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @stm32f4_pll_enable(i32 %37)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local %struct.stm32f4_pll_div* @to_pll_div_clk(%struct.clk_divider*) #1

declare dso_local i32 @stm32f4_pll_is_enabled(i32) #1

declare dso_local i32 @stm32f4_pll_disable(i32) #1

declare dso_local i32 @stm32f4_pll_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
