; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_scu = type { i32, i32 }
%struct.imx_sc_msg_get_clock_rate = type { %struct.TYPE_6__, %struct.imx_sc_rpc_msg }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PM = common dso_local global i32 0, align 4
@IMX_SC_PM_FUNC_GET_CLOCK_RATE = common dso_local global i32 0, align 4
@ccm_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: failed to get clock rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_scu_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_scu_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_scu*, align 8
  %7 = alloca %struct.imx_sc_msg_get_clock_rate, align 4
  %8 = alloca %struct.imx_sc_rpc_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_scu* @to_clk_scu(%struct.clk_hw* %10)
  store %struct.clk_scu* %11, %struct.clk_scu** %6, align 8
  %12 = getelementptr inbounds %struct.imx_sc_msg_get_clock_rate, %struct.imx_sc_msg_get_clock_rate* %7, i32 0, i32 1
  store %struct.imx_sc_rpc_msg* %12, %struct.imx_sc_rpc_msg** %8, align 8
  %13 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %14 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %8, align 8
  %15 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IMX_SC_RPC_SVC_PM, align 4
  %17 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %8, align 8
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IMX_SC_PM_FUNC_GET_CLOCK_RATE, align 4
  %20 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %8, align 8
  %21 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %8, align 8
  %23 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load %struct.clk_scu*, %struct.clk_scu** %6, align 8
  %25 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds %struct.imx_sc_msg_get_clock_rate, %struct.imx_sc_msg_get_clock_rate* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.clk_scu*, %struct.clk_scu** %6, align 8
  %32 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.imx_sc_msg_get_clock_rate, %struct.imx_sc_msg_get_clock_rate* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ccm_ipc_handle, align 4
  %38 = call i32 @imx_scu_call_rpc(i32 %37, %struct.imx_sc_msg_get_clock_rate* %7, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %43 = call i32 @clk_hw_get_name(%struct.clk_hw* %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  store i64 0, i64* %3, align 8
  br label %52

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.imx_sc_msg_get_clock_rate, %struct.imx_sc_msg_get_clock_rate* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local %struct.clk_scu* @to_clk_scu(%struct.clk_hw*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_get_clock_rate*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
