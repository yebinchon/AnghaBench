; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_queue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.blkfront_ring_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BLKIF_STATE_CONNECTED = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_OP_SECURE_ERASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.blkfront_ring_info*)* @blkif_queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_queue_request(%struct.request* %0, %struct.blkfront_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.blkfront_ring_info*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.blkfront_ring_info* %1, %struct.blkfront_ring_info** %5, align 8
  %6 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %7 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BLKIF_STATE_CONNECTED, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = call i64 @req_op(%struct.request* %18)
  %20 = load i64, i64* @REQ_OP_DISCARD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i64 @req_op(%struct.request* %23)
  %25 = load i64, i64* @REQ_OP_SECURE_ERASE, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %35 = call i32 @blkif_queue_discard_req(%struct.request* %33, %struct.blkfront_ring_info* %34)
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %39 = call i32 @blkif_queue_rw_req(%struct.request* %37, %struct.blkfront_ring_info* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i32 @blkif_queue_discard_req(%struct.request*, %struct.blkfront_ring_info*) #1

declare dso_local i32 @blkif_queue_rw_req(%struct.request*, %struct.blkfront_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
