; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_device_want_to_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_device_want_to_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.qca_data* }
%struct.qca_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"hu %p want to sleep in %d state\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Received HCI_IBS_SLEEP_IND in rx state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_uart*)* @device_want_to_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_want_to_sleep(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qca_data*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.qca_data*, %struct.qca_data** %6, align 8
  store %struct.qca_data* %7, %struct.qca_data** %4, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %9 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %10 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %8, i32 %11)
  %13 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %14 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %18 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %22 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %33
  ]

24:                                               ; preds = %1
  %25 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %26 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %25, i32 0, i32 0
  store i32 129, i32* %26, align 4
  %27 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %28 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %31 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %30, i32 0, i32 2
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  br label %39

33:                                               ; preds = %1
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %36 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BT_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %33, %24
  %40 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %41 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %40, i32 0, i32 1
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
