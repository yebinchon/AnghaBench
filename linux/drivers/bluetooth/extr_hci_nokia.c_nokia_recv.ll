; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32, %struct.nokia_bt_dev* }
%struct.nokia_bt_dev = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@HCI_UART_REGISTERED = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@nokia_recv_pkts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Frame reassembly failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8*, i32)* @nokia_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_recv(%struct.hci_uart* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nokia_bt_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 2
  %13 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %12, align 8
  store %struct.nokia_bt_dev* %13, %struct.nokia_bt_dev** %8, align 8
  %14 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  %15 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load i32, i32* @HCI_UART_REGISTERED, align 4
  %19 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EUNATCH, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  %31 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @nokia_recv_pkts, align 4
  %36 = load i32, i32* @nokia_recv_pkts, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32* @h4_recv_buf(i32 %29, i32* %32, i8* %33, i32 %34, i32 %35, i32 %37)
  %39 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  %40 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  %42 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %26
  %47 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  %48 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  %55 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %26
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %46, %23
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32* @h4_recv_buf(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
