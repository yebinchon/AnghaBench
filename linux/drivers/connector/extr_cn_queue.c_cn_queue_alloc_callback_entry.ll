; ModuleID = '/home/carl/AnghaBench/linux/drivers/connector/extr_cn_queue.c_cn_queue_alloc_callback_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/connector/extr_cn_queue.c_cn_queue_alloc_callback_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_callback_entry = type { void (%struct.cn_msg*, %struct.netlink_skb_parms*)*, %struct.TYPE_2__, %struct.cn_queue_dev*, i32 }
%struct.cn_msg = type opaque
%struct.netlink_skb_parms = type opaque
%struct.TYPE_2__ = type { i32, i32 }
%struct.cn_queue_dev = type { i32 }
%struct.cb_id = type { i32 }
%struct.cn_msg.0 = type opaque
%struct.netlink_skb_parms.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to create new callback queue.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cn_callback_entry* (%struct.cn_queue_dev*, i8*, %struct.cb_id*, void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)*)* @cn_queue_alloc_callback_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cn_callback_entry* @cn_queue_alloc_callback_entry(%struct.cn_queue_dev* %0, i8* %1, %struct.cb_id* %2, void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)* %3) #0 {
  %5 = alloca %struct.cn_callback_entry*, align 8
  %6 = alloca %struct.cn_queue_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cb_id*, align 8
  %9 = alloca void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)*, align 8
  %10 = alloca %struct.cn_callback_entry*, align 8
  store %struct.cn_queue_dev* %0, %struct.cn_queue_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cb_id* %2, %struct.cb_id** %8, align 8
  store void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)* %3, void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cn_callback_entry* @kzalloc(i32 32, i32 %11)
  store %struct.cn_callback_entry* %12, %struct.cn_callback_entry** %10, align 8
  %13 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  %14 = icmp ne %struct.cn_callback_entry* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.cn_callback_entry* null, %struct.cn_callback_entry** %5, align 8
  br label %43

17:                                               ; preds = %4
  %18 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  %19 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %18, i32 0, i32 3
  %20 = call i32 @refcount_set(i32* %19, i32 1)
  %21 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %22 = getelementptr inbounds %struct.cn_queue_dev, %struct.cn_queue_dev* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load %struct.cn_queue_dev*, %struct.cn_queue_dev** %6, align 8
  %25 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  %26 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %25, i32 0, i32 2
  store %struct.cn_queue_dev* %24, %struct.cn_queue_dev** %26, align 8
  %27 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  %28 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  %34 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.cb_id*, %struct.cb_id** %8, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.cb_id* %36, i32 4)
  %38 = load void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)*, void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)** %9, align 8
  %39 = bitcast void (%struct.cn_msg.0*, %struct.netlink_skb_parms.1*)* %38 to void (%struct.cn_msg*, %struct.netlink_skb_parms*)*
  %40 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  %41 = getelementptr inbounds %struct.cn_callback_entry, %struct.cn_callback_entry* %40, i32 0, i32 0
  store void (%struct.cn_msg*, %struct.netlink_skb_parms*)* %39, void (%struct.cn_msg*, %struct.netlink_skb_parms*)** %41, align 8
  %42 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %10, align 8
  store %struct.cn_callback_entry* %42, %struct.cn_callback_entry** %5, align 8
  br label %43

43:                                               ; preds = %17, %15
  %44 = load %struct.cn_callback_entry*, %struct.cn_callback_entry** %5, align 8
  ret %struct.cn_callback_entry* %44
}

declare dso_local %struct.cn_callback_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.cb_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
