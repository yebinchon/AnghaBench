; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_issue_directly.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_issue_directly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* }
%struct.blk_mq_queue_data = type { i32, %struct.request* }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.request*, i32*, i32)* @__blk_mq_issue_directly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_mq_issue_directly(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca %struct.blk_mq_queue_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %9, align 8
  %16 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %10, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %10, i32 0, i32 1
  %19 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %19, %struct.request** %18, align 8
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = call i32 @request_to_qc_t(%struct.blk_mq_hw_ctx* %20, %struct.request* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)** %26, align 8
  %28 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %29 = call i32 %27(%struct.blk_mq_hw_ctx* %28, %struct.blk_mq_queue_data* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %41 [
    i32 129, label %31
    i32 128, label %36
    i32 130, label %36
  ]

31:                                               ; preds = %4
  %32 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %33 = call i32 @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* %32, i32 0)
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %46

36:                                               ; preds = %4, %4
  %37 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %38 = call i32 @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* %37, i32 1)
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = call i32 @__blk_mq_requeue_request(%struct.request* %39)
  br label %46

41:                                               ; preds = %4
  %42 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %43 = call i32 @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* %42, i32 0)
  %44 = load i32, i32* @BLK_QC_T_NONE, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36, %31
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local i32 @request_to_qc_t(%struct.blk_mq_hw_ctx*, %struct.request*) #1

declare dso_local i32 @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx*, i32) #1

declare dso_local i32 @__blk_mq_requeue_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
