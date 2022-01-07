; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_poll_nsecs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_poll_nsecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request_queue*, %struct.blk_mq_hw_ctx*, %struct.request*)* @blk_mq_poll_nsecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blk_mq_poll_nsecs(%struct.request_queue* %0, %struct.blk_mq_hw_ctx* %1, %struct.request* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_hw_ctx** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %11 = call i32 @blk_poll_stats_enable(%struct.request_queue* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.request*, %struct.request** %7, align 8
  %16 = call i32 @blk_mq_poll_stats_bkt(%struct.request* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %4, align 8
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %31, %21
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %19, %13
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @blk_poll_stats_enable(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_poll_stats_bkt(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
