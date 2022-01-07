; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_ready_gate_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_ready_gate_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32 }
%struct.stm32_ready_gate = type { i32 }

@RGATE_TIMEOUT = common dso_local global i32 0, align 4
@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @ready_gate_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ready_gate_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_gate*, align 8
  %4 = alloca %struct.stm32_ready_gate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %7)
  store %struct.clk_gate* %8, %struct.clk_gate** %3, align 8
  %9 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %10 = call %struct.stm32_ready_gate* @to_ready_gate_clk(%struct.clk_gate* %9)
  store %struct.stm32_ready_gate* %10, %struct.stm32_ready_gate** %4, align 8
  %11 = load i32, i32* @RGATE_TIMEOUT, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 1), align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %14 = call i32 %12(%struct.clk_hw* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %20 = call i32 %18(%struct.clk_hw* %19)
  br label %21

21:                                               ; preds = %47, %17
  %22 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %23 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readl(i32 %24)
  %26 = load %struct.stm32_ready_gate*, %struct.stm32_ready_gate** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_ready_gate, %struct.stm32_ready_gate* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = call i32 @udelay(i32 100)
  br label %39

39:                                               ; preds = %37, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %21, label %49

49:                                               ; preds = %16, %47
  ret void
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local %struct.stm32_ready_gate* @to_ready_gate_clk(%struct.clk_gate*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
