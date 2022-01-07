; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-gate.c_mtk_cg_bit_is_cleared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-gate.c_mtk_cg_bit_is_cleared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_gate = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mtk_cg_bit_is_cleared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cg_bit_is_cleared(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_clk_gate*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.mtk_clk_gate* @to_mtk_clk_gate(%struct.clk_hw* %5)
  store %struct.mtk_clk_gate* %6, %struct.mtk_clk_gate** %3, align 8
  %7 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_read(i32 %9, i32 %12, i32* %4)
  %14 = load %struct.mtk_clk_gate*, %struct.mtk_clk_gate** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_clk_gate, %struct.mtk_clk_gate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local %struct.mtk_clk_gate* @to_mtk_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
