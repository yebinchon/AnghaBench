; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_pll_clk_start_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_pll_clk_start_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*)* @pll_clk_start_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pll_clk_start_ss(%struct.tegra_clk_pll* %0) #0 {
  %2 = alloca %struct.tegra_clk_pll*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %2, align 8
  %4 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %10
  %18 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %19 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %24 = call i32 @pll_readl(i64 %22, %struct.tegra_clk_pll* %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %2, align 8
  %39 = call i32 @pll_writel(i32 %32, i64 %37, %struct.tegra_clk_pll* %38)
  br label %40

40:                                               ; preds = %17, %10, %1
  ret void
}

declare dso_local i32 @pll_readl(i64, %struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_writel(i32, i64, %struct.tegra_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
