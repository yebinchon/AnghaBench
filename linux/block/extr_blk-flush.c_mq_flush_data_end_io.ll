; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-flush.c_mq_flush_data_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-flush.c_mq_flush_data_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, %struct.request_queue* }
%struct.blk_mq_ctx = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.request_queue = type { i64 }
%struct.blk_flush_queue = type { i32 }

@REQ_FSEQ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @mq_flush_data_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mq_flush_data_end_io(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca %struct.blk_mq_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.blk_flush_queue*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 3
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %5, align 8
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %14, align 8
  store %struct.blk_mq_hw_ctx* %15, %struct.blk_mq_hw_ctx** %6, align 8
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 1
  %18 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %17, align 8
  store %struct.blk_mq_ctx* %18, %struct.blk_mq_ctx** %7, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %21 = call %struct.blk_flush_queue* @blk_get_flush_queue(%struct.request_queue* %19, %struct.blk_mq_ctx* %20)
  store %struct.blk_flush_queue* %21, %struct.blk_flush_queue** %9, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.request*, %struct.request** %3, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = call i32 @blk_mq_put_driver_tag(%struct.request* %33)
  br label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %9, align 8
  %37 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.request*, %struct.request** %3, align 8
  %41 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %9, align 8
  %42 = load i32, i32* @REQ_FSEQ_DATA, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @blk_flush_complete_seq(%struct.request* %40, %struct.blk_flush_queue* %41, i32 %42, i32 %43)
  %45 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %9, align 8
  %46 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %50 = call i32 @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* %49)
  ret void
}

declare dso_local %struct.blk_flush_queue* @blk_get_flush_queue(%struct.request_queue*, %struct.blk_mq_ctx*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @blk_mq_put_driver_tag(%struct.request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blk_flush_complete_seq(%struct.request*, %struct.blk_flush_queue*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_sched_restart(%struct.blk_mq_hw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
