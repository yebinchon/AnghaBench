; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.aspeed_clk_gate = type { i64, i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i64 0, align 8
@ASPEED_CLK_STOP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @aspeed_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.aspeed_clk_gate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw* %7)
  store %struct.aspeed_clk_gate* %8, %struct.aspeed_clk_gate** %3, align 8
  %9 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %10 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %14 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %19 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CLK_GATE_SET_TO_DISABLE, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %30 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASPEED_CLK_STOP_CTRL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %37 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32 %38, i64 %39)
  ret void
}

declare dso_local %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
