; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tegra_clk_pll*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %5)
  store %struct.tegra_clk_pll* %6, %struct.tegra_clk_pll** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i64 %14, i64 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %19 = call i32 @pll_clk_stop_ss(%struct.tegra_clk_pll* %18)
  %20 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %21 = call i32 @_clk_pll_disable(%struct.clk_hw* %20)
  %22 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %26, %17
  ret void
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @pll_clk_stop_ss(%struct.tegra_clk_pll*) #1

declare dso_local i32 @_clk_pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
