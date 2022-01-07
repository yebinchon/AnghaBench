; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_scu = type { i32, i32 }
%struct.imx_sc_msg_req_set_clock_rate = type { i32, i32, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PM = common dso_local global i32 0, align 4
@IMX_SC_PM_FUNC_SET_CLOCK_RATE = common dso_local global i32 0, align 4
@ccm_ipc_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_scu_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_scu_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_scu*, align 8
  %8 = alloca %struct.imx_sc_msg_req_set_clock_rate, align 4
  %9 = alloca %struct.imx_sc_rpc_msg*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_scu* @to_clk_scu(%struct.clk_hw* %10)
  store %struct.clk_scu* %11, %struct.clk_scu** %7, align 8
  %12 = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, %struct.imx_sc_msg_req_set_clock_rate* %8, i32 0, i32 3
  store %struct.imx_sc_rpc_msg* %12, %struct.imx_sc_rpc_msg** %9, align 8
  %13 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %14 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %15 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IMX_SC_RPC_SVC_PM, align 4
  %17 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IMX_SC_PM_FUNC_SET_CLOCK_RATE, align 4
  %20 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %21 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %9, align 8
  %23 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %22, i32 0, i32 0
  store i32 3, i32* %23, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @cpu_to_le32(i64 %24)
  %26 = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, %struct.imx_sc_msg_req_set_clock_rate* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.clk_scu*, %struct.clk_scu** %7, align 8
  %28 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, %struct.imx_sc_msg_req_set_clock_rate* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.clk_scu*, %struct.clk_scu** %7, align 8
  %33 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.imx_sc_msg_req_set_clock_rate, %struct.imx_sc_msg_req_set_clock_rate* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @ccm_ipc_handle, align 4
  %37 = call i32 @imx_scu_call_rpc(i32 %36, %struct.imx_sc_msg_req_set_clock_rate* %8, i32 1)
  ret i32 %37
}

declare dso_local %struct.clk_scu* @to_clk_scu(%struct.clk_hw*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_req_set_clock_rate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
