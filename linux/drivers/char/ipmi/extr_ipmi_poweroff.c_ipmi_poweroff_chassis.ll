; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_poweroff_chassis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_poweroff_chassis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.kernel_ipmi_msg = type { i8*, i32, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Powering %s via IPMI chassis control command\0A\00", align 1
@poweroff_powercycle = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@IPMI_NETFN_CHASSIS_REQUEST = common dso_local global i32 0, align 4
@IPMI_CHASSIS_CONTROL_CMD = common dso_local global i32 0, align 4
@IPMI_CHASSIS_POWER_CYCLE = common dso_local global i8 0, align 1
@IPMI_CHASSIS_POWER_DOWN = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Unable to send chassis power cycle message, IPMI error 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Unable to send chassis power down message, IPMI error 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_user*)* @ipmi_poweroff_chassis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_poweroff_chassis(%struct.ipmi_user* %0) #0 {
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
  br label %12

12:                                               ; preds = %42, %1
  %13 = load i64, i64* @poweroff_powercycle, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @IPMI_NETFN_CHASSIS_REQUEST, align 4
  %19 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @IPMI_CHASSIS_CONTROL_CMD, align 4
  %21 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* @poweroff_powercycle, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i8, i8* @IPMI_CHASSIS_POWER_CYCLE, align 1
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  br label %30

27:                                               ; preds = %12
  %28 = load i8, i8* @IPMI_CHASSIS_POWER_DOWN, align 1
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8 %28, i8* %29, align 1
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %32 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %4, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %35 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %36 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %34, %struct.ipmi_addr* %35, %struct.kernel_ipmi_msg* %4)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load i64, i64* @poweroff_powercycle, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i64 0, i64* @poweroff_powercycle, align 8
  br label %12

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @ipmi_request_in_rc_mode(%struct.ipmi_user*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
