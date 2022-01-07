; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider_gate = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_divider_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_divider_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_divider_gate*, align 8
  %4 = alloca %struct.clk_divider*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw* %7)
  store %struct.clk_divider_gate* %8, %struct.clk_divider_gate** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %10 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %9)
  store %struct.clk_divider* %10, %struct.clk_divider** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.clk_divider*, %struct.clk_divider** %4, align 8
  %12 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.clk_divider*, %struct.clk_divider** %4, align 8
  %17 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @readl(i32 %18)
  %20 = load %struct.clk_divider*, %struct.clk_divider** %4, align 8
  %21 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.clk_divider*, %struct.clk_divider** %4, align 8
  %25 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_div_mask(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.clk_divider_gate*, %struct.clk_divider_gate** %3, align 8
  %32 = getelementptr inbounds %struct.clk_divider_gate, %struct.clk_divider_gate* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.clk_divider*, %struct.clk_divider** %4, align 8
  %34 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @writel(i32 0, i32 %35)
  %37 = load %struct.clk_divider*, %struct.clk_divider** %4, align 8
  %38 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  ret void
}

declare dso_local %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw*) #1

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
