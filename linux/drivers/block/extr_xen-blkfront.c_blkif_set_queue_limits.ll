; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_set_queue_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_set_queue_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, i32, i64, i32, i32, i64, i64, %struct.gendisk*, %struct.request_queue* }
%struct.gendisk = type { i32 }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@QUEUE_FLAG_VIRT = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@QUEUE_FLAG_SECERASE = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GRANTS_PER_PSEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*)* @blkif_set_queue_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_set_queue_limits(%struct.blkfront_info* %0) #0 {
  %2 = alloca %struct.blkfront_info*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  store %struct.blkfront_info* %0, %struct.blkfront_info** %2, align 8
  %6 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %7 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %6, i32 0, i32 8
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %10 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %9, i32 0, i32 7
  %11 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  store %struct.gendisk* %11, %struct.gendisk** %4, align 8
  %12 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %13 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i64 [ %14, %16 ], [ %19, %17 ]
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @QUEUE_FLAG_VIRT, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = call i32 @blk_queue_flag_set(i32 %23, %struct.request_queue* %24)
  %26 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %27 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %20
  %31 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %32 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %33 = call i32 @blk_queue_flag_set(i32 %31, %struct.request_queue* %32)
  %34 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %35 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %36 = call i32 @get_capacity(%struct.gendisk* %35)
  %37 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %34, i32 %36)
  %38 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %39 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %42 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %45 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %48 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %51 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %30
  %55 = load i32, i32* @QUEUE_FLAG_SECERASE, align 4
  %56 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %57 = call i32 @blk_queue_flag_set(i32 %55, %struct.request_queue* %56)
  br label %58

58:                                               ; preds = %54, %30
  br label %59

59:                                               ; preds = %58, %20
  %60 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %61 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %62 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %60, i32 %63)
  %65 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %66 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %67 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @blk_queue_physical_block_size(%struct.request_queue* %65, i32 %68)
  %70 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %73 = mul i32 %71, %72
  %74 = udiv i32 %73, 512
  %75 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %70, i32 %74)
  %76 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @blk_queue_segment_boundary(%struct.request_queue* %76, i64 %78)
  %80 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = call i32 @blk_queue_max_segment_size(%struct.request_queue* %80, i64 %81)
  %83 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @GRANTS_PER_PSEG, align 4
  %86 = udiv i32 %84, %85
  %87 = call i32 @blk_queue_max_segments(%struct.request_queue* %83, i32 %86)
  %88 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %89 = call i32 @blk_queue_dma_alignment(%struct.request_queue* %88, i32 511)
  ret void
}

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @get_capacity(%struct.gendisk*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_dma_alignment(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
