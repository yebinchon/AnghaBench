; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.vdc_port* }
%struct.vdc_port = type { i32 }

@vdc_mq_ops = common dso_local global i32 0, align 4
@VDC_TX_RING_SIZE = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request_queue* (%struct.vdc_port*)* @init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request_queue* @init_queue(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.vdc_port*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %3, align 8
  %5 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %6 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %5, i32 0, i32 0
  %7 = load i32, i32* @VDC_TX_RING_SIZE, align 4
  %8 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %9 = call %struct.request_queue* @blk_mq_init_sq_queue(i32* %6, i32* @vdc_mq_ops, i32 %7, i32 %8)
  store %struct.request_queue* %9, %struct.request_queue** %4, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = call i64 @IS_ERR(%struct.request_queue* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  store %struct.request_queue* %14, %struct.request_queue** %2, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  store %struct.vdc_port* %16, %struct.vdc_port** %18, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  store %struct.request_queue* %19, %struct.request_queue** %2, align 8
  br label %20

20:                                               ; preds = %15, %13
  %21 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  ret %struct.request_queue* %21
}

declare dso_local %struct.request_queue* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
