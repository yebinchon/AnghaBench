; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_que_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_que_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [21 x i8] c"ia_que_tx: Null vcc\0A\00", align 1
@ATM_VF_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Free the SKB on closed vci %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ia_que_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia_que_tx(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i32 @ia_avail_descs(%struct.TYPE_5__* %6)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call %struct.sk_buff* @skb_dequeue(i32* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %3, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %54

18:                                               ; preds = %16
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %21, align 8
  store %struct.atm_vcc* %22, %struct.atm_vcc** %5, align 8
  %23 = icmp ne %struct.atm_vcc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %25)
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %54

28:                                               ; preds = %18
  %29 = load i32, i32* @ATM_VF_READY, align 4
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %31 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %30, i32 0, i32 1
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %35)
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %38 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %54

41:                                               ; preds = %28
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i64 @ia_pkt_tx(%struct.atm_vcc* %42, %struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @skb_queue_head(i32* %48, %struct.sk_buff* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  br label %8

54:                                               ; preds = %34, %24, %16
  ret i32 0
}

declare dso_local i32 @ia_avail_descs(%struct.TYPE_5__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @ia_pkt_tx(%struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
