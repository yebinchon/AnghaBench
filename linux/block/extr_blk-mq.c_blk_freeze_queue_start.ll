; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_freeze_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_freeze_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_freeze_queue_start(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 2
  %14 = call i32 @percpu_ref_kill(i32* %13)
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %19 = call i64 @queue_is_mq(%struct.request_queue* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %23 = call i32 @blk_mq_run_hw_queues(%struct.request_queue* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %11
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @percpu_ref_kill(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_run_hw_queues(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
