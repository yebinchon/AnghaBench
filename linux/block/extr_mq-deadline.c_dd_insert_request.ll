; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_insert_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.request*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32*, i64*, i32 }
%struct.request = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, %struct.request*, i32)* @dd_insert_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dd_insert_request(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.deadline_data*, align 8
  %9 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 0
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %7, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.deadline_data*, %struct.deadline_data** %16, align 8
  store %struct.deadline_data* %17, %struct.deadline_data** %8, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @rq_data_dir(%struct.request* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = call i32 @blk_req_zone_write_unlock(%struct.request* %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = call i64 @blk_mq_sched_try_insert_merge(%struct.request_queue* %22, %struct.request* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %93

27:                                               ; preds = %3
  %28 = load %struct.request*, %struct.request** %5, align 8
  %29 = call i32 @blk_mq_sched_request_inserted(%struct.request* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = call i64 @blk_rq_is_passthrough(%struct.request* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %43 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %42, i32 0, i32 2
  %44 = call i32 @list_add(i32* %41, i32* %43)
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.request*, %struct.request** %5, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 0
  %48 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %49 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %93

52:                                               ; preds = %32
  %53 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %54 = load %struct.request*, %struct.request** %5, align 8
  %55 = call i32 @deadline_add_rq_rb(%struct.deadline_data* %53, %struct.request* %54)
  %56 = load %struct.request*, %struct.request** %5, align 8
  %57 = call i64 @rq_mergeable(%struct.request* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %61 = load %struct.request*, %struct.request** %5, align 8
  %62 = call i32 @elv_rqhash_add(%struct.request_queue* %60, %struct.request* %61)
  %63 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 0
  %65 = load %struct.request*, %struct.request** %64, align 8
  %66 = icmp ne %struct.request* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load %struct.request*, %struct.request** %5, align 8
  %69 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %70 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %69, i32 0, i32 0
  store %struct.request* %68, %struct.request** %70, align 8
  br label %71

71:                                               ; preds = %67, %59
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i64, i64* @jiffies, align 8
  %74 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %75 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %73, %80
  %82 = load %struct.request*, %struct.request** %5, align 8
  %83 = getelementptr inbounds %struct.request, %struct.request* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.request*, %struct.request** %5, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  %86 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %87 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @list_add_tail(i32* %85, i32* %91)
  br label %93

93:                                               ; preds = %26, %72, %51
  ret void
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_req_zone_write_unlock(%struct.request*) #1

declare dso_local i64 @blk_mq_sched_try_insert_merge(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @blk_mq_sched_request_inserted(%struct.request*) #1

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @deadline_add_rq_rb(%struct.deadline_data*, %struct.request*) #1

declare dso_local i64 @rq_mergeable(%struct.request*) #1

declare dso_local i32 @elv_rqhash_add(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
