; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ps3disk.c_ps3disk_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ps3disk.c_ps3disk_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.ps3_storage_device* }
%struct.ps3_storage_device = type { i32 }
%struct.blk_mq_queue_data = type { i32 }
%struct.ps3disk_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @ps3disk_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3disk_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_queue_data*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.ps3_storage_device*, align 8
  %7 = alloca %struct.ps3disk_private*, align 8
  %8 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %4, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %5, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %13, align 8
  store %struct.ps3_storage_device* %14, %struct.ps3_storage_device** %6, align 8
  %15 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %6, align 8
  %16 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %15, i32 0, i32 0
  %17 = call %struct.ps3disk_private* @ps3_system_bus_get_drvdata(i32* %16)
  store %struct.ps3disk_private* %17, %struct.ps3disk_private** %7, align 8
  %18 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %19 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @blk_mq_start_request(i32 %20)
  %22 = load %struct.ps3disk_private*, %struct.ps3disk_private** %7, align 8
  %23 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %6, align 8
  %26 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %27 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ps3disk_do_request(%struct.ps3_storage_device* %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ps3disk_private*, %struct.ps3disk_private** %7, align 8
  %31 = getelementptr inbounds %struct.ps3disk_private, %struct.ps3disk_private* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.ps3disk_private* @ps3_system_bus_get_drvdata(i32*) #1

declare dso_local i32 @blk_mq_start_request(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ps3disk_do_request(%struct.ps3_storage_device*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
