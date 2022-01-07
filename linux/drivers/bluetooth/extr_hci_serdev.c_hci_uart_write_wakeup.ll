; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.hci_uart = type { i32, %struct.serdev_device* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_device*)* @hci_uart_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_write_wakeup(%struct.serdev_device* %0) #0 {
  %2 = alloca %struct.serdev_device*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %2, align 8
  %4 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %5 = call %struct.hci_uart* @serdev_device_get_drvdata(%struct.serdev_device* %4)
  store %struct.hci_uart* %5, %struct.hci_uart** %3, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = icmp ne %struct.hci_uart* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 1
  %13 = load %struct.serdev_device*, %struct.serdev_device** %12, align 8
  %14 = icmp ne %struct.serdev_device* %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = call i32 @WARN_ON(i32 1)
  br label %26

17:                                               ; preds = %9
  %18 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %19 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %25 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %24)
  br label %26

26:                                               ; preds = %15, %23, %17
  ret void
}

declare dso_local %struct.hci_uart* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
