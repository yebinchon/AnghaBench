; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-cgu.c_lpc18xx_cgu_gate_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-cgu.c_lpc18xx_cgu_gate_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }

@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @lpc18xx_cgu_gate_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_cgu_gate_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %6 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %5)
  store %struct.clk_hw* %6, %struct.clk_hw** %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %8 = icmp ne %struct.clk_hw* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call i32 @clk_hw_is_enabled(%struct.clk_hw* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %19

15:                                               ; preds = %10
  %16 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = call i32 %16(%struct.clk_hw* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %14, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_is_enabled(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
