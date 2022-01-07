; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_insert_requests.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_insert_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32, %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.blk_mq_hw_ctx*, %struct.list_head*, i32)* }
%struct.blk_mq_ctx = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_ctx* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca %struct.blk_mq_ctx*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.elevator_queue*, align 8
  %10 = alloca %struct.request_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %5, align 8
  store %struct.blk_mq_ctx* %1, %struct.blk_mq_ctx** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 1
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %10, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = call i32 @percpu_ref_get(i32* %15)
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 1
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 1
  %21 = load %struct.elevator_queue*, %struct.elevator_queue** %20, align 8
  store %struct.elevator_queue* %21, %struct.elevator_queue** %9, align 8
  %22 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  %23 = icmp ne %struct.elevator_queue* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %4
  %25 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  %26 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.blk_mq_hw_ctx*, %struct.list_head*, i32)*, i32 (%struct.blk_mq_hw_ctx*, %struct.list_head*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.blk_mq_hw_ctx*, %struct.list_head*, i32)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  %34 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.blk_mq_hw_ctx*, %struct.list_head*, i32)*, i32 (%struct.blk_mq_hw_ctx*, %struct.list_head*, i32)** %37, align 8
  %39 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %40 = load %struct.list_head*, %struct.list_head** %7, align 8
  %41 = call i32 %38(%struct.blk_mq_hw_ctx* %39, %struct.list_head* %40, i32 0)
  br label %67

42:                                               ; preds = %24, %4
  %43 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  %49 = icmp ne %struct.elevator_queue* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %55 = load %struct.list_head*, %struct.list_head** %7, align 8
  %56 = call i32 @blk_mq_try_issue_list_directly(%struct.blk_mq_hw_ctx* %54, %struct.list_head* %55)
  %57 = load %struct.list_head*, %struct.list_head** %7, align 8
  %58 = call i64 @list_empty(%struct.list_head* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %71

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %50, %47, %42
  %63 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %64 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %6, align 8
  %65 = load %struct.list_head*, %struct.list_head** %7, align 8
  %66 = call i32 @blk_mq_insert_requests(%struct.blk_mq_hw_ctx* %63, %struct.blk_mq_ctx* %64, %struct.list_head* %65)
  br label %67

67:                                               ; preds = %62, %32
  %68 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %73 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %72, i32 0, i32 0
  %74 = call i32 @percpu_ref_put(i32* %73)
  ret void
}

declare dso_local i32 @percpu_ref_get(i32*) #1

declare dso_local i32 @blk_mq_try_issue_list_directly(%struct.blk_mq_hw_ctx*, %struct.list_head*) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @blk_mq_insert_requests(%struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.list_head*) #1

declare dso_local i32 @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx*, i32) #1

declare dso_local i32 @percpu_ref_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
