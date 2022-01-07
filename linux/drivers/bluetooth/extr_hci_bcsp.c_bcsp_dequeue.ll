; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Could not dequeue pkt because alloc_skb failed\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@BCSP_TXWINSIZE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@BCSP_ACK_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @bcsp_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bcsp_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.bcsp_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %10 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 0
  %12 = load %struct.bcsp_struct*, %struct.bcsp_struct** %11, align 8
  store %struct.bcsp_struct* %12, %struct.bcsp_struct** %4, align 8
  %13 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %14 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %13, i32 0, i32 4
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %26)
  %28 = call %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct* %19, i32* %22, i32 %25, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %2, align 8
  br label %117

35:                                               ; preds = %18
  %36 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %37 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %36, i32 0, i32 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_queue_head(i32* %37, %struct.sk_buff* %38)
  %40 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %44 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %48 = call i32 @spin_lock_irqsave_nested(i32* %45, i64 %46, i32 %47)
  %49 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %50 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BCSP_TXWINSIZE, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %42
  %56 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %57 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %56, i32 0, i32 2
  %58 = call %struct.sk_buff* @skb_dequeue(i32* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %55
  %62 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %69)
  %71 = call %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct* %62, i32* %65, i32 %68, i32 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %61
  %75 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %76 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %75, i32 0, i32 1
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %76, %struct.sk_buff* %77)
  %79 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %80 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %79, i32 0, i32 3
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i32, i32* @HZ, align 4
  %83 = sdiv i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = call i32 @mod_timer(i32* %80, i64 %85)
  %87 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %88 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %2, align 8
  br label %117

93:                                               ; preds = %61
  %94 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %95 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %94, i32 0, i32 2
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @skb_queue_head(i32* %95, %struct.sk_buff* %96)
  %98 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %55
  br label %101

101:                                              ; preds = %100, %42
  %102 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %103 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %108 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %113 = load i32, i32* @BCSP_ACK_PKT, align 4
  %114 = call %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct* %112, i32* null, i32 0, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %9, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %2, align 8
  br label %117

116:                                              ; preds = %101
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %117

117:                                              ; preds = %116, %111, %74, %31
  %118 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %118
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @bcsp_prepare_pkt(%struct.bcsp_struct*, i32*, i32, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
