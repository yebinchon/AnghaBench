; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.bcm_data* }
%struct.bcm_data = type { i32, %struct.bcm_device* }
%struct.bcm_device = type { i32 }

@bcm_device_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @bcm_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bcm_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.bcm_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.bcm_device*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 0
  %8 = load %struct.bcm_data*, %struct.bcm_data** %7, align 8
  store %struct.bcm_data* %8, %struct.bcm_data** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store %struct.bcm_device* null, %struct.bcm_device** %5, align 8
  %9 = call i32 @mutex_lock(i32* @bcm_device_lock)
  %10 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %10, i32 0, i32 1
  %12 = load %struct.bcm_device*, %struct.bcm_device** %11, align 8
  %13 = call i64 @bcm_device_exists(%struct.bcm_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %17 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %16, i32 0, i32 1
  %18 = load %struct.bcm_device*, %struct.bcm_device** %17, align 8
  store %struct.bcm_device* %18, %struct.bcm_device** %5, align 8
  %19 = load %struct.bcm_device*, %struct.bcm_device** %5, align 8
  %20 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %24, i32 0, i32 0
  %26 = call %struct.sk_buff* @skb_dequeue(i32* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %4, align 8
  %27 = load %struct.bcm_device*, %struct.bcm_device** %5, align 8
  %28 = icmp ne %struct.bcm_device* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.bcm_device*, %struct.bcm_device** %5, align 8
  %31 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_mark_last_busy(i32 %32)
  %34 = load %struct.bcm_device*, %struct.bcm_device** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_put_autosuspend(i32 %36)
  br label %38

38:                                               ; preds = %29, %23
  %39 = call i32 @mutex_unlock(i32* @bcm_device_lock)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bcm_device_exists(%struct.bcm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
