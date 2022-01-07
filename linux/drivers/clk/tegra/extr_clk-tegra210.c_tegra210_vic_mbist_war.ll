; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_vic_mbist_war.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_vic_mbist_war.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra210_domain_mbist_war = type { i32 }

@clk_base = common dso_local global i64 0, align 8
@LVL2_CLK_GATE_OVRE = common dso_local global i64 0, align 8
@vic_base = common dso_local global i64 0, align 8
@NV_PVIC_THI_SLCG_OVERRIDE_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra210_domain_mbist_war*)* @tegra210_vic_mbist_war to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra210_vic_mbist_war(%struct.tegra210_domain_mbist_war* %0) #0 {
  %2 = alloca %struct.tegra210_domain_mbist_war*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra210_domain_mbist_war* %0, %struct.tegra210_domain_mbist_war** %2, align 8
  %5 = load i64, i64* @clk_base, align 8
  %6 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl_relaxed(i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BIT(i32 5)
  %11 = or i32 %9, %10
  %12 = load i64, i64* @clk_base, align 8
  %13 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %11, i64 %14)
  %16 = load i64, i64* @clk_base, align 8
  %17 = call i32 @fence_udelay(i32 1, i64 %16)
  %18 = load i64, i64* @vic_base, align 8
  %19 = load i64, i64* @NV_PVIC_THI_SLCG_OVERRIDE_LOW, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BIT(i32 0)
  %24 = or i32 %22, %23
  %25 = call i32 @GENMASK(i32 7, i32 2)
  %26 = or i32 %24, %25
  %27 = call i32 @BIT(i32 24)
  %28 = or i32 %26, %27
  %29 = load i64, i64* @vic_base, align 8
  %30 = load i64, i64* @NV_PVIC_THI_SLCG_OVERRIDE_LOW, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %28, i64 %31)
  %33 = load i64, i64* @vic_base, align 8
  %34 = load i64, i64* @NV_PVIC_THI_SLCG_OVERRIDE_LOW, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @fence_udelay(i32 1, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* @vic_base, align 8
  %39 = load i64, i64* @NV_PVIC_THI_SLCG_OVERRIDE_LOW, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 %37, i64 %40)
  %42 = load i64, i64* @vic_base, align 8
  %43 = load i64, i64* @NV_PVIC_THI_SLCG_OVERRIDE_LOW, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i64, i64* @clk_base, align 8
  %48 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel_relaxed(i32 %46, i64 %49)
  %51 = load i64, i64* @clk_base, align 8
  %52 = call i32 @fence_udelay(i32 1, i64 %51)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fence_udelay(i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
