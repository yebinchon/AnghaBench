; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hci_uart* }
%struct.hci_uart = type { i32, i32, %struct.TYPE_2__*, i32, %struct.hci_dev* }
%struct.TYPE_2__ = type { i32 (%struct.hci_uart*)* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tty %p\00", align 1
@HCI_UART_PROTO_READY = common dso_local global i32 0, align 4
@HCI_UART_REGISTERED = common dso_local global i32 0, align 4
@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hci_uart_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_tty_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  store %struct.hci_uart* %7, %struct.hci_uart** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %8)
  %10 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  store %struct.hci_uart* null, %struct.hci_uart** %11, align 8
  %12 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %13 = icmp ne %struct.hci_uart* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 4
  %18 = load %struct.hci_dev*, %struct.hci_dev** %17, align 8
  store %struct.hci_dev* %18, %struct.hci_dev** %4, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = icmp ne %struct.hci_dev* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = call i32 @hci_uart_close(%struct.hci_dev* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %26 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %32 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %31, i32 0, i32 0
  %33 = call i32 @percpu_down_write(i32* %32)
  %34 = load i32, i32* @HCI_UART_PROTO_READY, align 4
  %35 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %36 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 0
  %40 = call i32 @percpu_up_write(i32* %39)
  %41 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %42 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %41, i32 0, i32 3
  %43 = call i32 @cancel_work_sync(i32* %42)
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = icmp ne %struct.hci_dev* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %30
  %47 = load i32, i32* @HCI_UART_REGISTERED, align 4
  %48 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %49 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %48, i32 0, i32 1
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %54 = call i32 @hci_unregister_dev(%struct.hci_dev* %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %57 = call i32 @hci_free_dev(%struct.hci_dev* %56)
  br label %58

58:                                               ; preds = %55, %30
  %59 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %60 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %62, align 8
  %64 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %65 = call i32 %63(%struct.hci_uart* %64)
  br label %66

66:                                               ; preds = %58, %24
  %67 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %68 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %69 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %68, i32 0, i32 1
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  %71 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %72 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %71, i32 0, i32 0
  %73 = call i32 @percpu_free_rwsem(i32* %72)
  %74 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %75 = call i32 @kfree(%struct.hci_uart* %74)
  br label %76

76:                                               ; preds = %66, %14
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*) #1

declare dso_local i32 @hci_uart_close(%struct.hci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @percpu_free_rwsem(i32*) #1

declare dso_local i32 @kfree(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
