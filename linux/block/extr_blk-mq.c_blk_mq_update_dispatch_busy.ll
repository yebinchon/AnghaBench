; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_update_dispatch_busy.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_update_dispatch_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BLK_MQ_DISPATCH_BUSY_EWMA_WEIGHT = common dso_local global i32 0, align 4
@BLK_MQ_DISPATCH_BUSY_EWMA_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, i32)* @blk_mq_update_dispatch_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %42

23:                                               ; preds = %19, %13
  %24 = load i32, i32* @BLK_MQ_DISPATCH_BUSY_EWMA_WEIGHT, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @BLK_MQ_DISPATCH_BUSY_EWMA_FACTOR, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* @BLK_MQ_DISPATCH_BUSY_EWMA_WEIGHT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = udiv i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %22, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
