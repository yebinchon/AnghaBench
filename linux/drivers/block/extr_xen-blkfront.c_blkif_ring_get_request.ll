; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_ring_get_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_ring_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_ring_info = type { %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32, i32, %struct.request* }
%struct.TYPE_8__ = type { i32 }
%struct.request = type { i32 }
%struct.blkif_request = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@REQ_WAITING = common dso_local global i32 0, align 4
@NO_ASSOCIATED_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blkfront_ring_info*, %struct.request*, %struct.blkif_request**)* @blkif_ring_get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blkif_ring_get_request(%struct.blkfront_ring_info* %0, %struct.request* %1, %struct.blkif_request** %2) #0 {
  %4 = alloca %struct.blkfront_ring_info*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.blkif_request**, align 8
  %7 = alloca i64, align 8
  store %struct.blkfront_ring_info* %0, %struct.blkfront_ring_info** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.blkif_request** %2, %struct.blkif_request*** %6, align 8
  %8 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %9 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %8, i32 0, i32 1
  %10 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %11 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.blkif_request* @RING_GET_REQUEST(%struct.TYPE_8__* %9, i32 %13)
  %15 = load %struct.blkif_request**, %struct.blkif_request*** %6, align 8
  store %struct.blkif_request* %14, %struct.blkif_request** %15, align 8
  %16 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %17 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %22 = call i64 @get_id_from_freelist(%struct.blkfront_ring_info* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %25 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store %struct.request* %23, %struct.request** %29, align 8
  %30 = load i32, i32* @REQ_WAITING, align 4
  %31 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %32 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* @NO_ASSOCIATED_ID, align 4
  %38 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %4, align 8
  %39 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.blkif_request**, %struct.blkif_request*** %6, align 8
  %46 = load %struct.blkif_request*, %struct.blkif_request** %45, align 8
  %47 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %44, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local %struct.blkif_request* @RING_GET_REQUEST(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @get_id_from_freelist(%struct.blkfront_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
