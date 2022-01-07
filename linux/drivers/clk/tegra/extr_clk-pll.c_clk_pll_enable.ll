; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_clk_pll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %7)
  store %struct.tegra_clk_pll* %8, %struct.tegra_clk_pll** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call i64 @clk_pll_is_enabled(%struct.clk_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %26 = call i32 @_clk_pll_enable(%struct.clk_hw* %25)
  %27 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %28 = call i32 @clk_pll_wait_for_lock(%struct.tegra_clk_pll* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %30 = call i32 @pll_clk_start_ss(%struct.tegra_clk_pll* %29)
  %31 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %35, %24
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i64 @clk_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @_clk_pll_enable(%struct.clk_hw*) #1

declare dso_local i32 @clk_pll_wait_for_lock(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_clk_start_ss(%struct.tegra_clk_pll*) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
