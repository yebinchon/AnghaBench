; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_insert_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { %struct.blk_mq_ctx* }
%struct.blk_mq_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_mq_insert_request(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_mq_ctx*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  store %struct.blk_mq_ctx* %10, %struct.blk_mq_ctx** %7, align 8
  %11 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @__blk_mq_insert_req_list(%struct.blk_mq_hw_ctx* %14, %struct.request* %15, i32 %16)
  %18 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %19 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %20 = call i32 @blk_mq_hctx_mark_pending(%struct.blk_mq_hw_ctx* %18, %struct.blk_mq_ctx* %19)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__blk_mq_insert_req_list(%struct.blk_mq_hw_ctx*, %struct.request*, i32) #1

declare dso_local i32 @blk_mq_hctx_mark_pending(%struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
