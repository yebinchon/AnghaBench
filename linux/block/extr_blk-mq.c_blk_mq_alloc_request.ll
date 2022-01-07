; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32*, i32, i64, i64 }
%struct.request_queue = type { i32 }
%struct.blk_mq_alloc_data = type { i32, i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @blk_mq_alloc_request(%struct.request_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_alloc_data, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @blk_queue_enter(%struct.request_queue* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.request* @ERR_PTR(i32 %21)
  store %struct.request* %22, %struct.request** %4, align 8
  br label %44

23:                                               ; preds = %3
  %24 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %25 = call %struct.request* @blk_mq_get_request(%struct.request_queue* %24, i32* null, %struct.blk_mq_alloc_data* %8)
  store %struct.request* %25, %struct.request** %9, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = call i32 @blk_queue_exit(%struct.request_queue* %26)
  %28 = load %struct.request*, %struct.request** %9, align 8
  %29 = icmp ne %struct.request* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EWOULDBLOCK, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.request* @ERR_PTR(i32 %32)
  store %struct.request* %33, %struct.request** %4, align 8
  br label %44

34:                                               ; preds = %23
  %35 = load %struct.request*, %struct.request** %9, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.request*, %struct.request** %9, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  store i64 -1, i64* %38, align 8
  %39 = load %struct.request*, %struct.request** %9, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.request*, %struct.request** %9, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %43, %struct.request** %4, align 8
  br label %44

44:                                               ; preds = %34, %30, %20
  %45 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %45
}

declare dso_local i32 @blk_queue_enter(%struct.request_queue*, i32) #1

declare dso_local %struct.request* @ERR_PTR(i32) #1

declare dso_local %struct.request* @blk_mq_get_request(%struct.request_queue*, i32*, %struct.blk_mq_alloc_data*) #1

declare dso_local i32 @blk_queue_exit(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
