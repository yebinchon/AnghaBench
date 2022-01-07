; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_clkout_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_clkout_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }
%struct.ti_adpll_clkout_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.clk_hw }

@clk_gate_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @ti_adpll_clkout_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adpll_clkout_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ti_adpll_clkout_data*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.ti_adpll_clkout_data* @to_clkout(%struct.clk_hw* %5)
  store %struct.ti_adpll_clkout_data* %6, %struct.ti_adpll_clkout_data** %3, align 8
  %7 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %3, align 8
  %8 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.clk_hw* %9, %struct.clk_hw** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %12 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %10, %struct.clk_hw* %11)
  %13 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clk_gate_ops, i32 0, i32 0), align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call i32 %13(%struct.clk_hw* %14)
  ret void
}

declare dso_local %struct.ti_adpll_clkout_data* @to_clkout(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
