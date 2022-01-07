; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_panic_halt_ipmi_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_panic_halt_ipmi_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_ipmi_msg = type { i32, i64, i32*, i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.ipmi_addr = type { i32 }

@ipmi_watchdog_state = common dso_local global i64 0, align 8
@WDOG_TIMEOUT_NONE = common dso_local global i64 0, align 8
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_WDOG_RESET_TIMER = common dso_local global i32 0, align 4
@panic_done_count = common dso_local global i32 0, align 4
@watchdog_user = common dso_local global i32 0, align 4
@panic_halt_heartbeat_smi_msg = common dso_local global i32 0, align 4
@panic_halt_heartbeat_recv_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @panic_halt_ipmi_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic_halt_ipmi_heartbeat() #0 {
  %1 = alloca %struct.kernel_ipmi_msg, align 8
  %2 = alloca %struct.ipmi_system_interface_addr, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @ipmi_watchdog_state, align 8
  %5 = load i64, i64* @WDOG_TIMEOUT_NONE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %10 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %2, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %12 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %2, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %2, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %1, i32 0, i32 0
  store i32 6, i32* %14, align 8
  %15 = load i32, i32* @IPMI_WDOG_RESET_TIMER, align 4
  %16 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %1, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %1, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %1, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = call i32 @atomic_add(i32 1, i32* @panic_done_count)
  %20 = load i32, i32* @watchdog_user, align 4
  %21 = bitcast %struct.ipmi_system_interface_addr* %2 to %struct.ipmi_addr*
  %22 = call i32 @ipmi_request_supply_msgs(i32 %20, %struct.ipmi_addr* %21, i32 0, %struct.kernel_ipmi_msg* %1, i32* null, i32* @panic_halt_heartbeat_smi_msg, i32* @panic_halt_heartbeat_recv_msg, i32 1)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = call i32 @atomic_sub(i32 1, i32* @panic_done_count)
  br label %27

27:                                               ; preds = %7, %25, %8
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @ipmi_request_supply_msgs(i32, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
