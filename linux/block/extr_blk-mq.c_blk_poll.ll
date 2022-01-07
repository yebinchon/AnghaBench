; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_poll.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.request_queue = type { %struct.TYPE_4__*, %struct.blk_mq_hw_ctx**, i32 }
%struct.TYPE_4__ = type { i32 (%struct.blk_mq_hw_ctx*)* }
%struct.blk_mq_hw_ctx = type { i32, i32, i32 }

@QUEUE_FLAG_POLL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_poll(%struct.request_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @blk_qc_t_valid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @QUEUE_FLAG_POLL, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 2
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %106

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @blk_flush_plug_list(i64 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 1
  %34 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @blk_qc_t_to_queue_num(i32 %35)
  %37 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %34, i64 %36
  %38 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %37, align 8
  store %struct.blk_mq_hw_ctx* %38, %struct.blk_mq_hw_ctx** %8, align 8
  %39 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %40 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @blk_mq_poll_hybrid(%struct.request_queue* %39, %struct.blk_mq_hw_ctx* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %106

45:                                               ; preds = %31
  %46 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %99, %45
  %54 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %59 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %61, align 8
  %63 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %64 = call i32 %62(%struct.blk_mq_hw_ctx* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i64, i64* @TASK_RUNNING, align 8
  %73 = call i32 @__set_current_state(i64 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %106

75:                                               ; preds = %53
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %78 = call i64 @signal_pending_state(i64 %76, %struct.TYPE_5__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* @TASK_RUNNING, align 8
  %82 = call i32 @__set_current_state(i64 %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TASK_RUNNING, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %106

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93, %90
  br label %103

97:                                               ; preds = %93
  %98 = call i32 (...) @cpu_relax()
  br label %99

99:                                               ; preds = %97
  %100 = call i32 (...) @need_resched()
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %53, label %103

103:                                              ; preds = %99, %96
  %104 = load i64, i64* @TASK_RUNNING, align 8
  %105 = call i32 @__set_current_state(i64 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %89, %67, %44, %20
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @blk_qc_t_valid(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @blk_flush_plug_list(i64, i32) #1

declare dso_local i64 @blk_qc_t_to_queue_num(i32) #1

declare dso_local i64 @blk_mq_poll_hybrid(%struct.request_queue*, %struct.blk_mq_hw_ctx*, i32) #1

declare dso_local i32 @__set_current_state(i64) #1

declare dso_local i64 @signal_pending_state(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @need_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
