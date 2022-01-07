; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-ddr.c_rockchip_ddrclk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-ddr.c_rockchip_ddrclk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_ddrclk = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @rockchip_ddrclk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_ddrclk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.rockchip_ddrclk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.rockchip_ddrclk* @to_rockchip_ddrclk_hw(%struct.clk_hw* %5)
  store %struct.rockchip_ddrclk* %6, %struct.rockchip_ddrclk** %3, align 8
  %7 = load %struct.rockchip_ddrclk*, %struct.rockchip_ddrclk** %3, align 8
  %8 = getelementptr inbounds %struct.rockchip_ddrclk, %struct.rockchip_ddrclk* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rockchip_ddrclk*, %struct.rockchip_ddrclk** %3, align 8
  %11 = getelementptr inbounds %struct.rockchip_ddrclk, %struct.rockchip_ddrclk* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load %struct.rockchip_ddrclk*, %struct.rockchip_ddrclk** %3, align 8
  %16 = getelementptr inbounds %struct.rockchip_ddrclk, %struct.rockchip_ddrclk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rockchip_ddrclk*, %struct.rockchip_ddrclk** %3, align 8
  %20 = getelementptr inbounds %struct.rockchip_ddrclk, %struct.rockchip_ddrclk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @GENMASK(i64 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.rockchip_ddrclk* @to_rockchip_ddrclk_hw(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
