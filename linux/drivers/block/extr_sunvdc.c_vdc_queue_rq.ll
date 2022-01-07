; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vdc_port* }
%struct.vdc_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }
%struct.blk_mq_queue_data = type { i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @vdc_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.vdc_port*, align 8
  %7 = alloca %struct.vio_dring_state*, align 8
  %8 = alloca i64, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.vdc_port*, %struct.vdc_port** %12, align 8
  store %struct.vdc_port* %13, %struct.vdc_port** %6, align 8
  %14 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %15 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.vio_dring_state*, %struct.vio_dring_state** %16, align 8
  %18 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %19 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %17, i64 %18
  store %struct.vio_dring_state* %19, %struct.vio_dring_state** %7, align 8
  %20 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %21 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @blk_mq_start_request(i32 %22)
  %24 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %25 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %30 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %36 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %2
  %42 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %43 = call i32 @vdc_tx_dring_avail(%struct.vio_dring_state* %42)
  %44 = icmp slt i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %50 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %55 = call i32 @blk_mq_stop_hw_queue(%struct.blk_mq_hw_ctx* %54)
  %56 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %56, i32* %3, align 4
  br label %77

57:                                               ; preds = %41
  %58 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %59 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @__send_request(i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %65 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %69, i32* %3, align 4
  br label %77

70:                                               ; preds = %57
  %71 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %72 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %63, %48, %34
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @blk_mq_start_request(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vdc_tx_dring_avail(%struct.vio_dring_state*) #1

declare dso_local i32 @blk_mq_stop_hw_queue(%struct.blk_mq_hw_ctx*) #1

declare dso_local i64 @__send_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
