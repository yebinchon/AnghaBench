; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_setup_dell_poweredge_oem_data_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_setup_dell_poweredge_oem_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i8*, %struct.ipmi_device_id }
%struct.ipmi_device_id = type { i64, i64, i64, i64 }

@DELL_IANA_MFR_ID = common dso_local global i64 0, align 8
@DELL_POWEREDGE_8G_BMC_DEVICE_ID = common dso_local global i64 0, align 8
@DELL_POWEREDGE_8G_BMC_DEVICE_REV = common dso_local global i64 0, align 8
@DELL_POWEREDGE_8G_BMC_IPMI_VERSION = common dso_local global i64 0, align 8
@oem_data_avail_to_receive_msg_avail = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @setup_dell_poweredge_oem_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_dell_poweredge_oem_data_handler(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca %struct.ipmi_device_id*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %4 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %5 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %4, i32 0, i32 1
  store %struct.ipmi_device_id* %5, %struct.ipmi_device_id** %3, align 8
  %6 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %7 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DELL_IANA_MFR_ID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %13 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DELL_POWEREDGE_8G_BMC_DEVICE_ID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %19 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DELL_POWEREDGE_8G_BMC_DEVICE_REV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %25 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DELL_POWEREDGE_8G_BMC_IPMI_VERSION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8*, i8** @oem_data_avail_to_receive_msg_avail, align 8
  %31 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %32 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %50

33:                                               ; preds = %23, %17, %11
  %34 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %35 = call i32 @ipmi_version_major(%struct.ipmi_device_id* %34)
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %39 = call i32 @ipmi_version_major(%struct.ipmi_device_id* %38)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %3, align 8
  %43 = call i32 @ipmi_version_minor(%struct.ipmi_device_id* %42)
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %33
  %46 = load i8*, i8** @oem_data_avail_to_receive_msg_avail, align 8
  %47 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %41, %37
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @ipmi_version_major(%struct.ipmi_device_id*) #1

declare dso_local i32 @ipmi_version_minor(%struct.ipmi_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
