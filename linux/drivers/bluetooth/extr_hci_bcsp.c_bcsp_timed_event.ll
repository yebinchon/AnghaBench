; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_timed_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_timed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcsp_struct = type { i32, %struct.TYPE_2__, i32, %struct.hci_uart* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hci_uart = type { i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { i32 }

@tbcsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hu %p retransmitting %u pkts\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@bcsp = common dso_local global %struct.bcsp_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bcsp_timed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsp_timed_event(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bcsp_struct*, align 8
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %8 = ptrtoint %struct.bcsp_struct* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @tbcsp, align 4
  %11 = call %struct.bcsp_struct* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.bcsp_struct* %11, %struct.bcsp_struct** %3, align 8
  %12 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %13 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %12, i32 0, i32 3
  %14 = load %struct.hci_uart*, %struct.hci_uart** %13, align 8
  store %struct.hci_uart* %14, %struct.hci_uart** %4, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %16 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %17 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %15, i32 %19)
  %21 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %22 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %26 = call i32 @spin_lock_irqsave_nested(i32* %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %32, %1
  %28 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %29 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %28, i32 0, i32 1
  %30 = call %struct.sk_buff* @__skb_dequeue_tail(%struct.TYPE_2__* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %34 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %36, 7
  %38 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %39 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %41 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %40, i32 0, i32 2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_queue_head(i32* %41, %struct.sk_buff* %42)
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %46 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %51 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %50)
  ret void
}

declare dso_local %struct.bcsp_struct* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(%struct.TYPE_2__*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
