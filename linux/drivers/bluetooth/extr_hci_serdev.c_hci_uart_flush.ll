; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_uart = type { %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.hci_uart*)* }

@.str = private unnamed_addr constant [18 x i8] c"hdev %p serdev %p\00", align 1
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_uart_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_flush(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %4)
  store %struct.hci_uart* %5, %struct.hci_uart** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %6, i32 %9)
  %11 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree_skb(i32* %18)
  %20 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %21 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %24 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @serdev_device_write_flush(i32 %25)
  %27 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %28 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %29 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %34 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %36, align 8
  %38 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %39 = call i32 %37(%struct.hci_uart* %38)
  br label %40

40:                                               ; preds = %32, %22
  ret i32 0
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @serdev_device_write_flush(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
