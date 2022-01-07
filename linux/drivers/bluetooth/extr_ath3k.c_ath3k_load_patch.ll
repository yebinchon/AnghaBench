; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i64, i64 }
%struct.ath3k_version = type { i32, i32 }

@ATH3K_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't get state to change to load ram patch err\00", align 1
@ATH3K_PATCH_UPDATE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Patch was already downloaded\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Can't get version to change to load ram patch err\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ar3k/AthrBT_0x%08x.dfu\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Patch file not found %s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Patch file version did not match with firmware\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @ath3k_load_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath3k_load_patch(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.ath3k_version, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %13 = load i32, i32* @ATH3K_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = call i32 @ath3k_get_state(%struct.usb_device* %17, i8* %4)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

24:                                               ; preds = %1
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @ATH3K_PATCH_UPDATE, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

33:                                               ; preds = %24
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = call i32 @ath3k_get_version(%struct.usb_device* %34, %struct.ath3k_version* %8)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

41:                                               ; preds = %33
  %42 = load i32, i32* @ATH3K_NAME_LEN, align 4
  %43 = getelementptr inbounds %struct.ath3k_version, %struct.ath3k_version* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = call i32 @snprintf(i8* %16, i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = call i32 @request_firmware(%struct.firmware** %7, i8* %16, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

55:                                               ; preds = %41
  %56 = load %struct.firmware*, %struct.firmware** %7, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.firmware*, %struct.firmware** %7, align 8
  %60 = getelementptr inbounds %struct.firmware, %struct.firmware* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = sub nsw i64 %62, 8
  %64 = call i64 @get_unaligned_le32(i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load %struct.firmware*, %struct.firmware** %7, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.firmware*, %struct.firmware** %7, align 8
  %69 = getelementptr inbounds %struct.firmware, %struct.firmware* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = sub nsw i64 %71, 4
  %73 = call i64 @get_unaligned_le32(i64 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.ath3k_version, %struct.ath3k_version* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le32_to_cpu(i32 %76)
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %55
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.ath3k_version, %struct.ath3k_version* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  %84 = icmp sle i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79, %55
  %86 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.firmware*, %struct.firmware** %7, align 8
  %88 = call i32 @release_firmware(%struct.firmware* %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

91:                                               ; preds = %79
  %92 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %93 = load %struct.firmware*, %struct.firmware** %7, align 8
  %94 = call i32 @ath3k_load_fwfile(%struct.usb_device* %92, %struct.firmware* %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.firmware*, %struct.firmware** %7, align 8
  %96 = call i32 @release_firmware(%struct.firmware* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %91, %85, %52, %38, %31, %21
  %99 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ath3k_get_state(%struct.usb_device*, i8*) #2

declare dso_local i32 @BT_ERR(i8*, ...) #2

declare dso_local i32 @BT_DBG(i8*) #2

declare dso_local i32 @ath3k_get_version(%struct.usb_device*, %struct.ath3k_version*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i64 @le32_to_cpu(i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i64 @get_unaligned_le32(i64) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i32 @ath3k_load_fwfile(%struct.usb_device*, %struct.firmware*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
