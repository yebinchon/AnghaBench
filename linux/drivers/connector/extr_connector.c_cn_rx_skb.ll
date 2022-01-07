; ModuleID = '/home/carl/AnghaBench/linux/drivers/connector/extr_connector.c_cn_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/connector/extr_connector.c_cn_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i64 }

@NLMSG_HDRLEN = common dso_local global i64 0, align 8
@CONNECTOR_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @cn_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_rx_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NLMSG_HDRLEN, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %12)
  store %struct.nlmsghdr* %13, %struct.nlmsghdr** %3, align 8
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %15 = call i32 @nlmsg_len(%struct.nlmsghdr* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %23 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CONNECTOR_MAX_MSG_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %18, %11
  br label %41

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call i32 @skb_get(%struct.sk_buff* %32)
  %34 = call i32 @cn_call_callback(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %37, %31
  br label %41

41:                                               ; preds = %30, %40, %1
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i32 @cn_call_callback(i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
