; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_do_dispatch_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_do_dispatch_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.blk_mq_ctx = type { i32 }
%struct.request = type { i32, i32 }

@rq_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*)* @blk_mq_do_dispatch_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.blk_mq_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 2
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load i32, i32* @rq_list, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.blk_mq_ctx* @READ_ONCE(i32 %13)
  store %struct.blk_mq_ctx* %14, %struct.blk_mq_ctx** %4, align 8
  br label %15

15:                                               ; preds = %44, %1
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i32 0, i32 1
  %18 = call i32 @sbitmap_any_bit_set(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %48

21:                                               ; preds = %15
  %22 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %23 = call i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %48

26:                                               ; preds = %21
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %28 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %29 = call %struct.request* @blk_mq_dequeue_from_ctx(%struct.blk_mq_hw_ctx* %27, %struct.blk_mq_ctx* %28)
  store %struct.request* %29, %struct.request** %5, align 8
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = icmp ne %struct.request* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %34 = call i32 @blk_mq_put_dispatch_budget(%struct.blk_mq_hw_ctx* %33)
  br label %48

35:                                               ; preds = %26
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 1
  %38 = call i32 @list_add(i32* %37, i32* @rq_list)
  %39 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.blk_mq_ctx* @blk_mq_next_ctx(%struct.blk_mq_hw_ctx* %39, i32 %42)
  store %struct.blk_mq_ctx* %43, %struct.blk_mq_ctx** %4, align 8
  br label %44

44:                                               ; preds = %35
  %45 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %46 = call i64 @blk_mq_dispatch_rq_list(%struct.request_queue* %45, i32* @rq_list, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %15, label %48

48:                                               ; preds = %44, %32, %25, %20
  %49 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %53 = call i32 @WRITE_ONCE(i32 %51, %struct.blk_mq_ctx* %52)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.blk_mq_ctx* @READ_ONCE(i32) #1

declare dso_local i32 @sbitmap_any_bit_set(i32*) #1

declare dso_local i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local %struct.request* @blk_mq_dequeue_from_ctx(%struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*) #1

declare dso_local i32 @blk_mq_put_dispatch_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.blk_mq_ctx* @blk_mq_next_ctx(%struct.blk_mq_hw_ctx*, i32) #1

declare dso_local i64 @blk_mq_dispatch_rq_list(%struct.request_queue*, i32*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.blk_mq_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
