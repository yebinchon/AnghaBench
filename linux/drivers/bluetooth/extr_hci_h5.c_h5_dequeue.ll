; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.hci_uart = type { %struct.h5* }
%struct.h5 = type { i64, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@H5_AWAKE = common dso_local global i64 0, align 8
@__const.h5_dequeue.wakeup_req = private unnamed_addr constant [2 x i8] c"\05\FA", align 1
@H5_WAKING_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Sending wakeup request\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@HCI_3WIRE_LINK_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Could not dequeue pkt because alloc_skb failed\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@H5_ACK_TIMEOUT = common dso_local global i64 0, align 8
@H5_TX_ACK_REQ = common dso_local global i32 0, align 4
@HCI_3WIRE_ACK_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @h5_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @h5_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.h5*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [2 x i8], align 1
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 0
  %11 = load %struct.h5*, %struct.h5** %10, align 8
  store %struct.h5* %11, %struct.h5** %4, align 8
  %12 = load %struct.h5*, %struct.h5** %4, align 8
  %13 = getelementptr inbounds %struct.h5, %struct.h5* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @H5_AWAKE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.h5_dequeue.wakeup_req, i32 0, i32 0), i64 2, i1 false)
  %19 = load %struct.h5*, %struct.h5** %4, align 8
  %20 = getelementptr inbounds %struct.h5, %struct.h5* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @H5_WAKING_UP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %146

25:                                               ; preds = %17
  %26 = load i64, i64* @H5_WAKING_UP, align 8
  %27 = load %struct.h5*, %struct.h5** %4, align 8
  %28 = getelementptr inbounds %struct.h5, %struct.h5* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.h5*, %struct.h5** %4, align 8
  %31 = getelementptr inbounds %struct.h5, %struct.h5* %30, i32 0, i32 5
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = sdiv i32 %33, 100
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @mod_timer(i32* %31, i64 %36)
  %38 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %39 = load i32, i32* @HCI_3WIRE_LINK_PKT, align 4
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %41 = call %struct.sk_buff* @h5_prepare_pkt(%struct.hci_uart* %38, i32 %39, i8* %40, i32 2)
  store %struct.sk_buff* %41, %struct.sk_buff** %2, align 8
  br label %146

42:                                               ; preds = %1
  %43 = load %struct.h5*, %struct.h5** %4, align 8
  %44 = getelementptr inbounds %struct.h5, %struct.h5* %43, i32 0, i32 6
  %45 = call %struct.sk_buff* @skb_dequeue(i32* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %42
  %49 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.sk_buff* @h5_prepare_pkt(%struct.hci_uart* %49, i32 %51, i8* %54, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %7, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %2, align 8
  br label %146

65:                                               ; preds = %48
  %66 = load %struct.h5*, %struct.h5** %4, align 8
  %67 = getelementptr inbounds %struct.h5, %struct.h5* %66, i32 0, i32 6
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @skb_queue_head(i32* %67, %struct.sk_buff* %68)
  %70 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %65, %42
  %72 = load %struct.h5*, %struct.h5** %4, align 8
  %73 = getelementptr inbounds %struct.h5, %struct.h5* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %77 = call i32 @spin_lock_irqsave_nested(i32* %74, i64 %75, i32 %76)
  %78 = load %struct.h5*, %struct.h5** %4, align 8
  %79 = getelementptr inbounds %struct.h5, %struct.h5* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.h5*, %struct.h5** %4, align 8
  %83 = getelementptr inbounds %struct.h5, %struct.h5* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %130

87:                                               ; preds = %71
  %88 = load %struct.h5*, %struct.h5** %4, align 8
  %89 = getelementptr inbounds %struct.h5, %struct.h5* %88, i32 0, i32 4
  %90 = call %struct.sk_buff* @skb_dequeue(i32* %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %6, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %93, label %129

93:                                               ; preds = %87
  %94 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.sk_buff* @h5_prepare_pkt(%struct.hci_uart* %94, i32 %96, i8* %99, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %93
  %107 = load %struct.h5*, %struct.h5** %4, align 8
  %108 = getelementptr inbounds %struct.h5, %struct.h5* %107, i32 0, i32 3
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %108, %struct.sk_buff* %109)
  %111 = load %struct.h5*, %struct.h5** %4, align 8
  %112 = getelementptr inbounds %struct.h5, %struct.h5* %111, i32 0, i32 5
  %113 = load i64, i64* @jiffies, align 8
  %114 = load i64, i64* @H5_ACK_TIMEOUT, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @mod_timer(i32* %112, i64 %115)
  %117 = load %struct.h5*, %struct.h5** %4, align 8
  %118 = getelementptr inbounds %struct.h5, %struct.h5* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %2, align 8
  br label %146

123:                                              ; preds = %93
  %124 = load %struct.h5*, %struct.h5** %4, align 8
  %125 = getelementptr inbounds %struct.h5, %struct.h5* %124, i32 0, i32 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = call i32 @skb_queue_head(i32* %125, %struct.sk_buff* %126)
  %128 = call i32 @BT_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %123, %87
  br label %130

130:                                              ; preds = %129, %86
  %131 = load %struct.h5*, %struct.h5** %4, align 8
  %132 = getelementptr inbounds %struct.h5, %struct.h5* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load i32, i32* @H5_TX_ACK_REQ, align 4
  %137 = load %struct.h5*, %struct.h5** %4, align 8
  %138 = getelementptr inbounds %struct.h5, %struct.h5* %137, i32 0, i32 2
  %139 = call i64 @test_bit(i32 %136, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %130
  %142 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %143 = load i32, i32* @HCI_3WIRE_ACK_PKT, align 4
  %144 = call %struct.sk_buff* @h5_prepare_pkt(%struct.hci_uart* %142, i32 %143, i8* null, i32 0)
  store %struct.sk_buff* %144, %struct.sk_buff** %2, align 8
  br label %146

145:                                              ; preds = %130
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %146

146:                                              ; preds = %145, %141, %106, %61, %25, %24
  %147 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local %struct.sk_buff* @h5_prepare_pkt(%struct.hci_uart*, i32, i8*, i32) #2

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #2

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #2

declare dso_local i32 @BT_ERR(i8*) #2

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #2

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i64 @test_bit(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
