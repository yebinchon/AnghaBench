; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_alloc_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_alloc_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i8*, i32, i32 }
%struct.btusb_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_tx_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.hci_dev*, %struct.sk_buff*)* @alloc_bulk_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @alloc_bulk_urb(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.btusb_data* %10, %struct.btusb_data** %6, align 8
  %11 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %12 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.urb* @ERR_PTR(i32 %17)
  store %struct.urb* %18, %struct.urb** %3, align 8
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %20)
  store %struct.urb* %21, %struct.urb** %7, align 8
  %22 = load %struct.urb*, %struct.urb** %7, align 8
  %23 = icmp ne %struct.urb* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.urb* @ERR_PTR(i32 %26)
  store %struct.urb* %27, %struct.urb** %3, align 8
  br label %57

28:                                               ; preds = %19
  %29 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %30 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %33 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_sndbulkpipe(i32 %31, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.urb*, %struct.urb** %7, align 8
  %39 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %40 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @btusb_tx_complete, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @usb_fill_bulk_urb(%struct.urb* %38, i32 %41, i32 %42, i32 %45, i32 %48, i32 %49, %struct.sk_buff* %50)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %53 = bitcast %struct.hci_dev* %52 to i8*
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %56, %struct.urb** %3, align 8
  br label %57

57:                                               ; preds = %28, %24, %15
  %58 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %58
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local %struct.urb* @ERR_PTR(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
