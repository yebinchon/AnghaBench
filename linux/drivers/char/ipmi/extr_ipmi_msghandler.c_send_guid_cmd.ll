; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_send_guid_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_send_guid_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kernel_ipmi_msg = type { i64, i32*, i32, i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_DEVICE_GUID_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, i32)* @send_guid_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_guid_cmd(%struct.ipmi_smi* %0, i32 %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernel_ipmi_msg, align 8
  %6 = alloca %struct.ipmi_system_interface_addr, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %8 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %6, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %10 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %6, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %13 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @IPMI_GET_DEVICE_GUID_CMD, align 4
  %15 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %19 = bitcast %struct.ipmi_system_interface_addr* %6 to %struct.ipmi_addr*
  %20 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %21 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %22 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i_ipmi_request(i32* null, %struct.ipmi_smi* %18, %struct.ipmi_addr* %19, i32 0, %struct.kernel_ipmi_msg* %5, %struct.ipmi_smi* %20, i32* null, i32* null, i32 0, i32 %26, i32 %32, i32 -1, i32 0)
  ret i32 %33
}

declare dso_local i32 @i_ipmi_request(i32*, %struct.ipmi_smi*, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, %struct.ipmi_smi*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
