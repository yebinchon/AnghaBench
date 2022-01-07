; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.sk_buff*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @hci_uart_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @hci_uart_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %4 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %5 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %11 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to %struct.sk_buff* (%struct.hci_uart*)**
  %21 = load %struct.sk_buff* (%struct.hci_uart*)*, %struct.sk_buff* (%struct.hci_uart*)** %20, align 8
  %22 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %23 = call %struct.sk_buff* %21(%struct.hci_uart* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %3, align 8
  br label %24

24:                                               ; preds = %15, %9
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %27, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %29
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
