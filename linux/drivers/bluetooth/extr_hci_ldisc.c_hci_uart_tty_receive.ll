; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hci_uart* }
%struct.hci_uart = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32, %struct.tty_struct* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.hci_uart*, i32*, i32)* }

@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32*, i8*, i32)* @hci_uart_tty_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_tty_receive(%struct.tty_struct* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.hci_uart*, %struct.hci_uart** %11, align 8
  store %struct.hci_uart* %12, %struct.hci_uart** %9, align 8
  %13 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %14 = icmp ne %struct.hci_uart* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %18 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %17, i32 0, i32 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  %20 = icmp ne %struct.tty_struct* %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %4
  br label %64

22:                                               ; preds = %15
  %23 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %24 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %23, i32 0, i32 1
  %25 = call i32 @percpu_down_read(i32* %24)
  %26 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %27 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 3
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %33 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %32, i32 0, i32 1
  %34 = call i32 @percpu_up_read(i32* %33)
  br label %64

35:                                               ; preds = %22
  %36 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %37 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hci_uart*, i32*, i32)*, i32 (%struct.hci_uart*, i32*, i32)** %39, align 8
  %41 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %40(%struct.hci_uart* %41, i32* %42, i32 %43)
  %45 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %46 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %45, i32 0, i32 1
  %47 = call i32 @percpu_up_read(i32* %46)
  %48 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %49 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %35
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %55 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %53
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %35
  %62 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %63 = call i32 @tty_unthrottle(%struct.tty_struct* %62)
  br label %64

64:                                               ; preds = %61, %31, %21
  ret void
}

declare dso_local i32 @percpu_down_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @percpu_up_read(i32*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
