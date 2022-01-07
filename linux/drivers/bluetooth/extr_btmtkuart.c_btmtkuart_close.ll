; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtkuart_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtkuart_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_close(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmtkuart_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.btmtkuart_dev* %6, %struct.btmtkuart_dev** %3, align 8
  %7 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %8 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %12 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @pm_runtime_put_sync(%struct.device* %15)
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @pm_runtime_disable(%struct.device* %17)
  %19 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %20 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @serdev_device_close(%struct.TYPE_2__* %21)
  ret i32 0
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @serdev_device_close(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
