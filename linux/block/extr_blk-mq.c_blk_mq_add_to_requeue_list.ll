; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_add_to_requeue_list.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_add_to_requeue_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32, i32 }

@RQF_SOFTBARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_add_to_requeue_list(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 2
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %7, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RQF_SOFTBARRIER, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32, i32* @RQF_SOFTBARRIER, align 4
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 1
  %34 = call i32 @list_add(i32* %31, i32* %33)
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 1
  %38 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 1
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  br label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %50 = call i32 @blk_mq_kick_requeue_list(%struct.request_queue* %49)
  br label %51

51:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_kick_requeue_list(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
