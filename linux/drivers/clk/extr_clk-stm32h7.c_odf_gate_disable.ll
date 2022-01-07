; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_odf_gate_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_odf_gate_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }

@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @odf_gate_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odf_gate_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 1), align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call i32 %5(%struct.clk_hw* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %12 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %11)
  store %struct.clk_hw* %12, %struct.clk_hw** %3, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call i32 @pll_is_enabled(%struct.clk_hw* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %19 = call i32 @pll_disable(%struct.clk_hw* %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %23 = call i32 %21(%struct.clk_hw* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %28 = call i32 @pll_enable(%struct.clk_hw* %27)
  br label %29

29:                                               ; preds = %9, %26, %20
  ret void
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @pll_enable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
