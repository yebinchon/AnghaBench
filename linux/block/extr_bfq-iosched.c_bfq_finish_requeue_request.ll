; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_finish_requeue_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_finish_requeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32**, i32 }
%struct.bfq_queue = type { %struct.bfq_data* }
%struct.bfq_data = type { i32, %struct.request* }

@RQF_ELVPRIV = common dso_local global i32 0, align 4
@RQF_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @bfq_finish_requeue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_finish_requeue_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.bfq_queue*, align 8
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = call %struct.bfq_queue* @RQ_BFQQ(%struct.request* %6)
  store %struct.bfq_queue* %7, %struct.bfq_queue** %3, align 8
  %8 = load %struct.request*, %struct.request** %2, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RQF_ELVPRIV, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %115

19:                                               ; preds = %1
  %20 = load %struct.request*, %struct.request** %2, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %27 = icmp ne %struct.bfq_queue* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %19
  br label %115

29:                                               ; preds = %25
  %30 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %31 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %30, i32 0, i32 0
  %32 = load %struct.bfq_data*, %struct.bfq_data** %31, align 8
  store %struct.bfq_data* %32, %struct.bfq_data** %4, align 8
  %33 = load %struct.request*, %struct.request** %2, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RQF_STARTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %41 = call i32 @bfqq_group(%struct.bfq_queue* %40)
  %42 = load %struct.request*, %struct.request** %2, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.request*, %struct.request** %2, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.request*, %struct.request** %2, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bfqg_stats_update_completion(i32 %41, i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %39, %29
  %53 = load %struct.request*, %struct.request** %2, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RQF_STARTED, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %52
  %61 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %62 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %61, i32 0, i32 0
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.request*, %struct.request** %2, align 8
  %66 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %67 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %66, i32 0, i32 1
  %68 = load %struct.request*, %struct.request** %67, align 8
  %69 = icmp eq %struct.request* %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %72 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %73 = call i32 @bfq_update_inject_limit(%struct.bfq_data* %71, %struct.bfq_queue* %72)
  br label %74

74:                                               ; preds = %70, %60
  %75 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %76 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %77 = call i32 @bfq_completed_request(%struct.bfq_queue* %75, %struct.bfq_data* %76)
  %78 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %79 = call i32 @bfq_finish_requeue_request_body(%struct.bfq_queue* %78)
  %80 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %81 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %80, i32 0, i32 0
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %104

84:                                               ; preds = %52
  %85 = load %struct.request*, %struct.request** %2, align 8
  %86 = getelementptr inbounds %struct.request, %struct.request* %85, i32 0, i32 4
  %87 = call i32 @RB_EMPTY_NODE(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %84
  %90 = load %struct.request*, %struct.request** %2, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.request*, %struct.request** %2, align 8
  %94 = call i32 @bfq_remove_request(i32 %92, %struct.request* %93)
  %95 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %96 = call i32 @bfqq_group(%struct.bfq_queue* %95)
  %97 = load %struct.request*, %struct.request** %2, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @bfqg_stats_update_io_remove(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %89, %84
  %102 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %103 = call i32 @bfq_finish_requeue_request_body(%struct.bfq_queue* %102)
  br label %104

104:                                              ; preds = %101, %74
  %105 = load %struct.request*, %struct.request** %2, align 8
  %106 = getelementptr inbounds %struct.request, %struct.request* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  store i32* null, i32** %109, align 8
  %110 = load %struct.request*, %struct.request** %2, align 8
  %111 = getelementptr inbounds %struct.request, %struct.request* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %104, %28, %18
  ret void
}

declare dso_local %struct.bfq_queue* @RQ_BFQQ(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bfqg_stats_update_completion(i32, i32, i32, i32) #1

declare dso_local i32 @bfqq_group(%struct.bfq_queue*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfq_update_inject_limit(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_completed_request(%struct.bfq_queue*, %struct.bfq_data*) #1

declare dso_local i32 @bfq_finish_requeue_request_body(%struct.bfq_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @bfq_remove_request(i32, %struct.request*) #1

declare dso_local i32 @bfqg_stats_update_io_remove(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
