; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_requeue_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_requeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.request_queue* }
%struct.request_queue = type { i64 }

@MQ_RQ_IDLE = common dso_local global i32 0, align 4
@RQF_TIMED_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @__blk_mq_requeue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_mq_requeue_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %6 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  store %struct.request_queue* %6, %struct.request_queue** %3, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = call i32 @blk_mq_put_driver_tag(%struct.request* %7)
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = call i32 @trace_block_rq_requeue(%struct.request_queue* %9, %struct.request* %10)
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = call i32 @rq_qos_requeue(%struct.request_queue* %12, %struct.request* %13)
  %15 = load %struct.request*, %struct.request** %2, align 8
  %16 = call i64 @blk_mq_request_started(%struct.request* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MQ_RQ_IDLE, align 4
  %23 = call i32 @WRITE_ONCE(i32 %21, i32 %22)
  %24 = load i32, i32* @RQF_TIMED_OUT, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %18
  %35 = load %struct.request*, %struct.request** %2, align 8
  %36 = call i64 @blk_rq_bytes(%struct.request* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.request*, %struct.request** %2, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %34, %18
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @blk_mq_put_driver_tag(%struct.request*) #1

declare dso_local i32 @trace_block_rq_requeue(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @rq_qos_requeue(%struct.request_queue*, %struct.request*) #1

declare dso_local i64 @blk_mq_request_started(%struct.request*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
