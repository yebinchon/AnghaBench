; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-gate.c_owl_gate_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-gate.c_owl_gate_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_common = type { i32 }
%struct.owl_gate_hw = type { i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_gate_clk_is_enabled(%struct.owl_clk_common* %0, %struct.owl_gate_hw* %1) #0 {
  %3 = alloca %struct.owl_clk_common*, align 8
  %4 = alloca %struct.owl_gate_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.owl_clk_common* %0, %struct.owl_clk_common** %3, align 8
  store %struct.owl_gate_hw* %1, %struct.owl_gate_hw** %4, align 8
  %6 = load %struct.owl_clk_common*, %struct.owl_clk_common** %3, align 8
  %7 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.owl_gate_hw*, %struct.owl_gate_hw** %4, align 8
  %10 = getelementptr inbounds %struct.owl_gate_hw, %struct.owl_gate_hw* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regmap_read(i32 %8, i32 %11, i32* %5)
  %13 = load %struct.owl_gate_hw*, %struct.owl_gate_hw** %4, align 8
  %14 = getelementptr inbounds %struct.owl_gate_hw, %struct.owl_gate_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.owl_gate_hw*, %struct.owl_gate_hw** %4, align 8
  %21 = getelementptr inbounds %struct.owl_gate_hw, %struct.owl_gate_hw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.owl_gate_hw*, %struct.owl_gate_hw** %4, align 8
  %29 = getelementptr inbounds %struct.owl_gate_hw, %struct.owl_gate_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
