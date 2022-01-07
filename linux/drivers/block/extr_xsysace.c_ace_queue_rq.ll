; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ace_device* }
%struct.ace_device = type { i32, i32, i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @ace_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.ace_device*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ace_device*, %struct.ace_device** %11, align 8
  store %struct.ace_device* %12, %struct.ace_device** %6, align 8
  %13 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %14 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %13, i32 0, i32 0
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %7, align 8
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = call i64 @blk_rq_is_passthrough(%struct.request* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.request*, %struct.request** %7, align 8
  %21 = call i32 @blk_mq_start_request(%struct.request* %20)
  %22 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %25 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.request*, %struct.request** %7, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %30 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %29, i32 0, i32 2
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %33 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  %36 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %35, i32 0, i32 0
  %37 = call i32 @tasklet_schedule(i32* %36)
  %38 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
