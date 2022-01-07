; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.hd_struct = type { i32 }
%struct.mq_inflight = type { i32*, %struct.hd_struct* }

@blk_mq_check_inflight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_in_flight(%struct.request_queue* %0, %struct.hd_struct* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.hd_struct*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.mq_inflight, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.hd_struct* %1, %struct.hd_struct** %4, align 8
  %7 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %6, i32 0, i32 1
  %10 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  store %struct.hd_struct* %10, %struct.hd_struct** %9, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = load i32, i32* @blk_mq_check_inflight, align 4
  %15 = call i32 @blk_mq_queue_tag_busy_iter(%struct.request_queue* %13, i32 %14, %struct.mq_inflight* %6)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local i32 @blk_mq_queue_tag_busy_iter(%struct.request_queue*, i32, %struct.mq_inflight*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
