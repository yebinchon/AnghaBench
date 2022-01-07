; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blkfront_info* }
%struct.blkfront_info = type { i32, %struct.blkfront_ring_info* }
%struct.blkfront_ring_info = type { i32, i32, i32 }
%struct.blk_mq_queue_data = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @blkif_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blkfront_info*, align 8
  %9 = alloca %struct.blkfront_ring_info*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.blkfront_info*, %struct.blkfront_info** %16, align 8
  store %struct.blkfront_info* %17, %struct.blkfront_info** %8, align 8
  store %struct.blkfront_ring_info* null, %struct.blkfront_ring_info** %9, align 8
  %18 = load %struct.blkfront_info*, %struct.blkfront_info** %8, align 8
  %19 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.blkfront_info*, %struct.blkfront_info** %8, align 8
  %26 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %25, i32 0, i32 1
  %27 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %27, i64 %29
  store %struct.blkfront_ring_info* %30, %struct.blkfront_ring_info** %9, align 8
  %31 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %32 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @blk_mq_start_request(i32 %33)
  %35 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %36 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %40 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %39, i32 0, i32 2
  %41 = call i64 @RING_FULL(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %76

44:                                               ; preds = %2
  %45 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %46 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %49 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @blkif_request_flush_invalid(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %70

54:                                               ; preds = %44
  %55 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %56 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %59 = call i64 @blkif_queue_request(i32 %57, %struct.blkfront_ring_info* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %76

62:                                               ; preds = %54
  %63 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %64 = call i32 @flush_requests(%struct.blkfront_ring_info* %63)
  %65 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %66 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %65, i32 0, i32 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %84

70:                                               ; preds = %53
  %71 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %72 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %71, i32 0, i32 0
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %75, i32* %3, align 4
  br label %84

76:                                               ; preds = %61, %43
  %77 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %78 = call i32 @blk_mq_stop_hw_queue(%struct.blk_mq_hw_ctx* %77)
  %79 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %9, align 8
  %80 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %76, %70, %62
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_mq_start_request(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @RING_FULL(i32*) #1

declare dso_local i64 @blkif_request_flush_invalid(i32, i32) #1

declare dso_local i64 @blkif_queue_request(i32, %struct.blkfront_ring_info*) #1

declare dso_local i32 @flush_requests(%struct.blkfront_ring_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_stop_hw_queue(%struct.blk_mq_hw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
