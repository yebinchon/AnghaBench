; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-pll.c_rockchip_rk3399_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-pll.c_rockchip_rk3399_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_clk_pll = type { i64 }

@RK3399_PLLCON3_PWRDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @rockchip_rk3399_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_rk3399_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.rockchip_clk_pll*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.rockchip_clk_pll* @to_rockchip_clk_pll(%struct.clk_hw* %4)
  store %struct.rockchip_clk_pll* %5, %struct.rockchip_clk_pll** %3, align 8
  %6 = load i32, i32* @RK3399_PLLCON3_PWRDOWN, align 4
  %7 = load i32, i32* @RK3399_PLLCON3_PWRDOWN, align 4
  %8 = call i32 @HIWORD_UPDATE(i32 %6, i32 %7, i32 0)
  %9 = load %struct.rockchip_clk_pll*, %struct.rockchip_clk_pll** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_clk_pll, %struct.rockchip_clk_pll* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @RK3399_PLLCON(i32 3)
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  ret void
}

declare dso_local %struct.rockchip_clk_pll* @to_rockchip_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i32) #1

declare dso_local i64 @RK3399_PLLCON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
