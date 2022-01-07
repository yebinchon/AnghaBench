; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_fwfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_load_fwfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@BULK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't allocate memory chunk for firmware\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@FW_HDR_SIZE = common dso_local global i32 0, align 4
@ATH3K_DNLOAD = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't change to loading configuration err\00", align 1
@TIMEGAP_USEC_MIN = common dso_local global i32 0, align 4
@TIMEGAP_USEC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @ath3k_load_fwfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath3k_load_fwfile(%struct.usb_device* %0, %struct.firmware* %1) #0 {
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
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.firmware*, %struct.firmware** %5, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @BULK_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc(i32 %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %113

26:                                               ; preds = %2
  %27 = load i32, i32* @uint, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @FW_HDR_SIZE, align 4
  %30 = call i32 @min_t(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.firmware*, %struct.firmware** %5, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @memcpy(i32* %31, i64 %34, i32 %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = call i32 @usb_sndctrlpipe(%struct.usb_device* %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ATH3K_DNLOAD, align 4
  %42 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %46 = call i32 @usb_control_msg(%struct.usb_device* %39, i32 %40, i32 %41, i32 %42, i32 0, i32 0, i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %26
  %50 = call i32 @BT_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %113

54:                                               ; preds = %26
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %62 = call i32 @usb_sndbulkpipe(%struct.usb_device* %61, i32 2)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %103, %54
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = load i32, i32* @TIMEGAP_USEC_MIN, align 4
  %68 = load i32, i32* @TIMEGAP_USEC_MAX, align 4
  %69 = call i32 @usleep_range(i32 %67, i32 %68)
  %70 = load i32, i32* @uint, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @BULK_SIZE, align 4
  %73 = call i32 @min_t(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.firmware*, %struct.firmware** %5, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @memcpy(i32* %74, i64 %80, i32 %81)
  %83 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @usb_bulk_msg(%struct.usb_device* %83, i32 %84, i32* %85, i32 %86, i32* %7, i32 3000)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %66
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90, %66
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @ath3k_log_failed_loading(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @kfree(i32* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %113

103:                                              ; preds = %90
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %63

110:                                              ; preds = %63
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @kfree(i32* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %110, %94, %49, %22
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ath3k_log_failed_loading(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
