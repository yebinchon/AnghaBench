; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_blk_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_blk_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VDC_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*)* @vdc_blk_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_blk_queue_start(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.vdc_port*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %2, align 8
  %4 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %5 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %8 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %9 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %7, i64 %8
  store %struct.vio_dring_state* %9, %struct.vio_dring_state** %3, align 8
  %10 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %11 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %16 = call i32 @vdc_tx_dring_avail(%struct.vio_dring_state* %15)
  %17 = mul nsw i32 %16, 100
  %18 = load i32, i32* @VDC_TX_RING_SIZE, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp sge i32 %19, 50
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %23 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @blk_mq_start_stopped_hw_queues(i32 %26, i32 1)
  br label %28

28:                                               ; preds = %21, %14, %1
  ret void
}

declare dso_local i32 @vdc_tx_dring_avail(%struct.vio_dring_state*) #1

declare dso_local i32 @blk_mq_start_stopped_hw_queues(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
