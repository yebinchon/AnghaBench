; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_sc_pm_clock_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_sc_pm_clock_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32 }
%struct.imx_sc_msg_req_clock_enable = type { i32, i32, i32, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PM = common dso_local global i32 0, align 4
@IMX_SC_PM_FUNC_CLOCK_ENABLE = common dso_local global i32 0, align 4
@ccm_ipc_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_sc_ipc*, i32, i32, i32, i32)* @sc_pm_clock_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_pm_clock_enable(%struct.imx_sc_ipc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.imx_sc_ipc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.imx_sc_msg_req_clock_enable, align 4
  %12 = alloca %struct.imx_sc_rpc_msg*, align 8
  store %struct.imx_sc_ipc* %0, %struct.imx_sc_ipc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, %struct.imx_sc_msg_req_clock_enable* %11, i32 0, i32 4
  store %struct.imx_sc_rpc_msg* %13, %struct.imx_sc_rpc_msg** %12, align 8
  %14 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %15 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %16 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IMX_SC_RPC_SVC_PM, align 4
  %18 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %19 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IMX_SC_PM_FUNC_CLOCK_ENABLE, align 4
  %21 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %22 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %12, align 8
  %24 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %23, i32 0, i32 0
  store i32 3, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, %struct.imx_sc_msg_req_clock_enable* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, %struct.imx_sc_msg_req_clock_enable* %11, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, %struct.imx_sc_msg_req_clock_enable* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.imx_sc_msg_req_clock_enable, %struct.imx_sc_msg_req_clock_enable* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @ccm_ipc_handle, align 4
  %35 = call i32 @imx_scu_call_rpc(i32 %34, %struct.imx_sc_msg_req_clock_enable* %11, i32 1)
  ret i32 %35
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_req_clock_enable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
