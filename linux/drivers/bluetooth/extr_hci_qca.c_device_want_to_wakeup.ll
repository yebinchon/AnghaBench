; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_device_want_to_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_device_want_to_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.qca_data* }
%struct.qca_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"hu %p want to wake up\00", align 1
@HCI_IBS_WAKE_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to acknowledge device wake up\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Received HCI_IBS_WAKE_IND in rx state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_uart*)* @device_want_to_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_want_to_wakeup(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qca_data*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.qca_data*, %struct.qca_data** %6, align 8
  store %struct.qca_data* %7, %struct.qca_data** %4, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %8)
  %10 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %11 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %15 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %19 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %44 [
    i32 129, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %1
  %22 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %23 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %26 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %25, i32 0, i32 3
  %27 = call i32 @queue_work(i32 %24, i32* %26)
  %28 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %29 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %28, i32 0, i32 1
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %56

32:                                               ; preds = %1
  %33 = load i32, i32* @HCI_IBS_WAKE_ACK, align 4
  %34 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %35 = call i32 @send_hci_ibs_cmd(i32 %33, %struct.hci_uart* %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %41 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %46 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %39, %37
  %50 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %51 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %50, i32 0, i32 1
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %55 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %54)
  br label %56

56:                                               ; preds = %49, %21
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_hci_ibs_cmd(i32, %struct.hci_uart*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
