; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-exec.c_blk_execute_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-exec.c_blk_execute_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.request = type { i32* }

@wait = common dso_local global i32 0, align 4
@blk_end_sync_rq = common dso_local global i32 0, align 4
@sysctl_hung_task_timeout_secs = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_execute_rq(%struct.request_queue* %0, %struct.gendisk* %1, %struct.request* %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.gendisk* %1, %struct.gendisk** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %10)
  %12 = load %struct.request*, %struct.request** %7, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  store i32* @wait, i32** %13, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %15 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @blk_end_sync_rq, align 4
  %19 = call i32 @blk_execute_rq_nowait(%struct.request_queue* %14, %struct.gendisk* %15, %struct.request* %16, i32 %17, i32 %18)
  %20 = load i64, i64* @sysctl_hung_task_timeout_secs, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = mul i64 %25, %28
  %30 = call i32 @wait_for_completion_io_timeout(i32* @wait, i64 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %24

34:                                               ; preds = %24
  br label %37

35:                                               ; preds = %4
  %36 = call i32 @wait_for_completion_io(i32* @wait)
  br label %37

37:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @blk_execute_rq_nowait(%struct.request_queue*, %struct.gendisk*, %struct.request*, i32, i32) #1

declare dso_local i32 @wait_for_completion_io_timeout(i32*, i64) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
