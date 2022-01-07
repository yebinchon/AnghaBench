; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32, i32* }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @dd_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dd_finish_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.deadline_data*, align 8
  %5 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 1
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = call i64 @blk_queue_is_zoned(%struct.request_queue* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.deadline_data*, %struct.deadline_data** %16, align 8
  store %struct.deadline_data* %17, %struct.deadline_data** %4, align 8
  %18 = load %struct.deadline_data*, %struct.deadline_data** %4, align 8
  %19 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = call i32 @blk_req_zone_write_unlock(%struct.request* %22)
  %24 = load %struct.deadline_data*, %struct.deadline_data** %4, align 8
  %25 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @WRITE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %12
  %32 = load %struct.request*, %struct.request** %2, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @blk_mq_sched_mark_restart_hctx(i32 %34)
  br label %36

36:                                               ; preds = %31, %12
  %37 = load %struct.deadline_data*, %struct.deadline_data** %4, align 8
  %38 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %1
  ret void
}

declare dso_local i64 @blk_queue_is_zoned(%struct.request_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blk_req_zone_write_unlock(%struct.request*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @blk_mq_sched_mark_restart_hctx(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
