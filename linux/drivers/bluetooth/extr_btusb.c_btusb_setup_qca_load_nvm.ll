; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_qca_load_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_qca_load_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.qca_version = type { i32 }
%struct.qca_device_info = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"qca/nvm_usb_%08x.bin\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to request NVM file: %s (%d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"using NVM file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.qca_version*, %struct.qca_device_info*)* @btusb_setup_qca_load_nvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_setup_qca_load_nvm(%struct.hci_dev* %0, %struct.qca_version* %1, %struct.qca_device_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.qca_version*, align 8
  %7 = alloca %struct.qca_device_info*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store %struct.qca_version* %1, %struct.qca_version** %6, align 8
  store %struct.qca_device_info* %2, %struct.qca_device_info** %7, align 8
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %12 = load %struct.qca_version*, %struct.qca_version** %6, align 8
  %13 = getelementptr inbounds %struct.qca_version, %struct.qca_version* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = call i32 @snprintf(i8* %11, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = call i32 @request_firmware(%struct.firmware** %8, i8* %17, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @bt_dev_err(%struct.hci_dev* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %32 = call i32 @bt_dev_info(%struct.hci_dev* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %34 = load %struct.firmware*, %struct.firmware** %8, align 8
  %35 = load %struct.qca_device_info*, %struct.qca_device_info** %7, align 8
  %36 = getelementptr inbounds %struct.qca_device_info, %struct.qca_device_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @btusb_setup_qca_download_fw(%struct.hci_dev* %33, %struct.firmware* %34, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.firmware*, %struct.firmware** %8, align 8
  %40 = call i32 @release_firmware(%struct.firmware* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i8*, i32) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*) #1

declare dso_local i32 @btusb_setup_qca_download_fw(%struct.hci_dev*, %struct.firmware*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
