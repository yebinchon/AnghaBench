; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_uart = type { i32, %struct.TYPE_2__*, i32, i32*, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32 (%struct.hci_uart*)* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"hdev %p tty %p\00", align 1
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_uart_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_flush(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.hci_uart* %6, %struct.hci_uart** %3, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %9, %struct.tty_struct** %4, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %10, %struct.tty_struct* %11)
  %13 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %14 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %19 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree_skb(i32* %20)
  %22 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %23 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = call i32 @tty_ldisc_flush(%struct.tty_struct* %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %27)
  %29 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %30 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %29, i32 0, i32 0
  %31 = call i32 @percpu_down_read(i32* %30)
  %32 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %33 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %34 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %41, align 8
  %43 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %44 = call i32 %42(%struct.hci_uart* %43)
  br label %45

45:                                               ; preds = %37, %24
  %46 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %47 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %46, i32 0, i32 0
  %48 = call i32 @percpu_up_read(i32* %47)
  ret i32 0
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, %struct.tty_struct*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @percpu_down_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @percpu_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
