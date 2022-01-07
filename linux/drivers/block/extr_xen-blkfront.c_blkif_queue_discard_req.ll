; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_queue_discard_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_queue_discard_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.blkfront_ring_info = type { %struct.TYPE_6__*, %struct.blkfront_info* }
%struct.TYPE_6__ = type { %struct.blkif_request }
%struct.blkif_request = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.blkfront_info = type { i64 }

@BLKIF_OP_DISCARD = common dso_local global i32 0, align 4
@REQ_OP_SECURE_ERASE = common dso_local global i64 0, align 8
@BLKIF_DISCARD_SECURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.blkfront_ring_info*)* @blkif_queue_discard_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_queue_discard_req(%struct.request* %0, %struct.blkfront_ring_info* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.blkfront_ring_info*, align 8
  %5 = alloca %struct.blkfront_info*, align 8
  %6 = alloca %struct.blkif_request*, align 8
  %7 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.blkfront_ring_info* %1, %struct.blkfront_ring_info** %4, align 8
  %8 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %9 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %8, i32 0, i32 1
  %10 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  store %struct.blkfront_info* %10, %struct.blkfront_info** %5, align 8
  %11 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = call i64 @blkif_ring_get_request(%struct.blkfront_ring_info* %11, %struct.request* %12, %struct.blkif_request** %6)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @BLKIF_OP_DISCARD, align 4
  %15 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %16 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = call i32 @blk_rq_sectors(%struct.request* %17)
  %19 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %20 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %18, i32* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %25 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = call i64 @blk_rq_pos(%struct.request* %28)
  %30 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %31 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i64 %29, i64* %33, align 8
  %34 = load %struct.request*, %struct.request** %3, align 8
  %35 = call i64 @req_op(%struct.request* %34)
  %36 = load i64, i64* @REQ_OP_SECURE_ERASE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %40 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i64, i64* @BLKIF_DISCARD_SECURE, align 8
  %45 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %46 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i64 %44, i64* %48, align 8
  br label %54

49:                                               ; preds = %38, %2
  %50 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %51 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %56 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.blkif_request*, %struct.blkif_request** %6, align 8
  %62 = bitcast %struct.blkif_request* %60 to i8*
  %63 = bitcast %struct.blkif_request* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 40, i1 false)
  ret i32 0
}

declare dso_local i64 @blkif_ring_get_request(%struct.blkfront_ring_info*, %struct.request*, %struct.blkif_request**) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @req_op(%struct.request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
