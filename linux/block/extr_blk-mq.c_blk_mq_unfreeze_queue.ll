; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_unfreeze_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_unfreeze_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_unfreeze_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %3 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON_ONCE(i32 %14)
  %16 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 3
  %23 = call i32 @percpu_ref_resurrect(i32* %22)
  %24 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 2
  %26 = call i32 @wake_up_all(i32* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @percpu_ref_resurrect(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
