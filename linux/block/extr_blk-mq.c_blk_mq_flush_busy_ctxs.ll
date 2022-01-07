; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_flush_busy_ctxs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_flush_busy_ctxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.list_head = type { i32 }
%struct.flush_busy_ctx_data = type { %struct.list_head*, %struct.blk_mq_hw_ctx* }

@flush_busy_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_flush_busy_ctxs(%struct.blk_mq_hw_ctx* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.flush_busy_ctx_data, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = getelementptr inbounds %struct.flush_busy_ctx_data, %struct.flush_busy_ctx_data* %5, i32 0, i32 0
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  store %struct.list_head* %7, %struct.list_head** %6, align 8
  %8 = getelementptr inbounds %struct.flush_busy_ctx_data, %struct.flush_busy_ctx_data* %5, i32 0, i32 1
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_hw_ctx* %9, %struct.blk_mq_hw_ctx** %8, align 8
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* @flush_busy_ctx, align 4
  %13 = call i32 @sbitmap_for_each_set(i32* %11, i32 %12, %struct.flush_busy_ctx_data* %5)
  ret void
}

declare dso_local i32 @sbitmap_for_each_set(i32*, i32, %struct.flush_busy_ctx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
