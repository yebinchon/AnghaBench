; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_odf_gate_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_odf_gate_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }

@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @odf_gate_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odf_gate_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load i64 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 1), align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call i64 %7(%struct.clk_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %13)
  store %struct.clk_hw* %14, %struct.clk_hw** %4, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call i32 @pll_is_enabled(%struct.clk_hw* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %21 = call i32 @pll_disable(%struct.clk_hw* %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %25 = call i32 %23(%struct.clk_hw* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %30 = call i32 @pll_enable(%struct.clk_hw* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
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
