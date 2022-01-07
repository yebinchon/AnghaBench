; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_insert_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.request*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfq_data* }
%struct.bfq_data = type { i32, i32 }
%struct.request = type { i32, i32 }
%struct.bfq_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, %struct.request*, i32)* @bfq_insert_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_insert_request(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.bfq_data*, align 8
  %9 = alloca %struct.bfq_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %12, i32 0, i32 0
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %7, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.bfq_data*, %struct.bfq_data** %18, align 8
  store %struct.bfq_data* %19, %struct.bfq_data** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %21 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = call i64 @blk_mq_sched_try_insert_merge(%struct.request_queue* %23, %struct.request* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %29 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %102

31:                                               ; preds = %3
  %32 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %33 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @blk_mq_sched_request_inserted(%struct.request* %35)
  %37 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %38 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = call %struct.bfq_queue* @bfq_init_rq(%struct.request* %40)
  store %struct.bfq_queue* %41, %struct.bfq_queue** %9, align 8
  %42 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %43 = icmp ne %struct.bfq_queue* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.request*, %struct.request** %5, align 8
  %49 = call i64 @blk_rq_is_passthrough(%struct.request* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47, %44, %31
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.request*, %struct.request** %5, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 1
  %57 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %58 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %57, i32 0, i32 1
  %59 = call i32 @list_add(i32* %56, i32* %58)
  br label %66

60:                                               ; preds = %51
  %61 = load %struct.request*, %struct.request** %5, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 1
  %63 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %64 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %54
  br label %90

67:                                               ; preds = %47
  %68 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %69 = load %struct.request*, %struct.request** %5, align 8
  %70 = call i32 @__bfq_insert_request(%struct.bfq_data* %68, %struct.request* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.request*, %struct.request** %5, align 8
  %72 = call %struct.bfq_queue* @RQ_BFQQ(%struct.request* %71)
  store %struct.bfq_queue* %72, %struct.bfq_queue** %9, align 8
  %73 = load %struct.request*, %struct.request** %5, align 8
  %74 = call i64 @rq_mergeable(%struct.request* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %67
  %77 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %78 = load %struct.request*, %struct.request** %5, align 8
  %79 = call i32 @elv_rqhash_add(%struct.request_queue* %77, %struct.request* %78)
  %80 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %81 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %80, i32 0, i32 0
  %82 = load %struct.request*, %struct.request** %81, align 8
  %83 = icmp ne %struct.request* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = load %struct.request*, %struct.request** %5, align 8
  %86 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %87 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %86, i32 0, i32 0
  store %struct.request* %85, %struct.request** %87, align 8
  br label %88

88:                                               ; preds = %84, %76
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.request*, %struct.request** %5, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %95 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_irq(i32* %95)
  %97 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %98 = load %struct.bfq_queue*, %struct.bfq_queue** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @bfq_update_insert_stats(%struct.request_queue* %97, %struct.bfq_queue* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %27
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @blk_mq_sched_try_insert_merge(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_mq_sched_request_inserted(%struct.request*) #1

declare dso_local %struct.bfq_queue* @bfq_init_rq(%struct.request*) #1

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__bfq_insert_request(%struct.bfq_data*, %struct.request*) #1

declare dso_local %struct.bfq_queue* @RQ_BFQQ(%struct.request*) #1

declare dso_local i64 @rq_mergeable(%struct.request*) #1

declare dso_local i32 @elv_rqhash_add(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @bfq_update_insert_stats(%struct.request_queue*, %struct.bfq_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
