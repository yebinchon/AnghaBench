; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_poll_hybrid.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_poll_hybrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.blk_mq_hw_ctx = type { i32, i32 }
%struct.request = type { i32 }

@BLK_MQ_POLL_CLASSIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.blk_mq_hw_ctx*, i32)* @blk_mq_poll_hybrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_poll_hybrid(%struct.request_queue* %0, %struct.blk_mq_hw_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_hw_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BLK_MQ_POLL_CLASSIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @blk_qc_t_is_internal(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @blk_qc_t_to_tag(i32 %23)
  %25 = call %struct.request* @blk_mq_tag_to_rq(i32 %22, i32 %24)
  store %struct.request* %25, %struct.request** %8, align 8
  br label %37

26:                                               ; preds = %15
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @blk_qc_t_to_tag(i32 %30)
  %32 = call %struct.request* @blk_mq_tag_to_rq(i32 %29, i32 %31)
  store %struct.request* %32, %struct.request** %8, align 8
  %33 = load %struct.request*, %struct.request** %8, align 8
  %34 = icmp ne %struct.request* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %42

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %39 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %40 = load %struct.request*, %struct.request** %8, align 8
  %41 = call i32 @blk_mq_poll_hybrid_sleep(%struct.request_queue* %38, %struct.blk_mq_hw_ctx* %39, %struct.request* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %35, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @blk_qc_t_is_internal(i32) #1

declare dso_local %struct.request* @blk_mq_tag_to_rq(i32, i32) #1

declare dso_local i32 @blk_qc_t_to_tag(i32) #1

declare dso_local i32 @blk_mq_poll_hybrid_sleep(%struct.request_queue*, %struct.blk_mq_hw_ctx*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
