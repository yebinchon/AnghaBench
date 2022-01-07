; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_fs_kfree_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_fs_kfree_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @fs_kfree_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_kfree_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff* %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32 (%struct.TYPE_3__*, %struct.sk_buff*)*, i32 (%struct.TYPE_3__*, %struct.sk_buff*)** %7, align 8
  %9 = icmp ne i32 (%struct.TYPE_3__*, %struct.sk_buff*)* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_3__*, %struct.sk_buff*)*, i32 (%struct.TYPE_3__*, %struct.sk_buff*)** %15, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = call %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = call i32 %16(%struct.TYPE_3__* %20, %struct.sk_buff* %21)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %24)
  br label %26

26:                                               ; preds = %23, %10
  ret void
}

declare dso_local %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
