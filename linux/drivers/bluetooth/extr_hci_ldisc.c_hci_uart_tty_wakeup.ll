; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.hci_uart* }
%struct.hci_uart = type { i32, %struct.tty_struct* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hci_uart_tty_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_tty_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  store %struct.hci_uart* %6, %struct.hci_uart** %3, align 8
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %9 = icmp ne %struct.hci_uart* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %18 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %17, i32 0, i32 1
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  %20 = icmp ne %struct.tty_struct* %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %31

22:                                               ; preds = %11
  %23 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %24 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %25 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %30 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %29)
  br label %31

31:                                               ; preds = %10, %21, %28, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
