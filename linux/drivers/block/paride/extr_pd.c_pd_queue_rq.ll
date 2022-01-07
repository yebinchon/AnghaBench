; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.blk_mq_hw_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pd_unit* }
%struct.pd_unit = type { i32 }
%struct.blk_mq_queue_data = type { %struct.TYPE_5__* }

@pd_lock = common dso_local global i32 0, align 4
@pd_req = common dso_local global %struct.TYPE_5__* null, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @pd_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_queue_data*, align 8
  %5 = alloca %struct.pd_unit*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %4, align 8
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.pd_unit*, %struct.pd_unit** %9, align 8
  store %struct.pd_unit* %10, %struct.pd_unit** %5, align 8
  %11 = call i32 @spin_lock_irq(i32* @pd_lock)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pd_req, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %16 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** @pd_req, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pd_req, align 8
  %19 = call i32 @blk_mq_start_request(%struct.TYPE_5__* %18)
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %22 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.pd_unit*, %struct.pd_unit** %5, align 8
  %26 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %20, %14
  %29 = call i32 @spin_unlock_irq(i32* @pd_lock)
  %30 = call i32 (...) @run_fsm()
  %31 = load i32, i32* @BLK_STS_OK, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @blk_mq_start_request(%struct.TYPE_5__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @run_fsm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
