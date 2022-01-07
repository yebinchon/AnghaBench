; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_venc_mbist_war.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_venc_mbist_war.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra210_domain_mbist_war = type { i32 }

@pll_d_lock = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@PLLD_BASE = common dso_local global i64 0, align 8
@PLLD_BASE_CSI_CLKSOURCE = common dso_local global i32 0, align 4
@LVL2_CLK_GATE_OVRA = common dso_local global i64 0, align 8
@LVL2_CLK_GATE_OVRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra210_domain_mbist_war*)* @tegra210_venc_mbist_war to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_venc_mbist_war(%struct.tegra210_domain_mbist_war* %0) #0 {
  %2 = alloca %struct.tegra210_domain_mbist_war*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tegra210_domain_mbist_war* %0, %struct.tegra210_domain_mbist_war** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pll_d_lock, i64 %7)
  %9 = load i64, i64* @clk_base, align 8
  %10 = load i64, i64* @PLLD_BASE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PLLD_BASE_CSI_CLKSOURCE, align 4
  %15 = or i32 %13, %14
  %16 = load i64, i64* @clk_base, align 8
  %17 = load i64, i64* @PLLD_BASE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 %15, i64 %18)
  %20 = load i64, i64* @clk_base, align 8
  %21 = call i32 @fence_udelay(i32 1, i64 %20)
  %22 = load i64, i64* @clk_base, align 8
  %23 = load i64, i64* @LVL2_CLK_GATE_OVRA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @BIT(i32 15)
  %28 = or i32 %26, %27
  %29 = load i64, i64* @clk_base, align 8
  %30 = load i64, i64* @LVL2_CLK_GATE_OVRA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %28, i64 %31)
  %33 = load i64, i64* @clk_base, align 8
  %34 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl_relaxed(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BIT(i32 3)
  %39 = or i32 %37, %38
  %40 = load i64, i64* @clk_base, align 8
  %41 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %39, i64 %42)
  %44 = load i64, i64* @clk_base, align 8
  %45 = call i32 @fence_udelay(i32 1, i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i64, i64* @clk_base, align 8
  %48 = load i64, i64* @LVL2_CLK_GATE_OVRA, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel_relaxed(i32 %46, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i64, i64* @clk_base, align 8
  %53 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %51, i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* @clk_base, align 8
  %58 = load i64, i64* @PLLD_BASE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i32 %56, i64 %59)
  %61 = load i64, i64* @clk_base, align 8
  %62 = call i32 @fence_udelay(i32 1, i64 %61)
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @pll_d_lock, i64 %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @fence_udelay(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
