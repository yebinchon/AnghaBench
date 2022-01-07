; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32 }
%struct.stm32f4_pll = type { i32 }

@PLL_TIMEOUT = common dso_local global i32 0, align 4
@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @stm32f4_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_gate*, align 8
  %5 = alloca %struct.stm32f4_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %8)
  store %struct.clk_gate* %9, %struct.clk_gate** %4, align 8
  %10 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %11 = call %struct.stm32f4_pll* @to_stm32f4_pll(%struct.clk_gate* %10)
  store %struct.stm32f4_pll* %11, %struct.stm32f4_pll** %5, align 8
  %12 = load i32, i32* @PLL_TIMEOUT, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 1), align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call i64 %13(%struct.clk_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %20 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %21 = call i32 %19(%struct.clk_hw* %20)
  br label %22

22:                                               ; preds = %42, %18
  %23 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %24 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @readl(i32 %25)
  %27 = load %struct.stm32f4_pll*, %struct.stm32f4_pll** %5, align 8
  %28 = getelementptr inbounds %struct.stm32f4_pll, %struct.stm32f4_pll* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %22, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local %struct.stm32f4_pll* @to_stm32f4_pll(%struct.clk_gate*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
