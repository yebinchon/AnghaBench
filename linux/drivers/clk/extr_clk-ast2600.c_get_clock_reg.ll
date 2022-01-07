; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_get_clock_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_get_clock_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_clk_gate = type { i32 }

@ASPEED_G6_CLK_STOP_CTRL = common dso_local global i32 0, align 4
@ASPEED_G6_CLK_STOP_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_clk_gate*)* @get_clock_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock_reg(%struct.aspeed_clk_gate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aspeed_clk_gate*, align 8
  store %struct.aspeed_clk_gate* %0, %struct.aspeed_clk_gate** %3, align 8
  %4 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ASPEED_G6_CLK_STOP_CTRL, align 4
  store i32 %9, i32* %2, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ASPEED_G6_CLK_STOP_CTRL2, align 4
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
