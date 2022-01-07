; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_po_new_smi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_po_new_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i64 (i32)* }
%struct.device = type { i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.kernel_ipmi_msg = type { i64, i32*, i32, i32 }
%struct.ipmi_addr = type { i32 }

@ready = common dso_local global i32 0, align 4
@ifnum_to_use = common dso_local global i32 0, align 4
@ipmi_poweroff_handler = common dso_local global i32 0, align 4
@ipmi_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not create IPMI user, error %d\0A\00", align 1
@ipmi_ifnum = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_DEVICE_ID_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to send IPMI get device id info, IPMI error 0x%x\0A\00", align 1
@halt_recv_msg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"(chassis) IPMI get device id info too short, was %d bytes, needed %d bytes\0A\00", align 1
@mfg_id = common dso_local global i32 0, align 4
@prod_id = common dso_local global i32 0, align 4
@capabilities = common dso_local global i32 0, align 4
@ipmi_version = common dso_local global i32 0, align 4
@NUM_PO_FUNCS = common dso_local global i32 0, align 4
@poweroff_functions = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"Unable to find a poweroff function that will work, giving up\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Found a %s style poweroff function\0A\00", align 1
@specific_poweroff_func = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32 0, align 4
@old_poweroff_func = common dso_local global i32 0, align 4
@ipmi_poweroff_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.device*)* @ipmi_po_new_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_po_new_smi(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ipmi_system_interface_addr, align 8
  %6 = alloca %struct.kernel_ipmi_msg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.device* %1, %struct.device** %4, align 8
  %9 = load i32, i32* @ready, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %123

12:                                               ; preds = %2
  %13 = load i32, i32* @ifnum_to_use, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @ifnum_to_use, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %123

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ipmi_create_user(i32 %21, i32* @ipmi_poweroff_handler, i32* null, i32* @ipmi_user)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %123

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* @ipmi_ifnum, align 4
  %30 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %31 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %33 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %5, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %36 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %6, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IPMI_GET_DEVICE_ID_CMD, align 4
  %38 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %6, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %6, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %6, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @ipmi_user, align 4
  %42 = bitcast %struct.ipmi_system_interface_addr* %5 to %struct.ipmi_addr*
  %43 = call i32 @ipmi_request_wait_for_response(i32 %41, %struct.ipmi_addr* %42, %struct.kernel_ipmi_msg* %6)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %103

49:                                               ; preds = %28
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %51 = icmp slt i32 %50, 12
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 12)
  br label %103

55:                                               ; preds = %49
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %58, %62
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 9
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %63, %67
  store i32 %68, i32* @mfg_id, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 10
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 11
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %71, %75
  store i32 %76, i32* @prod_id, align 4
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* @capabilities, align 4
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @halt_recv_msg, i32 0, i32 0, i32 1), align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* @ipmi_version, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %99, %55
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @NUM_PO_FUNCS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @poweroff_functions, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i64 (i32)*, i64 (i32)** %92, align 8
  %94 = load i32, i32* @ipmi_user, align 4
  %95 = call i64 %93(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %107

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %83

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102, %52, %46
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @ipmi_user, align 4
  %106 = call i32 @ipmi_destroy_user(i32 %105)
  br label %123

107:                                              ; preds = %97
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @poweroff_functions, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @poweroff_functions, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* @specific_poweroff_func, align 4
  %121 = load i32, i32* @pm_power_off, align 4
  store i32 %121, i32* @old_poweroff_func, align 4
  %122 = load i32, i32* @ipmi_poweroff_function, align 4
  store i32 %122, i32* @pm_power_off, align 4
  store i32 1, i32* @ready, align 4
  br label %123

123:                                              ; preds = %107, %103, %25, %19, %11
  ret void
}

declare dso_local i32 @ipmi_create_user(i32, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ipmi_request_wait_for_response(i32, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
