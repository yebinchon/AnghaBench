; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_attempt_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_attempt_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_ctx = type { i32, i32*, i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.bio*, i32)* @blk_mq_attempt_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_attempt_merge(%struct.request_queue* %0, %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_ctx* %2, %struct.bio* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca %struct.blk_mq_ctx*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_hw_ctx** %8, align 8
  store %struct.blk_mq_ctx* %2, %struct.blk_mq_ctx** %9, align 8
  store %struct.bio* %3, %struct.bio** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %16, i32 0, i32 2
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %20 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.bio*, %struct.bio** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @blk_mq_bio_list_merge(%struct.request_queue* %19, i32* %25, %struct.bio* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  store i32 1, i32* %6, align 4
  br label %36

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @blk_mq_bio_list_merge(%struct.request_queue*, i32*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
