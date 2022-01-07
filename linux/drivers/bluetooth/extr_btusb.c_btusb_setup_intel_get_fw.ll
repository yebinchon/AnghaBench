; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel_get_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel_get_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.hci_dev = type { i32 }
%struct.intel_version = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"intel/ibt-hw-%x.%x.%x-fw-%x.%x.%x.%x.%x.bseq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Intel firmware file request failed (%d)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to open Intel firmware file: %s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"intel/ibt-hw-%x.%x.bseq\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to open default fw file: %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Intel Bluetooth firmware file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.firmware* (%struct.hci_dev*, %struct.intel_version*)* @btusb_setup_intel_get_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.firmware* @btusb_setup_intel_get_fw(%struct.hci_dev* %0, %struct.intel_version* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.intel_version*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.intel_version* %1, %struct.intel_version** %5, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %10 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %11 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %14 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %17 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %20 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %23 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %26 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %29 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %32 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %9, i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 0
  %38 = call i32 @request_firmware(%struct.firmware** %6, i8* %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store %struct.firmware* null, %struct.firmware** %3, align 8
  br label %78

50:                                               ; preds = %41
  %51 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %53)
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %56 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %57 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %60 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %55, i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61)
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %64 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 0
  %66 = call i32 @request_firmware(%struct.firmware** %6, i8* %63, i32* %65)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %50
  %69 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %71 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  store %struct.firmware* null, %struct.firmware** %3, align 8
  br label %78

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %76 = call i32 @bt_dev_info(%struct.hci_dev* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load %struct.firmware*, %struct.firmware** %6, align 8
  store %struct.firmware* %77, %struct.firmware** %3, align 8
  br label %78

78:                                               ; preds = %73, %68, %46
  %79 = load %struct.firmware*, %struct.firmware** %3, align 8
  ret %struct.firmware* %79
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
