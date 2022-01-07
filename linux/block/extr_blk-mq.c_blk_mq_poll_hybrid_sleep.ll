; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_poll_hybrid_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_poll_hybrid_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.request = type { i32 }
%struct.hrtimer_sleeper = type { i32, i64 }

@RQF_MQ_POLL_SLEPT = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MQ_RQ_COMPLETE = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.blk_mq_hw_ctx*, %struct.request*)* @blk_mq_poll_hybrid_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_poll_hybrid_sleep(%struct.request_queue* %0, %struct.blk_mq_hw_ctx* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.hrtimer_sleeper, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_hw_ctx** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %12 = load %struct.request*, %struct.request** %7, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RQF_MQ_POLL_SLEPT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

19:                                               ; preds = %3
  %20 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %19
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = call i32 @blk_mq_poll_nsecs(%struct.request_queue* %29, %struct.blk_mq_hw_ctx* %30, %struct.request* %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %87

37:                                               ; preds = %33
  %38 = load i32, i32* @RQF_MQ_POLL_SLEPT, align 4
  %39 = load %struct.request*, %struct.request** %7, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @HRTIMER_MODE_REL, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* %8, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @hrtimer_set_expires(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %80, %37
  %52 = load %struct.request*, %struct.request** %7, align 8
  %53 = call i64 @blk_mq_rq_state(%struct.request* %52)
  %54 = load i64, i64* @MQ_RQ_COMPLETE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %82

57:                                               ; preds = %51
  %58 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %59 = call i32 @set_current_state(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* %8, i32 %60)
  %62 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 (...) @io_schedule()
  br label %67

67:                                               ; preds = %65, %57
  %68 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %69 = call i32 @hrtimer_cancel(i32* %68)
  %70 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* @current, align 4
  %77 = call i32 @signal_pending(i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i1 [ false, %71 ], [ %79, %75 ]
  br i1 %81, label %51, label %82

82:                                               ; preds = %80, %56
  %83 = load i32, i32* @TASK_RUNNING, align 4
  %84 = call i32 @__set_current_state(i32 %83)
  %85 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %86 = call i32 @destroy_hrtimer_on_stack(i32* %85)
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %36, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @blk_mq_poll_nsecs(%struct.request_queue*, %struct.blk_mq_hw_ctx*, %struct.request*) #1

declare dso_local i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(i32*, i32) #1

declare dso_local i64 @blk_mq_rq_state(%struct.request*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper*, i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @destroy_hrtimer_on_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
