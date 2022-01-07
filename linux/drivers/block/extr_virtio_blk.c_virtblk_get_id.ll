; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.virtio_blk* }
%struct.virtio_blk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.request = type { i32 }

@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@VIRTIO_BLK_ID_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i8*)* @virtblk_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtblk_get_id(%struct.gendisk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.virtio_blk*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load %struct.virtio_blk*, %struct.virtio_blk** %11, align 8
  store %struct.virtio_blk* %12, %struct.virtio_blk** %6, align 8
  %13 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %14 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  store %struct.request_queue* %17, %struct.request_queue** %7, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %19 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %20 = call %struct.request* @blk_get_request(%struct.request_queue* %18, i32 %19, i32 0)
  store %struct.request* %20, %struct.request** %8, align 8
  %21 = load %struct.request*, %struct.request** %8, align 8
  %22 = call i64 @IS_ERR(%struct.request* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.request* %25)
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %29 = load %struct.request*, %struct.request** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @VIRTIO_BLK_ID_BYTES, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @blk_rq_map_kern(%struct.request_queue* %28, %struct.request* %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %52

37:                                               ; preds = %27
  %38 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %39 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.request_queue*, %struct.request_queue** %41, align 8
  %43 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %44 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = call i32 @blk_execute_rq(%struct.request_queue* %42, %struct.TYPE_2__* %45, %struct.request* %46, i32 0)
  %48 = load %struct.request*, %struct.request** %8, align 8
  %49 = call i32 @blk_mq_rq_to_pdu(%struct.request* %48)
  %50 = call i32 @virtblk_result(i32 %49)
  %51 = call i32 @blk_status_to_errno(i32 %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %37, %36
  %53 = load %struct.request*, %struct.request** %8, align 8
  %54 = call i32 @blk_put_request(%struct.request* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(%struct.request_queue*, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, %struct.TYPE_2__*, %struct.request*, i32) #1

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @virtblk_result(i32) #1

declare dso_local i32 @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
