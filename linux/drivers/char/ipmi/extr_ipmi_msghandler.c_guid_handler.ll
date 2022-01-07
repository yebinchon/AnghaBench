; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_guid_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_guid_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, %struct.bmc_device* }
%struct.bmc_device = type { i32, i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64*, i64 }
%struct.TYPE_3__ = type { i64 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_NETFN_APP_RESPONSE = common dso_local global i64 0, align 8
@IPMI_GET_DEVICE_GUID_CMD = common dso_local global i64 0, align 8
@UUID_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [115 x i8] c"The GUID response from the BMC was too short, it was %d but should have been %d.  Assuming GUID is not available.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, %struct.ipmi_recv_msg*)* @guid_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guid_handler(%struct.ipmi_smi* %0, %struct.ipmi_recv_msg* %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca %struct.ipmi_recv_msg*, align 8
  %5 = alloca %struct.bmc_device*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %4, align 8
  %6 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %7 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %6, i32 0, i32 2
  %8 = load %struct.bmc_device*, %struct.bmc_device** %7, align 8
  store %struct.bmc_device* %8, %struct.bmc_device** %5, align 8
  %9 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %10 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %17 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPMI_NETFN_APP_RESPONSE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPMI_GET_DEVICE_GUID_CMD, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %15, %2
  br label %79

30:                                               ; preds = %22
  %31 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %32 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %40 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %75

41:                                               ; preds = %30
  %42 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %43 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UUID_SIZE, align 8
  %47 = add nsw i64 %46, 1
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %51 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %53 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %56 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UUID_SIZE, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %60)
  br label %75

62:                                               ; preds = %41
  %63 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %64 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %63, i32 0, i32 1
  %65 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %4, align 8
  %66 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = bitcast i64* %69 to i32*
  %71 = call i32 @guid_copy(i32* %64, i32* %70)
  %72 = call i32 (...) @smp_wmb()
  %73 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %74 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %62, %49, %38
  %76 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %77 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %76, i32 0, i32 0
  %78 = call i32 @wake_up(i32* %77)
  br label %79

79:                                               ; preds = %75, %29
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
