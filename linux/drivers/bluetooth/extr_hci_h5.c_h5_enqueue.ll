; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.h5* }
%struct.h5 = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Packet too long (%u bytes)\00", align 1
@H5_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Ignoring HCI data in non-active state\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown packet type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, %struct.sk_buff*)* @h5_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_enqueue(%struct.hci_uart* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.h5*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load %struct.h5*, %struct.h5** %8, align 8
  store %struct.h5* %9, %struct.h5** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 4095
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @kfree_skb(%struct.sk_buff* %19)
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.h5*, %struct.h5** %6, align 8
  %23 = getelementptr inbounds %struct.h5, %struct.h5* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @H5_ACTIVE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  store i32 0, i32* %3, align 4
  br label %51

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %32)
  switch i32 %33, label %44 [
    i32 130, label %34
    i32 129, label %34
    i32 128, label %39
  ]

34:                                               ; preds = %31, %31
  %35 = load %struct.h5*, %struct.h5** %6, align 8
  %36 = getelementptr inbounds %struct.h5, %struct.h5* %35, i32 0, i32 2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_queue_tail(i32* %36, %struct.sk_buff* %37)
  br label %50

39:                                               ; preds = %31
  %40 = load %struct.h5*, %struct.h5** %6, align 8
  %41 = getelementptr inbounds %struct.h5, %struct.h5* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_queue_tail(i32* %41, %struct.sk_buff* %42)
  br label %50

44:                                               ; preds = %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %45)
  %47 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %44, %39, %34
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %27, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
