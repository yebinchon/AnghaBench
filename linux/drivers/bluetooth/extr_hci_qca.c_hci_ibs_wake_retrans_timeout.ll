; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_hci_ibs_wake_retrans_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_hci_ibs_wake_retrans_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca_data = type { i32, i32, i32, i32, i32, %struct.hci_uart* }
%struct.hci_uart = type { i32 }
%struct.timer_list = type { i32 }

@wake_retrans_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"hu %p wake retransmit timeout in %d state\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@HCI_IBS_WAKE_IND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to acknowledge device wake up\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Spurious timeout tx state %d\00", align 1
@qca = common dso_local global %struct.qca_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hci_ibs_wake_retrans_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_ibs_wake_retrans_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qca_data*, align 8
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %9 = ptrtoint %struct.qca_data* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @wake_retrans_timer, align 4
  %12 = call %struct.qca_data* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.qca_data* %12, %struct.qca_data** %3, align 8
  %13 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %14 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %13, i32 0, i32 5
  %15 = load %struct.hci_uart*, %struct.hci_uart** %14, align 8
  store %struct.hci_uart* %15, %struct.hci_uart** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %17 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %18 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %16, i32 %19)
  %21 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %22 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %25 = call i32 @spin_lock_irqsave_nested(i32* %22, i64 %23, i32 %24)
  %26 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %27 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %54 [
    i32 128, label %29
    i32 130, label %53
    i32 129, label %53
  ]

29:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %30 = load i32, i32* @HCI_IBS_WAKE_IND, align 4
  %31 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %32 = call i32 @send_hci_ibs_cmd(i32 %30, %struct.hci_uart* %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %59

36:                                               ; preds = %29
  %37 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %38 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %42 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @msecs_to_jiffies(i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %46 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %45, i32 0, i32 2
  %47 = load i32, i32* @jiffies, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @mod_timer(i32* %46, i32 %51)
  br label %59

53:                                               ; preds = %1, %1
  br label %54

54:                                               ; preds = %1, %53
  %55 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %56 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %36, %34
  %60 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %61 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %60, i32 0, i32 1
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %68 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %67)
  br label %69

69:                                               ; preds = %66, %59
  ret void
}

declare dso_local %struct.qca_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i32 @send_hci_ibs_cmd(i32, %struct.hci_uart*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
