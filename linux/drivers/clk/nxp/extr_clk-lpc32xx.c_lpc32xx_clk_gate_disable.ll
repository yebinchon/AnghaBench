; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_lpc32xx_clk_gate_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_lpc32xx_clk_gate_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk_gate = type { i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @lpc32xx_clk_gate_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_clk_gate_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.lpc32xx_clk_gate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.lpc32xx_clk_gate* @to_lpc32xx_gate(%struct.clk_hw* %6)
  store %struct.lpc32xx_clk_gate* %7, %struct.lpc32xx_clk_gate** %3, align 8
  %8 = load %struct.lpc32xx_clk_gate*, %struct.lpc32xx_clk_gate** %3, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_clk_gate, %struct.lpc32xx_clk_gate* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BIT(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.lpc32xx_clk_gate*, %struct.lpc32xx_clk_gate** %3, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_clk_gate, %struct.lpc32xx_clk_gate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @clk_regmap, align 4
  %24 = load %struct.lpc32xx_clk_gate*, %struct.lpc32xx_clk_gate** %3, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_clk_gate, %struct.lpc32xx_clk_gate* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @regmap_update_bits(i32 %23, i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local %struct.lpc32xx_clk_gate* @to_lpc32xx_gate(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
