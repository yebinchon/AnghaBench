; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_del_queue_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_del_queue_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.blk_mq_tag_set* }
%struct.blk_mq_tag_set = type { i32, i32, i32 }

@BLK_MQ_F_TAG_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @blk_mq_del_queue_tag_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_del_queue_tag_set(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 1
  %6 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  store %struct.blk_mq_tag_set* %6, %struct.blk_mq_tag_set** %3, align 8
  %7 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = call i32 @list_del_rcu(i32* %11)
  %13 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %14 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %13, i32 0, i32 2
  %15 = call i64 @list_is_singular(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @BLK_MQ_F_TAG_SHARED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %25 = call i32 @blk_mq_update_tag_set_depth(%struct.blk_mq_tag_set* %24, i32 0)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %28 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 0
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @blk_mq_update_tag_set_depth(%struct.blk_mq_tag_set*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
