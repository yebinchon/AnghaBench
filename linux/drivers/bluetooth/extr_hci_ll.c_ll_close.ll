; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_ll_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_ll_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.ll_struct*, i64 }
%struct.ll_struct = type { i32, i32, i32 }
%struct.ll_device = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @ll_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_close(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.ll_struct*, align 8
  %4 = alloca %struct.ll_device*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  store %struct.ll_struct* %7, %struct.ll_struct** %3, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %8)
  %10 = load %struct.ll_struct*, %struct.ll_struct** %3, align 8
  %11 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %10, i32 0, i32 2
  %12 = call i32 @skb_queue_purge(i32* %11)
  %13 = load %struct.ll_struct*, %struct.ll_struct** %3, align 8
  %14 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %13, i32 0, i32 1
  %15 = call i32 @skb_queue_purge(i32* %14)
  %16 = load %struct.ll_struct*, %struct.ll_struct** %3, align 8
  %17 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree_skb(i32 %18)
  %20 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %21 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %26 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.ll_device* @serdev_device_get_drvdata(i64 %27)
  store %struct.ll_device* %28, %struct.ll_device** %4, align 8
  %29 = load %struct.ll_device*, %struct.ll_device** %4, align 8
  %30 = getelementptr inbounds %struct.ll_device, %struct.ll_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpiod_set_value_cansleep(i32 %31, i32 0)
  %33 = load %struct.ll_device*, %struct.ll_device** %4, align 8
  %34 = getelementptr inbounds %struct.ll_device, %struct.ll_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  br label %37

37:                                               ; preds = %24, %1
  %38 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 0
  store %struct.ll_struct* null, %struct.ll_struct** %39, align 8
  %40 = load %struct.ll_struct*, %struct.ll_struct** %3, align 8
  %41 = call i32 @kfree(%struct.ll_struct* %40)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local %struct.ll_device* @serdev_device_get_drvdata(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @kfree(%struct.ll_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
