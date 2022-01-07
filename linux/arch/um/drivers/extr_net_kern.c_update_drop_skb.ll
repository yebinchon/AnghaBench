; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_net_kern.c_update_drop_skb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_net_kern.c_update_drop_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@drop_lock = common dso_local global i32 0, align 4
@drop_max = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@drop_skb = common dso_local global %struct.sk_buff* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @update_drop_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_drop_skb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @drop_lock, i64 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @drop_max, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.sk_buff* @dev_alloc_skb(i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %28

20:                                               ; preds = %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @skb_put(%struct.sk_buff* %21, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** @drop_skb, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** @drop_skb, align 8
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* @drop_max, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %19, %11
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @drop_lock, i64 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
