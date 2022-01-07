; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.hci_uart = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.serdev_device* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.hci_uart*, i32*, i64)* }

@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*, i32*, i64)* @hci_uart_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_receive_buf(%struct.serdev_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hci_uart*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %10 = call %struct.hci_uart* @serdev_device_get_drvdata(%struct.serdev_device* %9)
  store %struct.hci_uart* %10, %struct.hci_uart** %8, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %12 = icmp ne %struct.hci_uart* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 3
  %17 = load %struct.serdev_device*, %struct.serdev_device** %16, align 8
  %18 = icmp ne %struct.serdev_device* %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %3
  %20 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %54

21:                                               ; preds = %13
  %22 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %23 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %24 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %23, i32 0, i32 2
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %54

28:                                               ; preds = %21
  %29 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %30 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hci_uart*, i32*, i64)*, i32 (%struct.hci_uart*, i32*, i64)** %32, align 8
  %34 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 %33(%struct.hci_uart* %34, i32* %35, i64 %36)
  %38 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.hci_uart*, %struct.hci_uart** %8, align 8
  %45 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %43
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %42, %28
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %27, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.hci_uart* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
