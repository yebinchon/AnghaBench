; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Packet too long\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown packet type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, %struct.sk_buff*)* @bcsp_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcsp_enqueue(%struct.hci_uart* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bcsp_struct*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  store %struct.bcsp_struct* %9, %struct.bcsp_struct** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 4095
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @BT_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  store i32 0, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %19)
  switch i32 %20, label %31 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %18, %18
  %22 = load %struct.bcsp_struct*, %struct.bcsp_struct** %6, align 8
  %23 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %22, i32 0, i32 1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_queue_tail(i32* %23, %struct.sk_buff* %24)
  br label %35

26:                                               ; preds = %18
  %27 = load %struct.bcsp_struct*, %struct.bcsp_struct** %6, align 8
  %28 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_queue_tail(i32* %28, %struct.sk_buff* %29)
  br label %35

31:                                               ; preds = %18
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %31, %26, %21
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
