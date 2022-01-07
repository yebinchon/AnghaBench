; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtkuart_dev = type { i32, i64, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtkuart_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_flush(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmtkuart_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %4)
  store %struct.btmtkuart_dev* %5, %struct.btmtkuart_dev** %3, align 8
  %6 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %7 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @serdev_device_write_flush(i32 %8)
  %10 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %11 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %10, i32 0, i32 4
  %12 = call i32 @skb_queue_purge(i32* %11)
  %13 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %14 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %13, i32 0, i32 3
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %17 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree_skb(i32* %18)
  %20 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %21 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %23 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %25 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  ret i32 0
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @serdev_device_write_flush(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
