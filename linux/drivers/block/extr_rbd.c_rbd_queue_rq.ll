; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.work_struct = type { i32 }

@rbd_wq = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @rbd_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_queue_data*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.work_struct*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %4, align 8
  %7 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %8 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %7, i32 0, i32 0
  %9 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %9, %struct.request** %5, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = call %struct.work_struct* @blk_mq_rq_to_pdu(%struct.request* %10)
  store %struct.work_struct* %11, %struct.work_struct** %6, align 8
  %12 = load i32, i32* @rbd_wq, align 4
  %13 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %14 = call i32 @queue_work(i32 %12, %struct.work_struct* %13)
  %15 = load i32, i32* @BLK_STS_OK, align 4
  ret i32 %15
}

declare dso_local %struct.work_struct* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @queue_work(i32, %struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
