; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ag6xx.c_ag6xx_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ag6xx.c_ag6xx_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.ag6xx_data* }
%struct.ag6xx_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @ag6xx_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ag6xx_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.ag6xx_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 0
  %8 = load %struct.ag6xx_data*, %struct.ag6xx_data** %7, align 8
  store %struct.ag6xx_data* %8, %struct.ag6xx_data** %4, align 8
  %9 = load %struct.ag6xx_data*, %struct.ag6xx_data** %4, align 8
  %10 = getelementptr inbounds %struct.ag6xx_data, %struct.ag6xx_data* %9, i32 0, i32 0
  %11 = call %struct.sk_buff* @skb_dequeue(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %2, align 8
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_push(%struct.sk_buff* %17, i32 1)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @memcpy(i32 %18, i32* %21, i32 1)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %2, align 8
  br label %24

24:                                               ; preds = %16, %14
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %25
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
