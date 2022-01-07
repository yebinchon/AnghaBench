; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_bluetooth_serdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_bluetooth_serdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.nokia_bt_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_device*)* @nokia_bluetooth_serdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nokia_bluetooth_serdev_remove(%struct.serdev_device* %0) #0 {
  %2 = alloca %struct.serdev_device*, align 8
  %3 = alloca %struct.nokia_bt_dev*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %2, align 8
  %4 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %5 = call %struct.nokia_bt_dev* @serdev_device_get_drvdata(%struct.serdev_device* %4)
  store %struct.nokia_bt_dev* %5, %struct.nokia_bt_dev** %3, align 8
  %6 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %6, i32 0, i32 0
  %8 = call i32 @hci_uart_unregister_device(i32* %7)
  ret void
}

declare dso_local %struct.nokia_bt_dev* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i32 @hci_uart_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
