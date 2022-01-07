; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.nokia_bt_dev* }
%struct.nokia_bt_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @nokia_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nokia_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.nokia_bt_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  store %struct.nokia_bt_dev* %9, %struct.nokia_bt_dev** %4, align 8
  %10 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %14, i32 0, i32 4
  %16 = call %struct.sk_buff* @skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %18 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %2, align 8
  br label %65

23:                                               ; preds = %1
  %24 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %25 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %2, align 8
  br label %65

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @pm_runtime_get_sync(%struct.device* %39)
  %41 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %42 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gpiod_set_value_cansleep(i32 %43, i32 1)
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %47 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @serdev_device_wait_until_sent(%struct.TYPE_2__* %48, i32 0)
  %50 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %51 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gpiod_set_value_cansleep(i32 %52, i32 0)
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @pm_runtime_put(%struct.device* %54)
  br label %56

56:                                               ; preds = %45, %38
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %63 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %2, align 8
  br label %65

65:                                               ; preds = %56, %33, %21
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %66
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @serdev_device_wait_until_sent(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
