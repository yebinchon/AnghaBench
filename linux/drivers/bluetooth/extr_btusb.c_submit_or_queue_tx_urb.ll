; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_submit_or_queue_tx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_submit_or_queue_tx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.urb = type { i32 }
%struct.btusb_data = type { i32, i32, i32, i32, i32 }

@BTUSB_SUSPENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.urb*)* @submit_or_queue_tx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_or_queue_tx_urb(%struct.hci_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.btusb_data* %10, %struct.btusb_data** %6, align 8
  %11 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %12 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %11, i32 0, i32 2
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @BTUSB_SUSPENDING, align 4
  %16 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %17 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %16, i32 0, i32 4
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %23 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %28 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %27, i32 0, i32 2
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = call i32 @submit_tx_urb(%struct.hci_dev* %34, %struct.urb* %35)
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %40 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %39, i32 0, i32 1
  %41 = call i32 @usb_anchor_urb(%struct.urb* %38, i32* %40)
  %42 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %43 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %42, i32 0, i32 0
  %44 = call i32 @schedule_work(i32* %43)
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = call i32 @usb_free_urb(%struct.urb* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @submit_tx_urb(%struct.hci_dev*, %struct.urb*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
