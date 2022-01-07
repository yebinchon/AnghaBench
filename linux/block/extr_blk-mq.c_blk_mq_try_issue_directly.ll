; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_try_issue_directly.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_try_issue_directly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { i32 }

@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@BLK_STS_DEV_RESOURCE = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, %struct.request*, i32*)* @blk_mq_try_issue_directly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32* %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @might_sleep_if(i32 %13)
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %16 = call i32 @hctx_lock(%struct.blk_mq_hw_ctx* %15, i32* %8)
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* %17, %struct.request* %18, i32* %19, i32 0, i32 1)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @BLK_STS_RESOURCE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @BLK_STS_DEV_RESOURCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %3
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = call i32 @blk_mq_request_bypass_insert(%struct.request* %29, i32 1)
  br label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @BLK_STS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @blk_mq_end_request(%struct.request* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @hctx_unlock(%struct.blk_mq_hw_ctx* %41, i32 %42)
  ret void
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @hctx_lock(%struct.blk_mq_hw_ctx*, i32*) #1

declare dso_local i64 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx*, %struct.request*, i32*, i32, i32) #1

declare dso_local i32 @blk_mq_request_bypass_insert(%struct.request*, i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i64) #1

declare dso_local i32 @hctx_unlock(%struct.blk_mq_hw_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
