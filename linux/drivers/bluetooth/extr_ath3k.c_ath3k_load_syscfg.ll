; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_syscfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_syscfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.ath3k_version = type { i32, i32 }

@ATH3K_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Can't get state to change to load configuration err\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Can't get version to change to load ram patch err\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ar3k/ramps_0x%08x_%d%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".dfu\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Configuration file not found %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @ath3k_load_syscfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath3k_load_syscfg(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.ath3k_version, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %12 = load i32, i32* @ATH3K_NAME_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = call i32 @ath3k_get_state(%struct.usb_device* %16, i8* %4)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = call i32 @ath3k_get_version(%struct.usb_device* %25, %struct.ath3k_version* %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ath3k_version, %struct.ath3k_version* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %38 [
    i32 129, label %35
    i32 128, label %36
    i32 130, label %37
  ]

35:                                               ; preds = %32
  store i32 26, i32* %9, align 4
  br label %39

36:                                               ; preds = %32
  store i32 40, i32* %9, align 4
  br label %39

37:                                               ; preds = %32
  store i32 19, i32* %9, align 4
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %37, %36, %35
  %40 = load i32, i32* @ATH3K_NAME_LEN, align 4
  %41 = getelementptr inbounds %struct.ath3k_version, %struct.ath3k_version* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @snprintf(i8* %15, i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = call i32 @request_firmware(%struct.firmware** %7, i8* %15, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

54:                                               ; preds = %39
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = load %struct.firmware*, %struct.firmware** %7, align 8
  %57 = call i32 @ath3k_load_fwfile(%struct.usb_device* %55, %struct.firmware* %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.firmware*, %struct.firmware** %7, align 8
  %59 = call i32 @release_firmware(%struct.firmware* %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %54, %51, %29, %20
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ath3k_get_state(%struct.usb_device*, i8*) #2

declare dso_local i32 @BT_ERR(i8*, ...) #2

declare dso_local i32 @ath3k_get_version(%struct.usb_device*, %struct.ath3k_version*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i32 @ath3k_load_fwfile(%struct.usb_device*, %struct.firmware*) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
