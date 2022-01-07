; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ath3k_version = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH3K_GETVERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ath3k_version*)* @ath3k_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath3k_get_version(%struct.usb_device* %0, %struct.ath3k_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ath3k_version*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath3k_version*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ath3k_version* %1, %struct.ath3k_version** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ath3k_version* @kmalloc(i32 4, i32 %10)
  store %struct.ath3k_version* %11, %struct.ath3k_version** %8, align 8
  %12 = load %struct.ath3k_version*, %struct.ath3k_version** %8, align 8
  %13 = icmp ne %struct.ath3k_version* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ATH3K_GETVERSION, align 4
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = load i32, i32* @USB_DIR_IN, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ath3k_version*, %struct.ath3k_version** %8, align 8
  %27 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %28 = call i32 @usb_control_msg(%struct.usb_device* %20, i32 %21, i32 %22, i32 %25, i32 0, i32 0, %struct.ath3k_version* %26, i32 4, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ath3k_version*, %struct.ath3k_version** %5, align 8
  %30 = load %struct.ath3k_version*, %struct.ath3k_version** %8, align 8
  %31 = call i32 @memcpy(%struct.ath3k_version* %29, %struct.ath3k_version* %30, i32 4)
  %32 = load %struct.ath3k_version*, %struct.ath3k_version** %8, align 8
  %33 = call i32 @kfree(%struct.ath3k_version* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %17, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.ath3k_version* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.ath3k_version*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ath3k_version*, %struct.ath3k_version*, i32) #1

declare dso_local i32 @kfree(%struct.ath3k_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
