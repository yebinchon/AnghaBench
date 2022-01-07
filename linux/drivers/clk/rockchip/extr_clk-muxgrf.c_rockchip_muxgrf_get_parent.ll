; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-muxgrf.c_rockchip_muxgrf_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-muxgrf.c_rockchip_muxgrf_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_muxgrf_clock = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @rockchip_muxgrf_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_muxgrf_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.rockchip_muxgrf_clock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.rockchip_muxgrf_clock* @to_muxgrf_clock(%struct.clk_hw* %6)
  store %struct.rockchip_muxgrf_clock* %7, %struct.rockchip_muxgrf_clock** %3, align 8
  %8 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i32 @GENMASK(i64 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_read(i32 %15, i32 %18, i32* %5)
  %20 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = lshr i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.rockchip_muxgrf_clock* @to_muxgrf_clock(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
