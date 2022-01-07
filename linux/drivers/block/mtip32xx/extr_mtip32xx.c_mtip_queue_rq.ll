; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.driver_data* }
%struct.driver_data = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.mtip_cmd = type { i32 }

@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @mtip_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.mtip_cmd*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.driver_data*, %struct.driver_data** %12, align 8
  store %struct.driver_data* %13, %struct.driver_data** %6, align 8
  %14 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %15 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %14, i32 0, i32 0
  %16 = load %struct.request*, %struct.request** %15, align 8
  store %struct.request* %16, %struct.request** %7, align 8
  %17 = load %struct.request*, %struct.request** %7, align 8
  %18 = call %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request* %17)
  store %struct.mtip_cmd* %18, %struct.mtip_cmd** %8, align 8
  %19 = load %struct.request*, %struct.request** %7, align 8
  %20 = call i64 @blk_rq_is_passthrough(%struct.request* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %24 = load %struct.request*, %struct.request** %7, align 8
  %25 = call i32 @mtip_issue_reserved_cmd(%struct.blk_mq_hw_ctx* %23, %struct.request* %24)
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %28 = load %struct.request*, %struct.request** %7, align 8
  %29 = call i32 @mtip_check_unal_depth(%struct.blk_mq_hw_ctx* %27, %struct.request* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %26
  %35 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %36 = call i64 @is_se_active(%struct.driver_data* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %40 = load %struct.request*, %struct.request** %7, align 8
  %41 = call i64 @is_stopped(%struct.driver_data* %39, %struct.request* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = call i32 @blk_mq_start_request(%struct.request* %46)
  %48 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %49 = load %struct.request*, %struct.request** %7, align 8
  %50 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %51 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %52 = call i32 @mtip_hw_submit_io(%struct.driver_data* %48, %struct.request* %49, %struct.mtip_cmd* %50, %struct.blk_mq_hw_ctx* %51)
  %53 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %43, %32, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @mtip_issue_reserved_cmd(%struct.blk_mq_hw_ctx*, %struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtip_check_unal_depth(%struct.blk_mq_hw_ctx*, %struct.request*) #1

declare dso_local i64 @is_se_active(%struct.driver_data*) #1

declare dso_local i64 @is_stopped(%struct.driver_data*, %struct.request*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @mtip_hw_submit_io(%struct.driver_data*, %struct.request*, %struct.mtip_cmd*, %struct.blk_mq_hw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
