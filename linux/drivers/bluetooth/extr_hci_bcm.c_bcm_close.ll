; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.bcm_data*, i32, i64 }
%struct.bcm_data = type { i32, i32, %struct.bcm_device* }
%struct.bcm_device = type { i64, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@bcm_device_lock = common dso_local global i32 0, align 4
@CONFIG_PM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to power down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @bcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_close(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.bcm_data*, align 8
  %4 = alloca %struct.bcm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 0
  %8 = load %struct.bcm_data*, %struct.bcm_data** %7, align 8
  store %struct.bcm_data* %8, %struct.bcm_data** %3, align 8
  store %struct.bcm_device* null, %struct.bcm_device** %4, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %13 = call i32 @bt_dev_dbg(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %12)
  %14 = call i32 @mutex_lock(i32* @bcm_device_lock)
  %15 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %21 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.bcm_device* @serdev_device_get_drvdata(i64 %22)
  store %struct.bcm_device* %23, %struct.bcm_device** %4, align 8
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %25, i32 0, i32 2
  %27 = load %struct.bcm_device*, %struct.bcm_device** %26, align 8
  %28 = call i64 @bcm_device_exists(%struct.bcm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %31, i32 0, i32 2
  %33 = load %struct.bcm_device*, %struct.bcm_device** %32, align 8
  store %struct.bcm_device* %33, %struct.bcm_device** %4, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %37 = icmp ne %struct.bcm_device* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load i32, i32* @CONFIG_PM, align 4
  %40 = call i64 @IS_ENABLED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %49 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %55 = call i32 @devm_free_irq(i32 %50, i64 %53, %struct.bcm_device* %54)
  %56 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %57 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_init_wakeup(i32 %58, i32 0)
  %60 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %61 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pm_runtime_disable(i32 %62)
  br label %64

64:                                               ; preds = %47, %42, %38
  %65 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %66 = call i32 @bcm_gpio_set_power(%struct.bcm_device* %65, i32 0)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %71 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bt_dev_err(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %79

74:                                               ; preds = %64
  %75 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %76 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pm_runtime_set_suspended(i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %35
  %81 = call i32 @mutex_unlock(i32* @bcm_device_lock)
  %82 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %83 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %82, i32 0, i32 1
  %84 = call i32 @skb_queue_purge(i32* %83)
  %85 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %86 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @kfree_skb(i32 %87)
  %89 = load %struct.bcm_data*, %struct.bcm_data** %3, align 8
  %90 = call i32 @kfree(%struct.bcm_data* %89)
  %91 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %92 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %91, i32 0, i32 0
  store %struct.bcm_data* null, %struct.bcm_data** %92, align 8
  ret i32 0
}

declare dso_local i32 @bt_dev_dbg(i32, i8*, %struct.hci_uart*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bcm_device* @serdev_device_get_drvdata(i64) #1

declare dso_local i64 @bcm_device_exists(%struct.bcm_device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @devm_free_irq(i32, i64, %struct.bcm_device*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @bcm_gpio_set_power(%struct.bcm_device*, i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.bcm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
