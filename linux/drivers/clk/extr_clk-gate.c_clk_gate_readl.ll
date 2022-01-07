; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gate.c_clk_gate_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gate.c_clk_gate_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_gate = type { i32, i32 }

@CLK_GATE_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_gate*)* @clk_gate_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_gate_readl(%struct.clk_gate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_gate*, align 8
  store %struct.clk_gate* %0, %struct.clk_gate** %3, align 8
  %4 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %5 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CLK_GATE_BIG_ENDIAN, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %12 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ioread32be(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %17 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
