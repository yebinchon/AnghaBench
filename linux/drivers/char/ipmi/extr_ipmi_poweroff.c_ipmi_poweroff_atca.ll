; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_poweroff_atca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_poweroff_atca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.kernel_ipmi_msg = type { i8*, i32, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Powering down via ATCA power command\0A\00", align 1
@IPMI_NETFN_ATCA = common dso_local global i32 0, align 4
@IPMI_ATCA_SET_POWER_CMD = common dso_local global i32 0, align 4
@IPMI_PICMG_ID = common dso_local global i8 0, align 1
@IPMI_UNKNOWN_ERR_COMPLETION_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Unable to send ATCA powerdown message, IPMI error 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_user*)* @ipmi_poweroff_atca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_poweroff_atca(%struct.ipmi_user* %0) #0 {
  %2 = alloca %struct.ipmi_user*, align 8
  %3 = alloca %struct.ipmi_system_interface_addr, align 8
  %4 = alloca %struct.kernel_ipmi_msg, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  store %struct.ipmi_user* %0, %struct.ipmi_user** %2, align 8
  %7 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %8 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %10 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @IPMI_NETFN_ATCA, align 4
  %14 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @IPMI_ATCA_SET_POWER_CMD, align 4
  %16 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i8, i8* @IPMI_PICMG_ID, align 1
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 1
  store i32 4, i32* %24, align 8
  %25 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %26 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %27 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %25, %struct.ipmi_addr* %26, %struct.kernel_ipmi_msg* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IPMI_UNKNOWN_ERR_COMPLETION_CODE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %42

37:                                               ; preds = %30, %1
  br i1 true, label %38, label %41

38:                                               ; preds = %37
  %39 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %40 = call i32 @atca_oem_poweroff_hook(%struct.ipmi_user* %39)
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ipmi_request_in_rc_mode(%struct.ipmi_user*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @atca_oem_poweroff_hook(%struct.ipmi_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
