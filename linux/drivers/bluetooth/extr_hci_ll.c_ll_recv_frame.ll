; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_ll_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_ll_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.ll_struct* }
%struct.ll_struct = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"HCILL_GO_TO_SLEEP_IND packet\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"received HCILL_GO_TO_SLEEP_ACK in state %ld\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"HCILL_WAKE_UP_IND packet\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"HCILL_WAKE_UP_ACK packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @ll_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_recv_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca %struct.ll_struct*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.hci_uart* %8, %struct.hci_uart** %5, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 0
  %11 = load %struct.ll_struct*, %struct.ll_struct** %10, align 8
  store %struct.ll_struct* %11, %struct.ll_struct** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %12)
  switch i32 %13, label %32 [
    i32 130, label %14
    i32 131, label %18
    i32 128, label %24
    i32 129, label %28
  ]

14:                                               ; preds = %2
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %17 = call i32 @ll_device_want_to_sleep(%struct.hci_uart* %16)
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  %21 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bt_dev_err(%struct.hci_dev* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %32

24:                                               ; preds = %2
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %27 = call i32 @ll_device_want_to_wakeup(%struct.hci_uart* %26)
  br label %32

28:                                               ; preds = %2
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %31 = call i32 @ll_device_woke_up(%struct.hci_uart* %30)
  br label %32

32:                                               ; preds = %2, %28, %24, %18, %14
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  ret i32 0
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @ll_device_want_to_sleep(%struct.hci_uart*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @ll_device_want_to_wakeup(%struct.hci_uart*) #1

declare dso_local i32 @ll_device_woke_up(%struct.hci_uart*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
