; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hci_uart = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hci_uart*, %struct.sk_buff*)* }

@.str = private unnamed_addr constant [19 x i8] c"%s: type %d len %d\00", align 1
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @hci_uart_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_send_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.hci_uart* %8, %struct.hci_uart** %6, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13, i32 %16)
  %18 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %19 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %18, i32 0, i32 0
  %20 = call i32 @percpu_down_read(i32* %19)
  %21 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %22 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %23 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 0
  %29 = call i32 @percpu_up_read(i32* %28)
  %30 = load i32, i32* @EUNATCH, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %2
  %33 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %34 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hci_uart*, %struct.sk_buff*)*, i32 (%struct.hci_uart*, %struct.sk_buff*)** %36, align 8
  %38 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 %37(%struct.hci_uart* %38, %struct.sk_buff* %39)
  %41 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %42 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %41, i32 0, i32 0
  %43 = call i32 @percpu_up_read(i32* %42)
  %44 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %45 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @percpu_down_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @percpu_up_read(i32*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
