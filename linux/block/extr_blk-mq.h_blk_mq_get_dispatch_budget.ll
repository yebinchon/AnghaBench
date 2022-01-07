; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.h_blk_mq_get_dispatch_budget.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.h_blk_mq_get_dispatch_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*)* @blk_mq_get_dispatch_budget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  %5 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %5, i32 0, i32 0
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %7, %struct.request_queue** %4, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.blk_mq_hw_ctx*)**
  %13 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %12, align 8
  %14 = icmp ne i32 (%struct.blk_mq_hw_ctx*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.blk_mq_hw_ctx*)**
  %21 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %20, align 8
  %22 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %23 = call i32 %21(%struct.blk_mq_hw_ctx* %22)
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
