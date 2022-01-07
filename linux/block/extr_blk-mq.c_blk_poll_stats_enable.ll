; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_poll_stats_enable.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_poll_stats_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32 }

@QUEUE_FLAG_POLL_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*)* @blk_poll_stats_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_poll_stats_enable(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %4 = load i32, i32* @QUEUE_FLAG_POLL_STATS, align 4
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 1
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @QUEUE_FLAG_POLL_STATS, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = call i64 @blk_queue_flag_test_and_set(i32 %10, %struct.request_queue* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %21

15:                                               ; preds = %9
  %16 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @blk_stat_add_callback(%struct.request_queue* %16, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @blk_queue_flag_test_and_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_stat_add_callback(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
