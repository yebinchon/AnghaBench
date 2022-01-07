; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gate.c_clk_gate_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gate.c_clk_gate_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_gate_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_gate*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %5)
  store %struct.clk_gate* %6, %struct.clk_gate** %4, align 8
  %7 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %8 = call i32 @clk_gate_readl(%struct.clk_gate* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %10 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %17 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %24 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  ret i32 %32
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @clk_gate_readl(%struct.clk_gate*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
