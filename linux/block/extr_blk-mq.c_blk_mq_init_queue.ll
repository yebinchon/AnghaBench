; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blk_mq_tag_set = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @blk_mq_init_queue(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.request_queue* @blk_alloc_queue_node(i32 %6, i32 %9)
  store %struct.request_queue* %10, %struct.request_queue** %4, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = icmp ne %struct.request_queue* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.request_queue* @ERR_PTR(i32 %15)
  store %struct.request_queue* %16, %struct.request_queue** %2, align 8
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %20 = call %struct.request_queue* @blk_mq_init_allocated_queue(%struct.blk_mq_tag_set* %18, %struct.request_queue* %19, i32 0)
  store %struct.request_queue* %20, %struct.request_queue** %5, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %22 = call i64 @IS_ERR(%struct.request_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %26 = call i32 @blk_cleanup_queue(%struct.request_queue* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  store %struct.request_queue* %28, %struct.request_queue** %2, align 8
  br label %29

29:                                               ; preds = %27, %13
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  ret %struct.request_queue* %30
}

declare dso_local %struct.request_queue* @blk_alloc_queue_node(i32, i32) #1

declare dso_local %struct.request_queue* @ERR_PTR(i32) #1

declare dso_local %struct.request_queue* @blk_mq_init_allocated_queue(%struct.blk_mq_tag_set*, %struct.request_queue*, i32) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
