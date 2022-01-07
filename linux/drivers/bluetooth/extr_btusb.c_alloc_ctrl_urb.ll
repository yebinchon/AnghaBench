; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_alloc_ctrl_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_alloc_ctrl_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i8*, i32, i32 }
%struct.btusb_data = type { i32, i32, i32 }
%struct.usb_ctrlrequest = type { i32, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_tx_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.hci_dev*, %struct.sk_buff*)* @alloc_ctrl_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @alloc_ctrl_urb(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.usb_ctrlrequest*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %11 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %10)
  store %struct.btusb_data* %11, %struct.btusb_data** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %12)
  store %struct.urb* %13, %struct.urb** %8, align 8
  %14 = load %struct.urb*, %struct.urb** %8, align 8
  %15 = icmp ne %struct.urb* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.urb* @ERR_PTR(i32 %18)
  store %struct.urb* %19, %struct.urb** %3, align 8
  br label %77

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.usb_ctrlrequest* @kmalloc(i32 32, i32 %21)
  store %struct.usb_ctrlrequest* %22, %struct.usb_ctrlrequest** %7, align 8
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %24 = icmp ne %struct.usb_ctrlrequest* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.urb*, %struct.urb** %8, align 8
  %27 = call i32 @usb_free_urb(%struct.urb* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.urb* @ERR_PTR(i32 %29)
  store %struct.urb* %30, %struct.urb** %3, align 8
  br label %77

31:                                               ; preds = %20
  %32 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %33 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %38 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %43 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @__cpu_to_le16(i32 %48)
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %51 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %53 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_sndctrlpipe(i32 %54, i32 0)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.urb*, %struct.urb** %8, align 8
  %57 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %58 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %62 = bitcast %struct.usb_ctrlrequest* %61 to i8*
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @btusb_tx_complete, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @usb_fill_control_urb(%struct.urb* %56, i32 %59, i32 %60, i8* %62, i32 %65, i32 %68, i32 %69, %struct.sk_buff* %70)
  %72 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %73 = bitcast %struct.hci_dev* %72 to i8*
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %76, %struct.urb** %3, align 8
  br label %77

77:                                               ; preds = %31, %25, %16
  %78 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %78
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.urb* @ERR_PTR(i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
