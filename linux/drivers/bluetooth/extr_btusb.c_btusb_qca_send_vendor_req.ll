; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_qca_send_vendor_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_qca_send_vendor_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to access otp area (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i8*, i32)* @btusb_qca_send_vendor_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_qca_send_vendor_req(%struct.usb_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %28 = load i32, i32* @USB_DIR_IN, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %33 = call i32 @usb_control_msg(%struct.usb_device* %24, i32 %25, i32 %26, i32 %29, i32 0, i32 0, i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %46

41:                                               ; preds = %21
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memcpy(i8* %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
