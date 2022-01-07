; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_dispatch_other_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_dispatch_other_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32 }
%struct.blkif_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pending_req = type { i32 }

@BLKIF_RSP_EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif_ring*, %struct.blkif_request*, %struct.pending_req*)* @dispatch_other_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_other_io(%struct.xen_blkif_ring* %0, %struct.blkif_request* %1, %struct.pending_req* %2) #0 {
  %4 = alloca %struct.xen_blkif_ring*, align 8
  %5 = alloca %struct.blkif_request*, align 8
  %6 = alloca %struct.pending_req*, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %4, align 8
  store %struct.blkif_request* %1, %struct.blkif_request** %5, align 8
  store %struct.pending_req* %2, %struct.pending_req** %6, align 8
  %7 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %4, align 8
  %8 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %9 = call i32 @free_req(%struct.xen_blkif_ring* %7, %struct.pending_req* %8)
  %10 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %4, align 8
  %11 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %12 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %17 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BLKIF_RSP_EOPNOTSUPP, align 4
  %20 = call i32 @make_response(%struct.xen_blkif_ring* %10, i32 %15, i32 %18, i32 %19)
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  ret i32 %22
}

declare dso_local i32 @free_req(%struct.xen_blkif_ring*, %struct.pending_req*) #1

declare dso_local i32 @make_response(%struct.xen_blkif_ring*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
