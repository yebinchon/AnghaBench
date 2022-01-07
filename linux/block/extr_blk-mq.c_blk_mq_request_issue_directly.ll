; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_request_issue_directly.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_request_issue_directly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.blk_mq_hw_ctx* }
%struct.blk_mq_hw_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_request_issue_directly(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  store %struct.blk_mq_hw_ctx* %11, %struct.blk_mq_hw_ctx** %8, align 8
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %13 = call i32 @hctx_lock(%struct.blk_mq_hw_ctx* %12, i32* %6)
  %14 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* %14, %struct.request* %15, i32* %7, i32 1, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @hctx_unlock(%struct.blk_mq_hw_ctx* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @hctx_lock(%struct.blk_mq_hw_ctx*, i32*) #1

declare dso_local i32 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx*, %struct.request*, i32*, i32, i32) #1

declare dso_local i32 @hctx_unlock(%struct.blk_mq_hw_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
