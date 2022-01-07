; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_set_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64 }

@HCI_UART_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_UART_RESET_ON_INIT = common dso_local global i32 0, align 4
@HCI_UART_CREATE_AMP = common dso_local global i32 0, align 4
@HCI_UART_INIT_PENDING = common dso_local global i32 0, align 4
@HCI_UART_EXT_CONFIG = common dso_local global i32 0, align 4
@HCI_UART_VND_DETECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i64)* @hci_uart_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_set_flags(%struct.hci_uart* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @HCI_UART_RAW_DEVICE, align 4
  %8 = call i64 @BIT(i32 %7)
  %9 = load i32, i32* @HCI_UART_RESET_ON_INIT, align 4
  %10 = call i64 @BIT(i32 %9)
  %11 = or i64 %8, %10
  %12 = load i32, i32* @HCI_UART_CREATE_AMP, align 4
  %13 = call i64 @BIT(i32 %12)
  %14 = or i64 %11, %13
  %15 = load i32, i32* @HCI_UART_INIT_PENDING, align 4
  %16 = call i64 @BIT(i32 %15)
  %17 = or i64 %14, %16
  %18 = load i32, i32* @HCI_UART_EXT_CONFIG, align 4
  %19 = call i64 @BIT(i32 %18)
  %20 = or i64 %17, %19
  %21 = load i32, i32* @HCI_UART_VND_DETECT, align 4
  %22 = call i64 @BIT(i32 %21)
  %23 = or i64 %20, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %35 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
