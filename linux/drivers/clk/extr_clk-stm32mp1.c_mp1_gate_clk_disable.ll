; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_mp1_gate_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_mp1_gate_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32, i64, i32 }

@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RCC_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mp1_gate_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp1_gate_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_gate*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %5)
  store %struct.clk_gate* %6, %struct.clk_gate** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i64 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call i64 %7(%struct.clk_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %13 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %18 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BIT(i32 %19)
  %21 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %22 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RCC_CLR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 %20, i64 %25)
  %27 = load %struct.clk_gate*, %struct.clk_gate** %3, align 8
  %28 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
