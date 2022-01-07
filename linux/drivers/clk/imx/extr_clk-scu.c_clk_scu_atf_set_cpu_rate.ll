; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_atf_set_cpu_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_atf_set_cpu_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_scu = type { i64 }
%struct.arm_smccc_res = type { i32 }

@IMX_SC_R_A35 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IMX_SIP_CPUFREQ = common dso_local global i32 0, align 4
@IMX_SIP_SET_CPUFREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_scu_atf_set_cpu_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_scu_atf_set_cpu_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_scu*, align 8
  %9 = alloca %struct.arm_smccc_res, align 4
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_scu* @to_clk_scu(%struct.clk_hw* %11)
  store %struct.clk_scu* %12, %struct.clk_scu** %8, align 8
  %13 = load %struct.clk_scu*, %struct.clk_scu** %8, align 8
  %14 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IMX_SC_R_A35, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @IMX_SIP_CPUFREQ, align 4
  %24 = load i32, i32* @IMX_SIP_SET_CPUFREQ, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @arm_smccc_smc(i32 %23, i32 %24, i64 %25, i64 %26, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %9)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.clk_scu* @to_clk_scu(%struct.clk_hw*) #1

declare dso_local i32 @arm_smccc_smc(i32, i32, i64, i64, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
