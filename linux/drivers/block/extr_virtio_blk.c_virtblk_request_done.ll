; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_virtblk_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.virtblk_req = type { i32 }

@RQF_SPECIAL_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @virtblk_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtblk_request_done(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.virtblk_req*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = call %struct.virtblk_req* @blk_mq_rq_to_pdu(%struct.request* %4)
  store %struct.virtblk_req* %5, %struct.virtblk_req** %3, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @page_address(i32 %16)
  %18 = load %struct.request*, %struct.request** %2, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i32 @kfree(i64 %22)
  br label %24

24:                                               ; preds = %12, %1
  %25 = load %struct.request*, %struct.request** %2, align 8
  %26 = call i32 @req_op(%struct.request* %25)
  switch i32 %26, label %30 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %24, %24
  %28 = load %struct.request*, %struct.request** %2, align 8
  %29 = call i32 @virtblk_scsi_request_done(%struct.request* %28)
  br label %30

30:                                               ; preds = %24, %27
  %31 = load %struct.request*, %struct.request** %2, align 8
  %32 = load %struct.virtblk_req*, %struct.virtblk_req** %3, align 8
  %33 = call i32 @virtblk_result(%struct.virtblk_req* %32)
  %34 = call i32 @blk_mq_end_request(%struct.request* %31, i32 %33)
  ret void
}

declare dso_local %struct.virtblk_req* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @virtblk_scsi_request_done(%struct.request*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @virtblk_result(%struct.virtblk_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
