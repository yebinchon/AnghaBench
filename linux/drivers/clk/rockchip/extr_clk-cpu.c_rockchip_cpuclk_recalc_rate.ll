; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-cpu.c_rockchip_cpuclk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-cpu.c_rockchip_cpuclk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_cpuclk = type { i64, %struct.rockchip_cpuclk_reg_data* }
%struct.rockchip_cpuclk_reg_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @rockchip_cpuclk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rockchip_cpuclk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rockchip_cpuclk*, align 8
  %6 = alloca %struct.rockchip_cpuclk_reg_data*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.rockchip_cpuclk* @to_rockchip_cpuclk_hw(%struct.clk_hw* %8)
  store %struct.rockchip_cpuclk* %9, %struct.rockchip_cpuclk** %5, align 8
  %10 = load %struct.rockchip_cpuclk*, %struct.rockchip_cpuclk** %5, align 8
  %11 = getelementptr inbounds %struct.rockchip_cpuclk, %struct.rockchip_cpuclk* %10, i32 0, i32 1
  %12 = load %struct.rockchip_cpuclk_reg_data*, %struct.rockchip_cpuclk_reg_data** %11, align 8
  store %struct.rockchip_cpuclk_reg_data* %12, %struct.rockchip_cpuclk_reg_data** %6, align 8
  %13 = load %struct.rockchip_cpuclk*, %struct.rockchip_cpuclk** %5, align 8
  %14 = getelementptr inbounds %struct.rockchip_cpuclk, %struct.rockchip_cpuclk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rockchip_cpuclk_reg_data*, %struct.rockchip_cpuclk_reg_data** %6, align 8
  %17 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, %struct.rockchip_cpuclk_reg_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rockchip_cpuclk_reg_data*, %struct.rockchip_cpuclk_reg_data** %6, align 8
  %22 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, %struct.rockchip_cpuclk_reg_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.rockchip_cpuclk_reg_data*, %struct.rockchip_cpuclk_reg_data** %6, align 8
  %27 = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, %struct.rockchip_cpuclk_reg_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %31, %34
  ret i64 %35
}

declare dso_local %struct.rockchip_cpuclk* @to_rockchip_cpuclk_hw(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
