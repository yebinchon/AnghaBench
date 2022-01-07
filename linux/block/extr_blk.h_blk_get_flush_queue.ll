; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk.h_blk_get_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk.h_blk_get_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_flush_queue = type { i32 }
%struct.request_queue = type { i32 }
%struct.blk_mq_ctx = type { i32 }
%struct.TYPE_2__ = type { %struct.blk_flush_queue* }

@REQ_OP_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_flush_queue* (%struct.request_queue*, %struct.blk_mq_ctx*)* @blk_get_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_flush_queue* @blk_get_flush_queue(%struct.request_queue* %0, %struct.blk_mq_ctx* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.blk_mq_ctx*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.blk_mq_ctx* %1, %struct.blk_mq_ctx** %4, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = load i32, i32* @REQ_OP_FLUSH, align 4
  %7 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %8 = call %struct.TYPE_2__* @blk_mq_map_queue(%struct.request_queue* %5, i32 %6, %struct.blk_mq_ctx* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %9, align 8
  ret %struct.blk_flush_queue* %10
}

declare dso_local %struct.TYPE_2__* @blk_mq_map_queue(%struct.request_queue*, i32, %struct.blk_mq_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
