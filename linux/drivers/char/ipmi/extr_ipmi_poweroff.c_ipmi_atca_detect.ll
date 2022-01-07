; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_atca_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_atca_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.kernel_ipmi_msg = type { i8*, i32, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_NETFN_ATCA = common dso_local global i32 0, align 4
@IPMI_ATCA_GET_ADDR_INFO_CMD = common dso_local global i32 0, align 4
@IPMI_PICMG_ID = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"ATCA Detect mfg 0x%X prod 0x%X\0A\00", align 1
@mfg_id = common dso_local global i64 0, align 8
@prod_id = common dso_local global i64 0, align 8
@IPMI_MOTOROLA_MANUFACTURER_ID = common dso_local global i64 0, align 8
@IPMI_MOTOROLA_PPS_IPMC_PRODUCT_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Installing Pigeon Point Systems Poweroff Hook\0A\00", align 1
@pps_poweroff_atca = common dso_local global i32 0, align 4
@atca_oem_poweroff_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_user*)* @ipmi_atca_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_atca_detect(%struct.ipmi_user* %0) #0 {
  %2 = alloca %struct.ipmi_user*, align 8
  %3 = alloca %struct.ipmi_system_interface_addr, align 8
  %4 = alloca %struct.kernel_ipmi_msg, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8], align 1
  store %struct.ipmi_user* %0, %struct.ipmi_user** %2, align 8
  %7 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %8 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %10 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @IPMI_NETFN_ATCA, align 4
  %13 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @IPMI_ATCA_GET_ADDR_INFO_CMD, align 4
  %15 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i8, i8* @IPMI_PICMG_ID, align 1
  %17 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %22 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %23 = call i32 @ipmi_request_wait_for_response(%struct.ipmi_user* %21, %struct.ipmi_addr* %22, %struct.kernel_ipmi_msg* %4)
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* @mfg_id, align 8
  %25 = load i64, i64* @prod_id, align 8
  %26 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  %27 = load i64, i64* @mfg_id, align 8
  %28 = load i64, i64* @IPMI_MOTOROLA_MANUFACTURER_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i64, i64* @prod_id, align 8
  %32 = load i64, i64* @IPMI_MOTOROLA_PPS_IPMC_PRODUCT_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @pps_poweroff_atca, align 4
  store i32 %36, i32* @atca_oem_poweroff_hook, align 4
  br label %37

37:                                               ; preds = %34, %30, %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i32 @ipmi_request_wait_for_response(%struct.ipmi_user*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
