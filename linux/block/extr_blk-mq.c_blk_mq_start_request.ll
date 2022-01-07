; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, i32, %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.request*)* }

@QUEUE_FLAG_STATS = common dso_local global i32 0, align 4
@RQF_STATS = common dso_local global i32 0, align 4
@MQ_RQ_IDLE = common dso_local global i64 0, align 8
@MQ_RQ_IN_FLIGHT = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_start_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 5
  %6 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  store %struct.request_queue* %6, %struct.request_queue** %3, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = load %struct.request*, %struct.request** %2, align 8
  %9 = call i32 @trace_block_rq_issue(%struct.request_queue* %7, %struct.request* %8)
  %10 = load i32, i32* @QUEUE_FLAG_STATS, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = call i32 (...) @ktime_get_ns()
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = call i32 @blk_rq_sectors(%struct.request* %19)
  %21 = load %struct.request*, %struct.request** %2, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @RQF_STATS, align 4
  %24 = load %struct.request*, %struct.request** %2, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = call i32 @rq_qos_issue(%struct.request_queue* %28, %struct.request* %29)
  br label %31

31:                                               ; preds = %15, %1
  %32 = load %struct.request*, %struct.request** %2, align 8
  %33 = call i64 @blk_mq_rq_state(%struct.request* %32)
  %34 = load i64, i64* @MQ_RQ_IDLE, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load %struct.request*, %struct.request** %2, align 8
  %39 = call i32 @blk_add_timer(%struct.request* %38)
  %40 = load %struct.request*, %struct.request** %2, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MQ_RQ_IN_FLIGHT, align 4
  %44 = call i32 @WRITE_ONCE(i32 %42, i32 %43)
  %45 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %46 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %31
  %50 = load %struct.request*, %struct.request** %2, align 8
  %51 = call i64 @blk_rq_bytes(%struct.request* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.request*, %struct.request** %2, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %49, %31
  ret void
}

declare dso_local i32 @trace_block_rq_issue(%struct.request_queue*, %struct.request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @rq_qos_issue(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @blk_mq_rq_state(%struct.request*) #1

declare dso_local i32 @blk_add_timer(%struct.request*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
