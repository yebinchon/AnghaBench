; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-pll.c_rockchip_rk3066_pll_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-pll.c_rockchip_rk3066_pll_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_clk_pll = type { i64 }
%struct.rockchip_pll_rate_table = type { i32, i32, i32, i32 }

@RK3066_PLLCON0_NR_SHIFT = common dso_local global i32 0, align 4
@RK3066_PLLCON0_NR_MASK = common dso_local global i32 0, align 4
@RK3066_PLLCON0_OD_SHIFT = common dso_local global i32 0, align 4
@RK3066_PLLCON0_OD_MASK = common dso_local global i32 0, align 4
@RK3066_PLLCON1_NF_SHIFT = common dso_local global i32 0, align 4
@RK3066_PLLCON1_NF_MASK = common dso_local global i32 0, align 4
@RK3066_PLLCON2_NB_SHIFT = common dso_local global i32 0, align 4
@RK3066_PLLCON2_NB_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_clk_pll*, %struct.rockchip_pll_rate_table*)* @rockchip_rk3066_pll_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_rk3066_pll_get_params(%struct.rockchip_clk_pll* %0, %struct.rockchip_pll_rate_table* %1) #0 {
  %3 = alloca %struct.rockchip_clk_pll*, align 8
  %4 = alloca %struct.rockchip_pll_rate_table*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_clk_pll* %0, %struct.rockchip_clk_pll** %3, align 8
  store %struct.rockchip_pll_rate_table* %1, %struct.rockchip_pll_rate_table** %4, align 8
  %6 = load %struct.rockchip_clk_pll*, %struct.rockchip_clk_pll** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_clk_pll, %struct.rockchip_clk_pll* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @RK3066_PLLCON(i32 0)
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RK3066_PLLCON0_NR_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @RK3066_PLLCON0_NR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = load %struct.rockchip_pll_rate_table*, %struct.rockchip_pll_rate_table** %4, align 8
  %19 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RK3066_PLLCON0_OD_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @RK3066_PLLCON0_OD_MASK, align 4
  %24 = and i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = load %struct.rockchip_pll_rate_table*, %struct.rockchip_pll_rate_table** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rockchip_clk_pll*, %struct.rockchip_clk_pll** %3, align 8
  %29 = getelementptr inbounds %struct.rockchip_clk_pll, %struct.rockchip_clk_pll* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @RK3066_PLLCON(i32 1)
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl_relaxed(i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RK3066_PLLCON1_NF_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @RK3066_PLLCON1_NF_MASK, align 4
  %38 = and i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = load %struct.rockchip_pll_rate_table*, %struct.rockchip_pll_rate_table** %4, align 8
  %41 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rockchip_clk_pll*, %struct.rockchip_clk_pll** %3, align 8
  %43 = getelementptr inbounds %struct.rockchip_clk_pll, %struct.rockchip_clk_pll* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @RK3066_PLLCON(i32 2)
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl_relaxed(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RK3066_PLLCON2_NB_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* @RK3066_PLLCON2_NB_MASK, align 4
  %52 = and i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = load %struct.rockchip_pll_rate_table*, %struct.rockchip_pll_rate_table** %4, align 8
  %55 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @RK3066_PLLCON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
