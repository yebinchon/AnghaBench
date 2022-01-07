; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_skb_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_skb_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.aoedev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NSKBPOOLMAX = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.aoedev*)* @skb_pool_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @skb_pool_get(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  %5 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %6 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %5, i32 0, i32 0
  %7 = call %struct.sk_buff* @skb_peek(i32* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %19 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %18, i32 0, i32 0
  %20 = call i32 @__skb_unlink(%struct.sk_buff* %17, i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %2, align 8
  br label %35

22:                                               ; preds = %10, %1
  %23 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %24 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %23, i32 0, i32 0
  %25 = call i64 @skb_queue_len(i32* %24)
  %26 = load i64, i64* @NSKBPOOLMAX, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @ETH_ZLEN, align 4
  %30 = call %struct.sk_buff* @new_skb(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %4, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %2, align 8
  br label %35

34:                                               ; preds = %28, %22
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %35

35:                                               ; preds = %34, %32, %16
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @new_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
