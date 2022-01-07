; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tx_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32, i32, i32 }

@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@HCI_UART_SENDING = common dso_local global i32 0, align 4
@HCI_UART_TX_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %4 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %5 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %4, i32 0, i32 0
  %6 = call i32 @percpu_down_read_trylock(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %11 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 3
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %32

16:                                               ; preds = %9
  %17 = load i32, i32* @HCI_UART_SENDING, align 4
  %18 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %19 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %18, i32 0, i32 2
  %20 = call i64 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @HCI_UART_TX_WAKEUP, align 4
  %24 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %25 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %24, i32 0, i32 2
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  br label %32

27:                                               ; preds = %16
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %30 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %29, i32 0, i32 1
  %31 = call i32 @schedule_work(i32* %30)
  br label %32

32:                                               ; preds = %27, %22, %15
  %33 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %34 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %33, i32 0, i32 0
  %35 = call i32 @percpu_up_read(i32* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @percpu_down_read_trylock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @percpu_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
