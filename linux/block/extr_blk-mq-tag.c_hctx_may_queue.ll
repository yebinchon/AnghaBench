; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_hctx_may_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_hctx_may_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sbitmap_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BLK_MQ_F_TAG_SHARED = common dso_local global i32 0, align 4
@BLK_MQ_S_TAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.sbitmap_queue*)* @hctx_may_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hctx_may_queue(%struct.blk_mq_hw_ctx* %0, %struct.sbitmap_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.sbitmap_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.sbitmap_queue* %1, %struct.sbitmap_queue** %5, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %9 = icmp ne %struct.blk_mq_hw_ctx* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BLK_MQ_F_TAG_SHARED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %58

18:                                               ; preds = %10
  %19 = load i32, i32* @BLK_MQ_S_TAG_ACTIVE, align 4
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %20, i32 0, i32 3
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %58

25:                                               ; preds = %18
  %26 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %27 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %58

32:                                               ; preds = %25
  %33 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @atomic_read(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %58

41:                                               ; preds = %32
  %42 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %5, align 8
  %43 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %45, %46
  %48 = sub i32 %47, 1
  %49 = load i32, i32* %7, align 4
  %50 = udiv i32 %48, %49
  %51 = call i32 @max(i32 %50, i32 4)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %52, i32 0, i32 1
  %54 = call i32 @atomic_read(i32* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ult i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %41, %40, %31, %24, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
