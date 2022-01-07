; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll-out.c_clk_pll_out_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll-out.c_clk_pll_out_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll_out = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_out_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_out_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tegra_clk_pll_out*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.tegra_clk_pll_out* @to_clk_pll_out(%struct.clk_hw* %6)
  store %struct.tegra_clk_pll_out* %7, %struct.tegra_clk_pll_out** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_clk_pll_out, %struct.tegra_clk_pll_out* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_clk_pll_out, %struct.tegra_clk_pll_out* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_pll_out, %struct.tegra_clk_pll_out* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @readl_relaxed(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %24 = call i32 @pll_out_enb(%struct.tegra_clk_pll_out* %23)
  %25 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %26 = call i32 @pll_out_rst(%struct.tegra_clk_pll_out* %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_clk_pll_out, %struct.tegra_clk_pll_out* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @writel_relaxed(i32 %30, i32 %33)
  %35 = call i32 @udelay(i32 2)
  %36 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_clk_pll_out, %struct.tegra_clk_pll_out* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load %struct.tegra_clk_pll_out*, %struct.tegra_clk_pll_out** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_clk_pll_out, %struct.tegra_clk_pll_out* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %40, %18
  ret i32 0
}

declare dso_local %struct.tegra_clk_pll_out* @to_clk_pll_out(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @pll_out_enb(%struct.tegra_clk_pll_out*) #1

declare dso_local i32 @pll_out_rst(%struct.tegra_clk_pll_out*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
