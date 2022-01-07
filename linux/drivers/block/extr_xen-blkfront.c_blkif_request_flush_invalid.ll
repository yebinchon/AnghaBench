; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_request_flush_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_request_flush_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.blkfront_info = type { i32, i32 }

@REQ_OP_FLUSH = common dso_local global i64 0, align 8
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.blkfront_info*)* @blkif_request_flush_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_request_flush_invalid(%struct.request* %0, %struct.blkfront_info* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.blkfront_info*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.blkfront_info* %1, %struct.blkfront_info** %4, align 8
  %5 = load %struct.request*, %struct.request** %3, align 8
  %6 = call i64 @blk_rq_is_passthrough(%struct.request* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call i64 @req_op(%struct.request* %9)
  %11 = load i64, i64* @REQ_OP_FLUSH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %15 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13, %8
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REQ_FUA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %27 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i1 [ false, %18 ], [ %30, %25 ]
  br label %33

33:                                               ; preds = %31, %13, %2
  %34 = phi i1 [ true, %13 ], [ true, %2 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i64 @req_op(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
