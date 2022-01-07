; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_alloc_isoc_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_alloc_isoc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i8*, i32, i32 }
%struct.btusb_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@BTUSB_MAX_ISOC_FRAMES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_isoc_tx_complete = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.hci_dev*, %struct.sk_buff*)* @alloc_isoc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @alloc_isoc_urb(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
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
  %12 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.urb* @ERR_PTR(i32 %17)
  store %struct.urb* %18, %struct.urb** %3, align 8
  br label %77

19:                                               ; preds = %2
  %20 = load i32, i32* @BTUSB_MAX_ISOC_FRAMES, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.urb* @usb_alloc_urb(i32 %20, i32 %21)
  store %struct.urb* %22, %struct.urb** %7, align 8
  %23 = load %struct.urb*, %struct.urb** %7, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.urb* @ERR_PTR(i32 %27)
  store %struct.urb* %28, %struct.urb** %3, align 8
  br label %77

29:                                               ; preds = %19
  %30 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %31 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %34 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_sndisocpipe(i32 %32, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.urb*, %struct.urb** %7, align 8
  %40 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %41 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @btusb_isoc_tx_complete, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %53 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_fill_int_urb(%struct.urb* %39, i32 %42, i32 %43, i32 %46, i32 %49, i32 %50, %struct.sk_buff* %51, i32 %56)
  %58 = load i32, i32* @URB_ISO_ASAP, align 4
  %59 = load %struct.urb*, %struct.urb** %7, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.urb*, %struct.urb** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %66 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = call i32 @__fill_isoc_descriptor(%struct.urb* %61, i32 %64, i32 %70)
  %72 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %73 = bitcast %struct.hci_dev* %72 to i8*
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %76, %struct.urb** %3, align 8
  br label %77

77:                                               ; preds = %29, %25, %15
  %78 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %78
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local %struct.urb* @ERR_PTR(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @__fill_isoc_descriptor(%struct.urb*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
