; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_ath3k.c_ath3k_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Can't get state to change to normal mode err\00", align 1
@ATH3K_MODE_MASK = common dso_local global i8 0, align 1
@ATH3K_NORMAL_MODE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"firmware was already in normal mode\00", align 1
@ATH3K_SET_NORMAL_MODE = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @ath3k_set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath3k_set_normal_mode(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = call i32 @ath3k_get_state(%struct.usb_device* %7, i8* %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @ATH3K_MODE_MASK, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = load i8, i8* @ATH3K_NORMAL_MODE, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = call i32 @usb_sndctrlpipe(%struct.usb_device* %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ATH3K_SET_NORMAL_MODE, align 4
  %31 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %32 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %33 = call i32 @usb_control_msg(%struct.usb_device* %28, i32 %29, i32 %30, i32 %31, i32 0, i32 0, i32* null, i32 0, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %23, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @ath3k_get_state(%struct.usb_device*, i8*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
