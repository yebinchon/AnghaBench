; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-ddr.c_rockchip_ddrclk_sip_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-ddr.c_rockchip_ddrclk_sip_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_ddrclk = type { i32 }
%struct.arm_smccc_res = type { i32 }

@ROCKCHIP_SIP_DRAM_FREQ = common dso_local global i32 0, align 4
@ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @rockchip_ddrclk_sip_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_ddrclk_sip_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rockchip_ddrclk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.arm_smccc_res, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.rockchip_ddrclk* @to_rockchip_ddrclk_hw(%struct.clk_hw* %10)
  store %struct.rockchip_ddrclk* %11, %struct.rockchip_ddrclk** %7, align 8
  %12 = load %struct.rockchip_ddrclk*, %struct.rockchip_ddrclk** %7, align 8
  %13 = getelementptr inbounds %struct.rockchip_ddrclk, %struct.rockchip_ddrclk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load i32, i32* @ROCKCHIP_SIP_DRAM_FREQ, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE, align 4
  %20 = call i32 @arm_smccc_smc(i32 %17, i64 %18, i32 0, i32 %19, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %9)
  %21 = load %struct.rockchip_ddrclk*, %struct.rockchip_ddrclk** %7, align 8
  %22 = getelementptr inbounds %struct.rockchip_ddrclk, %struct.rockchip_ddrclk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32 %23, i64 %24)
  %26 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local %struct.rockchip_ddrclk* @to_rockchip_ddrclk_hw(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @arm_smccc_smc(i32, i64, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
