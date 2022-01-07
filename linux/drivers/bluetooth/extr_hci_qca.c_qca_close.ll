; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.qca_data*, i64 }
%struct.qca_data = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.qca_serdev = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"hu %p qca close\00", align 1
@HCI_IBS_VOTE_STATS_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @qca_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_close(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.qca_serdev*, align 8
  %4 = alloca %struct.qca_data*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.qca_data*, %struct.qca_data** %6, align 8
  store %struct.qca_data* %7, %struct.qca_data** %4, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %8)
  %10 = load i32, i32* @HCI_IBS_VOTE_STATS_UPDATE, align 4
  %11 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %12 = call i32 @serial_clock_vote(i32 %10, %struct.hci_uart* %11)
  %13 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %14 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %13, i32 0, i32 6
  %15 = call i32 @skb_queue_purge(i32* %14)
  %16 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %17 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %16, i32 0, i32 5
  %18 = call i32 @skb_queue_purge(i32* %17)
  %19 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %20 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %19, i32 0, i32 4
  %21 = call i32 @del_timer(i32* %20)
  %22 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %23 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %22, i32 0, i32 3
  %24 = call i32 @del_timer(i32* %23)
  %25 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %26 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @destroy_workqueue(i32 %27)
  %29 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %30 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %32 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %1
  %36 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %37 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.qca_serdev* @serdev_device_get_drvdata(i64 %38)
  store %struct.qca_serdev* %39, %struct.qca_serdev** %3, align 8
  %40 = load %struct.qca_serdev*, %struct.qca_serdev** %3, align 8
  %41 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @qca_is_wcn399x(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %47 = call i32 @qca_power_shutdown(%struct.hci_uart* %46)
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.qca_serdev*, %struct.qca_serdev** %3, align 8
  %50 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpiod_set_value_cansleep(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %56 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @kfree_skb(i32 %57)
  %59 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %60 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %59, i32 0, i32 0
  store %struct.qca_data* null, %struct.qca_data** %60, align 8
  %61 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %62 = call i32 @kfree(%struct.qca_data* %61)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @serial_clock_vote(i32, %struct.hci_uart*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local %struct.qca_serdev* @serdev_device_get_drvdata(i64) #1

declare dso_local i64 @qca_is_wcn399x(i32) #1

declare dso_local i32 @qca_power_shutdown(%struct.hci_uart*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.qca_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
