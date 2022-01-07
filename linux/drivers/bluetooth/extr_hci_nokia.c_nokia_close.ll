; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.nokia_bt_dev* }
%struct.nokia_bt_dev = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"close device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @nokia_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_close(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.nokia_bt_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %6, align 8
  store %struct.nokia_bt_dev* %7, %struct.nokia_bt_dev** %3, align 8
  %8 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %15 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %16, i32 0, i32 5
  %18 = call i32 @skb_queue_purge(i32* %17)
  %19 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @kfree_skb(i32 %21)
  %23 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpiod_set_value(i32 %25, i32 1)
  %27 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %28 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gpiod_set_value(i32 %29, i32 0)
  %31 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_disable(%struct.device* %34)
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
