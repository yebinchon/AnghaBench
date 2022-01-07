; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_bio_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_bio_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32 }
%struct.bio = type { i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)* @dd_bio_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dd_bio_merge(%struct.blk_mq_hw_ctx* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.deadline_data*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 0
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %7, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.deadline_data*, %struct.deadline_data** %17, align 8
  store %struct.deadline_data* %18, %struct.deadline_data** %8, align 8
  store %struct.request* null, %struct.request** %9, align 8
  %19 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %20 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @blk_mq_sched_try_merge(%struct.request_queue* %22, %struct.bio* %23, i32 %24, %struct.request** %9)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %27 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.request*, %struct.request** %9, align 8
  %30 = icmp ne %struct.request* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.request*, %struct.request** %9, align 8
  %33 = call i32 @blk_mq_free_request(%struct.request* %32)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @blk_mq_sched_try_merge(%struct.request_queue*, %struct.bio*, i32, %struct.request**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blk_mq_free_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
