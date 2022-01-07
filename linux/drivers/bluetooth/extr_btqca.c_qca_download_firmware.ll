; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.rome_config = type { i64, i32, i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"QCA Downloading %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"QCA Failed to request file: %s (%d)\00", align 1
@MAX_SIZE_PER_TLV_SEGMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Send segment %d, size %d\00", align 1
@ROME_SKIP_EVT_NONE = common dso_local global i32 0, align 4
@ROME_SKIP_EVT_VSE_CC = common dso_local global i64 0, align 8
@ROME_SKIP_EVT_VSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.rome_config*)* @qca_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_download_firmware(%struct.hci_dev* %0, %struct.rome_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.rome_config*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.rome_config* %1, %struct.rome_config** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %14 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bt_dev_info(%struct.hci_dev* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %18 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 0
  %22 = call i32 @request_firmware(%struct.firmware** %6, i32 %19, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %28 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @bt_dev_err(%struct.hci_dev* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %104

33:                                               ; preds = %2
  %34 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %35 = load %struct.firmware*, %struct.firmware** %6, align 8
  %36 = call i32 @qca_tlv_check_data(%struct.rome_config* %34, %struct.firmware* %35)
  %37 = load %struct.firmware*, %struct.firmware** %6, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load %struct.firmware*, %struct.firmware** %6, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %79, %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %43
  %47 = load i32, i32* @MAX_SIZE_PER_TLV_SEGMENT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @bt_dev_dbg(%struct.hci_dev* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @MAX_SIZE_PER_TLV_SEGMENT, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %46
  %65 = load i32, i32* @ROME_SKIP_EVT_NONE, align 4
  %66 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %67 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %73 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @qca_tlv_send_segment(%struct.hci_dev* %69, i32 %70, i32* %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %100

79:                                               ; preds = %68
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %7, align 8
  br label %43

84:                                               ; preds = %43
  %85 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %86 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ROME_SKIP_EVT_VSE_CC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.rome_config*, %struct.rome_config** %5, align 8
  %92 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ROME_SKIP_EVT_VSE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %84
  %97 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %98 = call i32 @qca_inject_cmd_complete_event(%struct.hci_dev* %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.firmware*, %struct.firmware** %6, align 8
  %102 = call i32 @release_firmware(%struct.firmware* %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32, i32) #1

declare dso_local i32 @qca_tlv_check_data(%struct.rome_config*, %struct.firmware*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bt_dev_dbg(%struct.hci_dev*, i8*, i32, i32) #1

declare dso_local i32 @qca_tlv_send_segment(%struct.hci_dev*, i32, i32*, i32) #1

declare dso_local i32 @qca_inject_cmd_complete_event(%struct.hci_dev*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
