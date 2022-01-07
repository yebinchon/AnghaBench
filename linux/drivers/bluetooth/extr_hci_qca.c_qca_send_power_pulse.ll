; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_send_power_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_send_power_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32 }

@CMD_TRANS_TIMEOUT_MS = common dso_local global i32 0, align 4
@QCA_WCN3990_POWERON_PULSE = common dso_local global i32 0, align 4
@QCA_WCN3990_POWEROFF_PULSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sending power pulse %02x to controller\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to send power pulse %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i32)* @qca_send_power_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_send_power_pulse(%struct.hci_uart* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CMD_TRANS_TIMEOUT_MS, align 4
  %10 = call i32 @msecs_to_jiffies(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QCA_WCN3990_POWERON_PULSE, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @QCA_WCN3990_POWEROFF_PULSE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @bt_dev_dbg(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %25 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @serdev_device_write_flush(i32 %26)
  %28 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %29 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %28, i32 1)
  %30 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %31 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @serdev_device_write_buf(i32 %32, i32* %8, i32 4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %38 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @bt_dev_err(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %17
  %44 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %45 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @serdev_device_wait_until_sent(i32 %46, i32 %47)
  %49 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %50 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %49, i32 0)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 @msleep(i32 100)
  br label %57

55:                                               ; preds = %43
  %56 = call i32 @msleep(i32 10)
  br label %57

57:                                               ; preds = %55, %53
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bt_dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @serdev_device_write_flush(i32) #1

declare dso_local i32 @hci_uart_set_flow_control(%struct.hci_uart*, i32) #1

declare dso_local i32 @serdev_device_write_buf(i32, i32*, i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*, i32) #1

declare dso_local i32 @serdev_device_wait_until_sent(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
