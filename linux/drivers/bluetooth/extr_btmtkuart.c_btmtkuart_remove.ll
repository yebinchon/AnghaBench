; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.btmtkuart_dev = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_device*)* @btmtkuart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmtkuart_remove(%struct.serdev_device* %0) #0 {
  %2 = alloca %struct.serdev_device*, align 8
  %3 = alloca %struct.btmtkuart_dev*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %2, align 8
  %5 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %6 = call %struct.btmtkuart_dev* @serdev_device_get_drvdata(%struct.serdev_device* %5)
  store %struct.btmtkuart_dev* %6, %struct.btmtkuart_dev** %3, align 8
  %7 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %8 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %7, i32 0, i32 2
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %4, align 8
  %10 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %11 = call i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %15 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_disable(i32 %16)
  %18 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %3, align 8
  %19 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = call i32 @hci_unregister_dev(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = call i32 @hci_free_dev(%struct.hci_dev* %25)
  ret void
}

declare dso_local %struct.btmtkuart_dev* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
