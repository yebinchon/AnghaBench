; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c___blk_mq_get_tag.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c___blk_mq_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_alloc_data = type { i32, i64, i32 }
%struct.sbitmap_queue = type { i32 }

@BLK_MQ_REQ_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_alloc_data*, %struct.sbitmap_queue*)* @__blk_mq_get_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* %0, %struct.sbitmap_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_alloc_data*, align 8
  %5 = alloca %struct.sbitmap_queue*, align 8
  store %struct.blk_mq_alloc_data* %0, %struct.blk_mq_alloc_data** %4, align 8
  store %struct.sbitmap_queue* %1, %struct.sbitmap_queue** %5, align 8
  %6 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %4, align 8
  %7 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @BLK_MQ_REQ_INTERNAL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %4, align 8
  %14 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %17 = call i32 @hctx_may_queue(i32 %15, %struct.sbitmap_queue* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %34

20:                                               ; preds = %12, %2
  %21 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %4, align 8
  %22 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %27 = load %struct.blk_mq_alloc_data*, %struct.blk_mq_alloc_data** %4, align 8
  %28 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @__sbitmap_queue_get_shallow(%struct.sbitmap_queue* %26, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %33 = call i32 @__sbitmap_queue_get(%struct.sbitmap_queue* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %25, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @hctx_may_queue(i32, %struct.sbitmap_queue*) #1

declare dso_local i32 @__sbitmap_queue_get_shallow(%struct.sbitmap_queue*, i64) #1

declare dso_local i32 @__sbitmap_queue_get(%struct.sbitmap_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
