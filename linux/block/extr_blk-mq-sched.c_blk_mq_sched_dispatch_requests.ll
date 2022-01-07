; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_dispatch_requests.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_dispatch_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i64, i32, i32, i32, %struct.request_queue* }
%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@rq_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.elevator_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 4
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  store %struct.elevator_queue* %11, %struct.elevator_queue** %4, align 8
  %12 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %13 = icmp ne %struct.elevator_queue* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %16 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i1 [ false, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @rq_list, align 4
  %26 = call i32 @LIST_HEAD(i32 %25)
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %28 = call i64 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %32 = call i64 @blk_queue_quiesced(%struct.request_queue* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i1 [ true, %22 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %106

40:                                               ; preds = %34
  %41 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %45, i32 0, i32 2
  %47 = call i32 @list_empty_careful(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %40
  %50 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %53, i32 0, i32 2
  %55 = call i32 @list_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %58, i32 0, i32 2
  %60 = call i32 @list_splice_init(i32* %59, i32* @rq_list)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %61, %40
  %66 = call i32 @list_empty(i32* @rq_list)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %70 = call i32 @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx* %69)
  %71 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %72 = call i64 @blk_mq_dispatch_rq_list(%struct.request_queue* %71, i32* @rq_list, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %79 = call i32 @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* %78)
  br label %83

80:                                               ; preds = %74
  %81 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %82 = call i32 @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %68
  br label %106

85:                                               ; preds = %65
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %90 = call i32 @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* %89)
  br label %105

91:                                               ; preds = %85
  %92 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %98 = call i32 @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx* %97)
  br label %104

99:                                               ; preds = %91
  %100 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %101 = call i32 @blk_mq_flush_busy_ctxs(%struct.blk_mq_hw_ctx* %100, i32* @rq_list)
  %102 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %103 = call i64 @blk_mq_dispatch_rq_list(%struct.request_queue* %102, i32* @rq_list, i32 0)
  br label %104

104:                                              ; preds = %99, %96
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %39, %105, %84
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx*) #1

declare dso_local i64 @blk_queue_quiesced(%struct.request_queue*) #1

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx*) #1

declare dso_local i64 @blk_mq_dispatch_rq_list(%struct.request_queue*, i32*, i32) #1

declare dso_local i32 @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_flush_busy_ctxs(%struct.blk_mq_hw_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
