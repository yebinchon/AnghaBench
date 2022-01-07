; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-scu.c_clk_scu_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_scu = type { i32, i32 }
%struct.imx_sc_msg_get_clock_parent = type { %struct.TYPE_6__, %struct.imx_sc_rpc_msg }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PM = common dso_local global i32 0, align 4
@IMX_SC_PM_FUNC_GET_CLOCK_PARENT = common dso_local global i32 0, align 4
@ccm_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: failed to get clock parent %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_scu_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_scu_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_scu*, align 8
  %5 = alloca %struct.imx_sc_msg_get_clock_parent, align 4
  %6 = alloca %struct.imx_sc_rpc_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_scu* @to_clk_scu(%struct.clk_hw* %8)
  store %struct.clk_scu* %9, %struct.clk_scu** %4, align 8
  %10 = getelementptr inbounds %struct.imx_sc_msg_get_clock_parent, %struct.imx_sc_msg_get_clock_parent* %5, i32 0, i32 1
  store %struct.imx_sc_rpc_msg* %10, %struct.imx_sc_rpc_msg** %6, align 8
  %11 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %12 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %13 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IMX_SC_RPC_SVC_PM, align 4
  %15 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %16 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IMX_SC_PM_FUNC_GET_CLOCK_PARENT, align 4
  %18 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %19 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %21 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %20, i32 0, i32 0
  store i32 2, i32* %21, align 4
  %22 = load %struct.clk_scu*, %struct.clk_scu** %4, align 8
  %23 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.imx_sc_msg_get_clock_parent, %struct.imx_sc_msg_get_clock_parent* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.clk_scu*, %struct.clk_scu** %4, align 8
  %30 = getelementptr inbounds %struct.clk_scu, %struct.clk_scu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.imx_sc_msg_get_clock_parent, %struct.imx_sc_msg_get_clock_parent* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ccm_ipc_handle, align 4
  %36 = call i32 @imx_scu_call_rpc(i32 %35, %struct.imx_sc_msg_get_clock_parent* %5, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %41 = call i32 @clk_hw_get_name(%struct.clk_hw* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  store i32 0, i32* %2, align 4
  br label %49

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.imx_sc_msg_get_clock_parent, %struct.imx_sc_msg_get_clock_parent* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.clk_scu* @to_clk_scu(%struct.clk_hw*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_get_clock_parent*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
