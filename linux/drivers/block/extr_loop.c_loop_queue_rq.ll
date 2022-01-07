; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.loop_device* }
%struct.loop_device = type { i64, i32, i32 }
%struct.loop_cmd = type { i32, i32, i32* }

@Lo_bound = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @loop_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.loop_cmd*, align 8
  %8 = alloca %struct.loop_device*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %9 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %10 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %9, i32 0, i32 0
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %6, align 8
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = call %struct.loop_cmd* @blk_mq_rq_to_pdu(%struct.request* %12)
  store %struct.loop_cmd* %13, %struct.loop_cmd** %7, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.loop_device*, %struct.loop_device** %17, align 8
  store %struct.loop_device* %18, %struct.loop_device** %8, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i32 @blk_mq_start_request(%struct.request* %19)
  %21 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %22 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @Lo_bound, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = call i32 @req_op(%struct.request* %29)
  switch i32 %30, label %34 [
    i32 129, label %31
    i32 130, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %28, %28, %28
  %32 = load %struct.loop_cmd*, %struct.loop_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %36 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.loop_cmd*, %struct.loop_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.loop_cmd*, %struct.loop_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %44 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %43, i32 0, i32 2
  %45 = load %struct.loop_cmd*, %struct.loop_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %45, i32 0, i32 1
  %47 = call i32 @kthread_queue_work(i32* %44, i32* %46)
  %48 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %40, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.loop_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @kthread_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
