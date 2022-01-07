; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_hctx_tags_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_hctx_tags_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blk_mq_hw_ctx = type { i64, %struct.request_queue* }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.seq_file*)* @hctx_tags_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hctx_tags_show(i8* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.blk_mq_hw_ctx*
  store %struct.blk_mq_hw_ctx* %9, %struct.blk_mq_hw_ctx** %5, align 8
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 1
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %6, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock_interruptible(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @blk_mq_debugfs_tags_show(%struct.seq_file* %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @blk_mq_debugfs_tags_show(%struct.seq_file*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
