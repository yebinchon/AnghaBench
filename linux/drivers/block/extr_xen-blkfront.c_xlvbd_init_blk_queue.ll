; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlvbd_init_blk_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_xlvbd_init_blk_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue*, %struct.blkfront_info* }
%struct.request_queue = type { %struct.blkfront_info* }
%struct.blkfront_info = type { i64, i32, i32, %struct.gendisk*, %struct.request_queue*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.blkfront_info*, i32, i32, i32, i32* }

@blkfront_mq_ops = common dso_local global i32 0, align 4
@HAS_EXTRA_REQ = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32, i32)* @xlvbd_init_blk_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlvbd_init_blk_queue(%struct.gendisk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.blkfront_info*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 1
  %12 = load %struct.blkfront_info*, %struct.blkfront_info** %11, align 8
  store %struct.blkfront_info* %12, %struct.blkfront_info** %9, align 8
  %13 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %14 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %13, i32 0, i32 5
  %15 = call i32 @memset(%struct.TYPE_5__* %14, i32 0, i32 40)
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %17 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i32* @blkfront_mq_ops, i32** %18, align 8
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %23 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 8
  %25 = load i64, i64* @HAS_EXTRA_REQ, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %29 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %34 = call i32 @BLK_RING_SIZE(%struct.blkfront_info* %33)
  %35 = sdiv i32 %34, 2
  %36 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %37 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %45

39:                                               ; preds = %27, %3
  %40 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %41 = call i32 @BLK_RING_SIZE(%struct.blkfront_info* %40)
  %42 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %43 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* @NUMA_NO_NODE, align 4
  %47 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %48 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %51 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %52 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 8
  %54 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %55 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 4, i32* %56, align 4
  %57 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %58 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %59 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store %struct.blkfront_info* %57, %struct.blkfront_info** %60, align 8
  %61 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %62 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %61, i32 0, i32 5
  %63 = call i64 @blk_mq_alloc_tag_set(%struct.TYPE_5__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %45
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %101

68:                                               ; preds = %45
  %69 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %70 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %69, i32 0, i32 5
  %71 = call %struct.request_queue* @blk_mq_init_queue(%struct.TYPE_5__* %70)
  store %struct.request_queue* %71, %struct.request_queue** %8, align 8
  %72 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %73 = call i64 @IS_ERR(%struct.request_queue* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %77 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %76, i32 0, i32 5
  %78 = call i32 @blk_mq_free_tag_set(%struct.TYPE_5__* %77)
  %79 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %80 = call i32 @PTR_ERR(%struct.request_queue* %79)
  store i32 %80, i32* %4, align 4
  br label %101

81:                                               ; preds = %68
  %82 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %83 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %84 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %83, i32 0, i32 0
  store %struct.blkfront_info* %82, %struct.blkfront_info** %84, align 8
  %85 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %86 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %87 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %86, i32 0, i32 0
  store %struct.request_queue* %85, %struct.request_queue** %87, align 8
  %88 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %89 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %88, i32 0, i32 4
  store %struct.request_queue* %85, %struct.request_queue** %89, align 8
  %90 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %91 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %92 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %91, i32 0, i32 3
  store %struct.gendisk* %90, %struct.gendisk** %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %95 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %98 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %100 = call i32 @blkif_set_queue_limits(%struct.blkfront_info* %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %81, %75, %65
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @BLK_RING_SIZE(%struct.blkfront_info*) #1

declare dso_local i64 @blk_mq_alloc_tag_set(%struct.TYPE_5__*) #1

declare dso_local %struct.request_queue* @blk_mq_init_queue(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @blkif_set_queue_limits(%struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
