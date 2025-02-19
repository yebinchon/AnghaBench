; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_queue_data = type { i32 }
%struct.nbd_cmd = type { i32, i32 }

@NBD_CMD_REQUEUED = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @nbd_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_queue_data*, align 8
  %5 = alloca %struct.nbd_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %4, align 8
  %7 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %8 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nbd_cmd* @blk_mq_rq_to_pdu(i32 %9)
  store %struct.nbd_cmd* %10, %struct.nbd_cmd** %5, align 8
  %11 = load %struct.nbd_cmd*, %struct.nbd_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @NBD_CMD_REQUEUED, align 4
  %15 = load %struct.nbd_cmd*, %struct.nbd_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %15, i32 0, i32 1
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.nbd_cmd*, %struct.nbd_cmd** %5, align 8
  %19 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nbd_handle_cmd(%struct.nbd_cmd* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.nbd_cmd*, %struct.nbd_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.nbd_cmd* @blk_mq_rq_to_pdu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nbd_handle_cmd(%struct.nbd_cmd*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
