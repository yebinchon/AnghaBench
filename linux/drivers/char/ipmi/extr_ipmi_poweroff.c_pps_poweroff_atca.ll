; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_pps_poweroff_atca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_pps_poweroff_atca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.kernel_ipmi_msg = type { i32, i32, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"PPS powerdown hook used\0A\00", align 1
@IPMI_NETFN_OEM = common dso_local global i32 0, align 4
@IPMI_ATCA_PPS_GRACEFUL_RESTART = common dso_local global i32 0, align 4
@IPMI_ATCA_PPS_IANA = common dso_local global i32 0, align 4
@IPMI_UNKNOWN_ERR_COMPLETION_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to send ATCA, IPMI error 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_user*)* @pps_poweroff_atca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_poweroff_atca(%struct.ipmi_user* %0) #0 {
  %2 = alloca %struct.ipmi_user*, align 8
  %3 = alloca %struct.ipmi_system_interface_addr, align 8
  %4 = alloca %struct.kernel_ipmi_msg, align 4
  %5 = alloca i32, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %2, align 8
  %6 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %7 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %9 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @IPMI_NETFN_OEM, align 4
  %13 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @IPMI_ATCA_PPS_GRACEFUL_RESTART, align 4
  %15 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @IPMI_ATCA_PPS_IANA, align 4
  %17 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 0
  store i32 3, i32* %18, align 4
  %19 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %20 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %21 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %19, %struct.ipmi_addr* %20, %struct.kernel_ipmi_msg* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IPMI_UNKNOWN_ERR_COMPLETION_CODE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24, %1
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ipmi_request_in_rc_mode(%struct.ipmi_user*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
