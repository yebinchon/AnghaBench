; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_qca_load_rampatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_qca_load_rampatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.qca_version = type { i32, i32 }
%struct.qca_device_info = type { i32, i64 }
%struct.qca_rampatch_version = type { i32, i32 }
%struct.firmware = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"qca/rampatch_usb_%08x.bin\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to request rampatch file: %s (%d)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"using rampatch file: %s\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"QCA: patch rome 0x%x build 0x%x, firmware rome 0x%x build 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"rampatch file version did not match with firmware\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.qca_version*, %struct.qca_device_info*)* @btusb_setup_qca_load_rampatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_setup_qca_load_rampatch(%struct.hci_dev* %0, %struct.qca_version* %1, %struct.qca_device_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.qca_version*, align 8
  %7 = alloca %struct.qca_device_info*, align 8
  %8 = alloca %struct.qca_rampatch_version*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store %struct.qca_version* %1, %struct.qca_version** %6, align 8
  store %struct.qca_device_info* %2, %struct.qca_device_info** %7, align 8
  %16 = load %struct.qca_version*, %struct.qca_version** %6, align 8
  %17 = getelementptr inbounds %struct.qca_version, %struct.qca_version* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.qca_version*, %struct.qca_version** %6, align 8
  %21 = getelementptr inbounds %struct.qca_version, %struct.qca_version* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = call i32 @request_firmware(%struct.firmware** %9, i8* %27, i32* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %36 = load i32, i32* %15, align 4
  %37 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %3
  %40 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %42 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.firmware*, %struct.firmware** %9, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.qca_device_info*, %struct.qca_device_info** %7, align 8
  %47 = getelementptr inbounds %struct.qca_device_info, %struct.qca_device_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = inttoptr i64 %49 to %struct.qca_rampatch_version*
  store %struct.qca_rampatch_version* %50, %struct.qca_rampatch_version** %8, align 8
  %51 = load %struct.qca_rampatch_version*, %struct.qca_rampatch_version** %8, align 8
  %52 = getelementptr inbounds %struct.qca_rampatch_version, %struct.qca_rampatch_version* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.qca_rampatch_version*, %struct.qca_rampatch_version** %8, align 8
  %56 = getelementptr inbounds %struct.qca_rampatch_version, %struct.qca_rampatch_version* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %39
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %39
  %73 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %74 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %84

77:                                               ; preds = %68
  %78 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %79 = load %struct.firmware*, %struct.firmware** %9, align 8
  %80 = load %struct.qca_device_info*, %struct.qca_device_info** %7, align 8
  %81 = getelementptr inbounds %struct.qca_device_info, %struct.qca_device_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @btusb_setup_qca_download_fw(%struct.hci_dev* %78, %struct.firmware* %79, i32 %82)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.firmware*, %struct.firmware** %9, align 8
  %86 = call i32 @release_firmware(%struct.firmware* %85)
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %33
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @btusb_setup_qca_download_fw(%struct.hci_dev*, %struct.firmware*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
