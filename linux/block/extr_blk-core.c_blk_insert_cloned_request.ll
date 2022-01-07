; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_insert_cloned_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_insert_cloned_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_insert_cloned_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = call i64 @blk_cloned_rq_check_limits(%struct.request_queue* %6, %struct.request* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %11, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @blk_rq_bytes(%struct.request* %22)
  %24 = call i64 @should_fail_request(i32* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %17, %12
  %29 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %30 = call i64 @blk_queue_io_stat(%struct.request_queue* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = call i32 @blk_account_io_start(%struct.request* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = call i32 @blk_mq_request_issue_directly(%struct.request* %36, i32 1)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %26, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @blk_cloned_rq_check_limits(%struct.request_queue*, %struct.request*) #1

declare dso_local i64 @should_fail_request(i32*, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @blk_queue_io_stat(%struct.request_queue*) #1

declare dso_local i32 @blk_account_io_start(%struct.request*, i32) #1

declare dso_local i32 @blk_mq_request_issue_directly(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
