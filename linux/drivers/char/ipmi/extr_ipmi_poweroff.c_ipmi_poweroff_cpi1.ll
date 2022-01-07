; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_poweroff_cpi1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_poweroff_cpi1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ipmi_user = type { i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.ipmi_ipmb_addr = type { i8, i8, i64, i32 }
%struct.kernel_ipmi_msg = type { i32, i8*, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Powering down via CPI1 power command\0A\00", align 1
@IPMI_NETFN_OEM_8 = common dso_local global i32 0, align 4
@OEM_GRP_CMD_GET_SLOT_GA = common dso_local global i32 0, align 4
@halt_recv_msg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IPMI_NETFN_SENSOR_EVT = common dso_local global i32 0, align 4
@IPMI_CMD_GET_EVENT_RECEIVER = common dso_local global i32 0, align 4
@IPMI_IPMB_ADDR_TYPE = common dso_local global i32 0, align 4
@OEM_GRP_CMD_REQUEST_HOTSWAP_CTRL = common dso_local global i32 0, align 4
@IPMI_NETFN_OEM_1 = common dso_local global i32 0, align 4
@OEM_GRP_CMD_SET_RESET_STATE = common dso_local global i32 0, align 4
@OEM_GRP_CMD_SET_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_user*)* @ipmi_poweroff_cpi1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_poweroff_cpi1(%struct.ipmi_user* %0) #0 {
  %2 = alloca %struct.ipmi_user*, align 8
  %3 = alloca %struct.ipmi_system_interface_addr, align 8
  %4 = alloca %struct.ipmi_ipmb_addr, align 8
  %5 = alloca %struct.kernel_ipmi_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.ipmi_user* %0, %struct.ipmi_user** %2, align 8
  %12 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %13 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %15 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %3, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @IPMI_NETFN_OEM_8, align 4
  %19 = ashr i32 %18, 2
  %20 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @OEM_GRP_CMD_GET_SLOT_GA, align 4
  %22 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %26 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %27 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %25, %struct.ipmi_addr* %26, %struct.kernel_ipmi_msg* %5)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %119

31:                                               ; preds = %1
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 9
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 176, %39
  br label %45

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 174, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %9, align 1
  %48 = load i32, i32* @IPMI_NETFN_SENSOR_EVT, align 4
  %49 = ashr i32 %48, 2
  %50 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @IPMI_CMD_GET_EVENT_RECEIVER, align 4
  %52 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i8* null, i8** %53, align 8
  %54 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %56 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %57 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %55, %struct.ipmi_addr* %56, %struct.kernel_ipmi_msg* %5)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %119

61:                                               ; preds = %45
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %10, align 1
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %11, align 1
  %70 = load i32, i32* @IPMI_IPMB_ADDR_TYPE, align 4
  %71 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %4, i32 0, i32 3
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %4, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i8, i8* %10, align 1
  %74 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %4, i32 0, i32 0
  store i8 %73, i8* %74, align 8
  %75 = load i8, i8* %11, align 1
  %76 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %4, i32 0, i32 1
  store i8 %75, i8* %76, align 1
  %77 = load i32, i32* @IPMI_NETFN_OEM_8, align 4
  %78 = ashr i32 %77, 2
  %79 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* @OEM_GRP_CMD_REQUEST_HOTSWAP_CTRL, align 4
  %81 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i8* %9, i8** %82, align 8
  %83 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %85 = bitcast %struct.ipmi_ipmb_addr* %4 to %struct.ipmi_addr*
  %86 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %84, %struct.ipmi_addr* %85, %struct.kernel_ipmi_msg* %5)
  %87 = load i32, i32* @IPMI_NETFN_OEM_1, align 4
  %88 = ashr i32 %87, 2
  %89 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* @OEM_GRP_CMD_SET_RESET_STATE, align 4
  %91 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %93 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %94, align 1
  %95 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %97 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %98 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %96, %struct.ipmi_addr* %97, %struct.kernel_ipmi_msg* %5)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %61
  br label %119

102:                                              ; preds = %61
  %103 = load i32, i32* @IPMI_NETFN_OEM_1, align 4
  %104 = ashr i32 %103, 2
  %105 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* @OEM_GRP_CMD_SET_POWER_STATE, align 4
  %107 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %109 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %110, align 1
  %111 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.ipmi_user*, %struct.ipmi_user** %2, align 8
  %113 = bitcast %struct.ipmi_system_interface_addr* %3 to %struct.ipmi_addr*
  %114 = call i32 @ipmi_request_in_rc_mode(%struct.ipmi_user* %112, %struct.ipmi_addr* %113, %struct.kernel_ipmi_msg* %5)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %119

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %117, %101, %60, %30
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ipmi_request_in_rc_mode(%struct.ipmi_user*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
