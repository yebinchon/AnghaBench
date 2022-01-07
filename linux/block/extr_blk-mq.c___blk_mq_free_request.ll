; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, %struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.request_queue* }
%struct.blk_mq_hw_ctx = type { i32, i32 }
%struct.blk_mq_ctx = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @__blk_mq_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_mq_free_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.blk_mq_ctx*, align 8
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 4
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %3, align 8
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 3
  %12 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %11, align 8
  store %struct.blk_mq_ctx* %12, %struct.blk_mq_ctx** %4, align 8
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %14, align 8
  store %struct.blk_mq_hw_ctx* %15, %struct.blk_mq_hw_ctx** %5, align 8
  %16 = load %struct.request*, %struct.request** %2, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = call i32 @blk_pm_mark_last_busy(%struct.request* %19)
  %21 = load %struct.request*, %struct.request** %2, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 2
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %22, align 8
  %23 = load %struct.request*, %struct.request** %2, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %29 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %33 = load %struct.request*, %struct.request** %2, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @blk_mq_put_tag(%struct.blk_mq_hw_ctx* %28, i32 %31, %struct.blk_mq_ctx* %32, i32 %35)
  br label %37

37:                                               ; preds = %27, %1
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %42 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @blk_mq_put_tag(%struct.blk_mq_hw_ctx* %41, i32 %44, %struct.blk_mq_ctx* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %37
  %49 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %50 = call i32 @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* %49)
  %51 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %52 = call i32 @blk_queue_exit(%struct.request_queue* %51)
  ret void
}

declare dso_local i32 @blk_pm_mark_last_busy(%struct.request*) #1

declare dso_local i32 @blk_mq_put_tag(%struct.blk_mq_hw_ctx*, i32, %struct.blk_mq_ctx*, i32) #1

declare dso_local i32 @blk_mq_sched_restart(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_queue_exit(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
