; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_alloc_tags.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_alloc_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.blk_mq_tag_set* }
%struct.blk_mq_tag_set = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.blk_mq_hw_ctx*, i32)* @blk_mq_sched_alloc_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_sched_alloc_tags(%struct.request_queue* %0, %struct.blk_mq_hw_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_tag_set*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_hw_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 1
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %11, align 8
  store %struct.blk_mq_tag_set* %12, %struct.blk_mq_tag_set** %8, align 8
  %13 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %19 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* %13, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %3
  %32 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %33 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %38 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* %32, i32 %35, i32 %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @blk_mq_sched_free_tags(%struct.blk_mq_tag_set* %44, %struct.blk_mq_hw_ctx* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %31
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_sched_free_tags(%struct.blk_mq_tag_set*, %struct.blk_mq_hw_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
