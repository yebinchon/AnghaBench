; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.hci_uart*, %struct.TYPE_2__* }
%struct.hci_uart = type { i32, i32, i32, i32, i64, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"tty %p\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't allocate control structure\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@hci_uart_init_work = common dso_local global i32 0, align 4
@hci_uart_write_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @hci_uart_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_tty_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.hci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %5)
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hci_uart* @kzalloc(i32 32, i32 %17)
  store %struct.hci_uart* %18, %struct.hci_uart** %4, align 8
  %19 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %20 = icmp ne %struct.hci_uart* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENFILE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  store %struct.hci_uart* %26, %struct.hci_uart** %28, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %31 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %30, i32 0, i32 5
  store %struct.tty_struct* %29, %struct.tty_struct** %31, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  store i32 65536, i32* %33, align 8
  %34 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %35 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %37 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 3
  %40 = load i32, i32* @hci_uart_init_work, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %43 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %42, i32 0, i32 2
  %44 = load i32, i32* @hci_uart_write_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %47 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %46, i32 0, i32 1
  %48 = call i32 @percpu_init_rwsem(i32* %47)
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %25, %21, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*) #1

declare dso_local %struct.hci_uart* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @percpu_init_rwsem(i32*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
