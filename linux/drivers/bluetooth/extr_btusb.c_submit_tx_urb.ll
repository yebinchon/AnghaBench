; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_submit_tx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_submit_tx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.urb = type { i32 }
%struct.btusb_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.urb*)* @submit_tx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_tx_urb(%struct.hci_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.btusb_data*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.btusb_data* %8, %struct.btusb_data** %5, align 8
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %11 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %10, i32 0, i32 1
  %12 = call i32 @usb_anchor_urb(%struct.urb* %9, i32* %11)
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @usb_submit_urb(%struct.urb* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @bt_dev_err(%struct.hci_dev* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.urb* %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %23, %18
  %35 = load %struct.urb*, %struct.urb** %4, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.urb*, %struct.urb** %4, align 8
  %40 = call i32 @usb_unanchor_urb(%struct.urb* %39)
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %43 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usb_mark_last_busy(i32 %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.urb*, %struct.urb** %4, align 8
  %48 = call i32 @usb_free_urb(%struct.urb* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
