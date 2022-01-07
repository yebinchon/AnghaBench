; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_cleanup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_cleanup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QUEUE_FLAG_NOMERGES = common dso_local global i32 0, align 4
@QUEUE_FLAG_NOXMERGES = common dso_local global i32 0, align 4
@QUEUE_FLAG_DYING = common dso_local global i32 0, align 4
@QUEUE_FLAG_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_cleanup_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = call i32 @blk_set_queue_dying(%struct.request_queue* %6)
  %8 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = call i32 @blk_queue_flag_set(i32 %8, %struct.request_queue* %9)
  %11 = load i32, i32* @QUEUE_FLAG_NOXMERGES, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = call i32 @blk_queue_flag_set(i32 %11, %struct.request_queue* %12)
  %14 = load i32, i32* @QUEUE_FLAG_DYING, align 4
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = call i32 @blk_queue_flag_set(i32 %14, %struct.request_queue* %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %21 = call i32 @blk_freeze_queue(%struct.request_queue* %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %23 = call i32 @rq_qos_exit(%struct.request_queue* %22)
  %24 = load i32, i32* @QUEUE_FLAG_DEAD, align 4
  %25 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %26 = call i32 @blk_queue_flag_set(i32 %24, %struct.request_queue* %25)
  %27 = call i32 (...) @blk_flush_integrity()
  %28 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %34 = call i32 @blk_sync_queue(%struct.request_queue* %33)
  %35 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %36 = call i64 @queue_is_mq(%struct.request_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %40 = call i32 @blk_mq_exit_queue(%struct.request_queue* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %46 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %51 = call i32 @blk_mq_sched_free_requests(%struct.request_queue* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %57 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %56, i32 0, i32 0
  %58 = call i32 @percpu_ref_exit(i32* %57)
  %59 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %60 = call i32 @blk_put_queue(%struct.request_queue* %59)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blk_set_queue_dying(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blk_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @rq_qos_exit(%struct.request_queue*) #1

declare dso_local i32 @blk_flush_integrity(...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @blk_sync_queue(%struct.request_queue*) #1

declare dso_local i64 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_exit_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_sched_free_requests(%struct.request_queue*) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

declare dso_local i32 @blk_put_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
