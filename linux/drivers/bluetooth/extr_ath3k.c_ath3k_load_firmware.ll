; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"udev %p\00", align 1
@BULK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't allocate memory chunk for firmware\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FW_HDR_SIZE = common dso_local global i32 0, align 4
@USB_REQ_DFU_DNLOAD = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Can't change to loading configuration err\00", align 1
@TIMEGAP_USEC_MIN = common dso_local global i32 0, align 4
@TIMEGAP_USEC_MAX = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @ath3k_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath3k_load_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.firmware*, %struct.firmware** %5, align 8
  %14 = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %16)
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = call i32 @usb_sndctrlpipe(%struct.usb_device* %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @BULK_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmalloc(i32 %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %2
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.firmware*, %struct.firmware** %5, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @FW_HDR_SIZE, align 4
  %35 = call i32 @memcpy(i32* %30, i64 %33, i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @USB_REQ_DFU_DNLOAD, align 4
  %39 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @FW_HDR_SIZE, align 4
  %42 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %43 = call i32 @usb_control_msg(%struct.usb_device* %36, i32 %37, i32 %38, i32 %39, i32 0, i32 0, i32* %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = call i32 @BT_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %102

48:                                               ; preds = %29
  %49 = load i32, i32* @FW_HDR_SIZE, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @FW_HDR_SIZE, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = call i32 @usb_sndbulkpipe(%struct.usb_device* %55, i32 2)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %94, %48
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %57
  %61 = load i32, i32* @TIMEGAP_USEC_MIN, align 4
  %62 = load i32, i32* @TIMEGAP_USEC_MAX, align 4
  %63 = call i32 @usleep_range(i32 %61, i32 %62)
  %64 = load i32, i32* @uint, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @BULK_SIZE, align 4
  %67 = call i32 @min_t(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.firmware*, %struct.firmware** %5, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @memcpy(i32* %68, i64 %74, i32 %75)
  %77 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @usb_bulk_msg(%struct.usb_device* %77, i32 %78, i32* %79, i32 %80, i32* %7, i32 3000)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %60
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84, %60
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ath3k_log_failed_loading(i32 %89, i32 %90, i32 %91, i32 %92)
  br label %102

94:                                               ; preds = %84
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %57

101:                                              ; preds = %57
  br label %102

102:                                              ; preds = %101, %88, %46
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @kfree(i32* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @BT_DBG(i8*, %struct.usb_device*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ath3k_log_failed_loading(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
