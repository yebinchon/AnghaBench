; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-gate2.c_clk_gate2_disable_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-gate2.c_clk_gate2_disable_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gate2 = type { i64*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_gate2_disable_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_gate2_disable_unused(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_gate2*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_gate2* @to_clk_gate2(%struct.clk_hw* %6)
  store %struct.clk_gate2* %7, %struct.clk_gate2** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %9 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %14 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %19 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17, %1
  %24 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %25 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %29 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 3, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %37 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @writel(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %23, %17
  %41 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %42 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  ret void
}

declare dso_local %struct.clk_gate2* @to_clk_gate2(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
