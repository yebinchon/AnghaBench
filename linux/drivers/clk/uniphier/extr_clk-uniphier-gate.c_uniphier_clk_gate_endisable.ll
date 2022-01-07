; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-gate.c_uniphier_clk_gate_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-gate.c_uniphier_clk_gate_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.uniphier_clk_gate = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @uniphier_clk_gate_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_clk_gate_endisable(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_clk_gate*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.uniphier_clk_gate* @to_uniphier_clk_gate(%struct.clk_hw* %6)
  store %struct.uniphier_clk_gate* %7, %struct.uniphier_clk_gate** %5, align 8
  %8 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %5, align 8
  %9 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %5, align 8
  %12 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %5, align 8
  %15 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %5, align 8
  %22 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ %24, %20 ], [ 0, %25 ]
  %28 = call i32 @regmap_write_bits(i32 %10, i32 %13, i32 %17, i32 %27)
  ret i32 %28
}

declare dso_local %struct.uniphier_clk_gate* @to_uniphier_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
