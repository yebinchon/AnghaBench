; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.aspeed_clk_gate = type { i32, i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @aspeed_g6_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_g6_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.aspeed_clk_gate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw* %6)
  store %struct.aspeed_clk_gate* %7, %struct.aspeed_clk_gate** %3, align 8
  %8 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %9 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_bit(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %13 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %18 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %25 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %28 = call i64 @get_clock_reg(%struct.aspeed_clk_gate* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @regmap_write(i32 %26, i64 %28, i32 %29)
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %33 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %36 = call i64 @get_clock_reg(%struct.aspeed_clk_gate* %35)
  %37 = add nsw i64 %36, 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @regmap_write(i32 %34, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %23
  %41 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %42 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  ret void
}

declare dso_local %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @get_bit(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @get_clock_reg(%struct.aspeed_clk_gate*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
