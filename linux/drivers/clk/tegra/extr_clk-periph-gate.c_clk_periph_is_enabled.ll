; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph-gate.c_clk_periph_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph-gate.c_clk_periph_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_periph_gate = type { i32 }

@TEGRA_PERIPH_NO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_periph_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_periph_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tegra_clk_periph_gate*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.tegra_clk_periph_gate* @to_clk_periph_gate(%struct.clk_hw* %5)
  store %struct.tegra_clk_periph_gate* %6, %struct.tegra_clk_periph_gate** %3, align 8
  store i32 1, i32* %4, align 4
  %7 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %3, align 8
  %8 = call i32 @read_enb(%struct.tegra_clk_periph_gate* %7)
  %9 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %3, align 8
  %10 = call i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate* %9)
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TEGRA_PERIPH_NO_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %3, align 8
  %23 = call i32 @read_rst(%struct.tegra_clk_periph_gate* %22)
  %24 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %3, align 8
  %25 = call i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate* %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.tegra_clk_periph_gate* @to_clk_periph_gate(%struct.clk_hw*) #1

declare dso_local i32 @read_enb(%struct.tegra_clk_periph_gate*) #1

declare dso_local i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate*) #1

declare dso_local i32 @read_rst(%struct.tegra_clk_periph_gate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
