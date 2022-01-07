; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"mrvl/helper_uart_3000000.bin\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to download firmware helper\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"mrvl/uart8897_bt.bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @mrvl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrvl_setup(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %6 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %5, i32 1)
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @mrvl_load_firmware(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %15 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bt_dev_err(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %22 = call i32 @hci_uart_wait_until_sent(%struct.hci_uart* %21)
  %23 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %24 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %29 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @serdev_device_set_baudrate(i64 %30, i32 3000000)
  br label %35

32:                                               ; preds = %20
  %33 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %34 = call i32 @hci_uart_set_baudrate(%struct.hci_uart* %33, i32 3000000)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %37 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %36, i32 0)
  %38 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mrvl_load_firmware(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @hci_uart_set_flow_control(%struct.hci_uart*, i32) #1

declare dso_local i32 @mrvl_load_firmware(i32, i8*) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @hci_uart_wait_until_sent(%struct.hci_uart*) #1

declare dso_local i32 @serdev_device_set_baudrate(i64, i32) #1

declare dso_local i32 @hci_uart_set_baudrate(%struct.hci_uart*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
