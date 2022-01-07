; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_try_issue_directly.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_try_issue_directly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { i64 }

@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.request*, i32*, i32, i32)* @__blk_mq_try_issue_directly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_mq_hw_ctx*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_queue*, align 8
  %13 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %7, align 8
  store %struct.request* %1, %struct.request** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.request*, %struct.request** %8, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %12, align 8
  store i32 1, i32* %13, align 4
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %18 = call i64 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %22 = call i64 @blk_queue_quiesced(%struct.request_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %52

25:                                               ; preds = %20
  %26 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %52

34:                                               ; preds = %30, %25
  %35 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %36 = call i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %52

39:                                               ; preds = %34
  %40 = load %struct.request*, %struct.request** %8, align 8
  %41 = call i32 @blk_mq_get_driver_tag(%struct.request* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %45 = call i32 @blk_mq_put_dispatch_budget(%struct.blk_mq_hw_ctx* %44)
  br label %52

46:                                               ; preds = %39
  %47 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %48 = load %struct.request*, %struct.request** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @__blk_mq_issue_directly(%struct.blk_mq_hw_ctx* %47, %struct.request* %48, i32* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %62

52:                                               ; preds = %43, %38, %33, %24
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %52
  %58 = load %struct.request*, %struct.request** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @blk_mq_request_bypass_insert(%struct.request* %58, i32 %59)
  %61 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %55, %46
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx*) #1

declare dso_local i64 @blk_queue_quiesced(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_get_driver_tag(%struct.request*) #1

declare dso_local i32 @blk_mq_put_dispatch_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @__blk_mq_issue_directly(%struct.blk_mq_hw_ctx*, %struct.request*, i32*, i32) #1

declare dso_local i32 @blk_mq_request_bypass_insert(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
