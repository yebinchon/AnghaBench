; ModuleID = '/home/carl/AnghaBench/linux/drivers/connector/extr_connector.c_cn_add_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/connector/extr_connector.c_cn_add_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_dev = type { i32 }
%struct.cb_id = type { i32 }
%struct.cn_msg = type opaque
%struct.netlink_skb_parms = type opaque
%struct.cn_msg.0 = type opaque
%struct.netlink_skb_parms.1 = type opaque

@cdev = common dso_local global %struct.cn_dev zeroinitializer, align 4
@cn_already_initialized = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cn_add_callback(%struct.cb_id* %0, i8* %1, void (%struct.cn_msg*, %struct.netlink_skb_parms*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (%struct.cn_msg*, %struct.netlink_skb_parms*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cn_dev*, align 8
  store %struct.cb_id* %0, %struct.cb_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (%struct.cn_msg*, %struct.netlink_skb_parms*)* %2, void (%struct.cn_msg*, %struct.netlink_skb_parms*)** %7, align 8
  store %struct.cn_dev* @cdev, %struct.cn_dev** %9, align 8
  %10 = load i32, i32* @cn_already_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.cn_dev*, %struct.cn_dev** %9, align 8
  %17 = getelementptr inbounds %struct.cn_dev, %struct.cn_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.cb_id*, %struct.cb_id** %5, align 8
  %21 = load void (%struct.cn_msg*, %struct.netlink_skb_parms*)*, void (%struct.cn_msg*, %struct.netlink_skb_parms*)** %7, align 8
  %22 = bitcast void (%struct.cn_msg*, %struct.netlink_skb_parms*)* %21 to void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)*
  %23 = call i32 @cn_queue_add_callback(i32 %18, i8* %19, %struct.cb_id* %20, void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %26, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @cn_queue_add_callback(i32, i8*, %struct.cb_id*, void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
