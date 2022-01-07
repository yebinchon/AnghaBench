; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_hci_ibs_tx_idle_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_hci_ibs_tx_idle_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca_data = type { i32, i32, i32, i32, i32, %struct.hci_uart* }
%struct.hci_uart = type { i32 }
%struct.timer_list = type { i32 }

@tx_idle_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"hu %p idle timeout in %d state\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@HCI_IBS_SLEEP_IND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to send SLEEP to device\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Spurious timeout tx state %d\00", align 1
@qca = common dso_local global %struct.qca_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hci_ibs_tx_idle_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_ibs_tx_idle_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qca_data*, align 8
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %7 = ptrtoint %struct.qca_data* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_idle_timer, align 4
  %10 = call %struct.qca_data* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.qca_data* %10, %struct.qca_data** %3, align 8
  %11 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %12 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %11, i32 0, i32 5
  %13 = load %struct.hci_uart*, %struct.hci_uart** %12, align 8
  store %struct.hci_uart* %13, %struct.hci_uart** %4, align 8
  %14 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %15 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %16 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %14, i32 %17)
  %19 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %20 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %23 = call i32 @spin_lock_irqsave_nested(i32* %20, i64 %21, i32 %22)
  %24 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %25 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %48 [
    i32 129, label %27
    i32 130, label %47
    i32 128, label %47
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* @HCI_IBS_SLEEP_IND, align 4
  %29 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %30 = call i32 @send_hci_ibs_cmd(i32 %28, %struct.hci_uart* %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %53

34:                                               ; preds = %27
  %35 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %36 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %35, i32 0, i32 0
  store i32 130, i32* %36, align 8
  %37 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %38 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %42 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %45 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %44, i32 0, i32 2
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  br label %53

47:                                               ; preds = %1, %1
  br label %48

48:                                               ; preds = %1, %47
  %49 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %50 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %34, %32
  %54 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %55 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local %struct.qca_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i32 @send_hci_ibs_cmd(i32, %struct.hci_uart*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
