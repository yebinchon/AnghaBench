; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap_and_respond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap_and_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_req = type { %struct.gntab_unmap_queue_data, i32, i32, i32, %struct.grant_page**, %struct.xen_blkif_ring* }
%struct.gntab_unmap_queue_data = type { i32, i32, i32*, i32, i32, %struct.pending_req* }
%struct.grant_page = type { i32 }
%struct.xen_blkif_ring = type { i32 }

@xen_blkbk_unmap_and_respond_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_req*)* @xen_blkbk_unmap_and_respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_blkbk_unmap_and_respond(%struct.pending_req* %0) #0 {
  %2 = alloca %struct.pending_req*, align 8
  %3 = alloca %struct.gntab_unmap_queue_data*, align 8
  %4 = alloca %struct.xen_blkif_ring*, align 8
  %5 = alloca %struct.grant_page**, align 8
  %6 = alloca i32, align 4
  store %struct.pending_req* %0, %struct.pending_req** %2, align 8
  %7 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %8 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %7, i32 0, i32 0
  store %struct.gntab_unmap_queue_data* %8, %struct.gntab_unmap_queue_data** %3, align 8
  %9 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %10 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %9, i32 0, i32 5
  %11 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %10, align 8
  store %struct.xen_blkif_ring* %11, %struct.xen_blkif_ring** %4, align 8
  %12 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %13 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %12, i32 0, i32 4
  %14 = load %struct.grant_page**, %struct.grant_page*** %13, align 8
  store %struct.grant_page** %14, %struct.grant_page*** %5, align 8
  %15 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %4, align 8
  %16 = load %struct.grant_page**, %struct.grant_page*** %5, align 8
  %17 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %18 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %21 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %24 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @xen_blkbk_unmap_prepare(%struct.xen_blkif_ring* %15, %struct.grant_page** %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %28 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %3, align 8
  %29 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %28, i32 0, i32 5
  store %struct.pending_req* %27, %struct.pending_req** %29, align 8
  %30 = load i32, i32* @xen_blkbk_unmap_and_respond_callback, align 4
  %31 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %3, align 8
  %32 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %34 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %3, align 8
  %37 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %3, align 8
  %39 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %41 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %3, align 8
  %44 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %3, align 8
  %47 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pending_req*, %struct.pending_req** %2, align 8
  %49 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %48, i32 0, i32 0
  %50 = call i32 @gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data* %49)
  ret void
}

declare dso_local i32 @xen_blkbk_unmap_prepare(%struct.xen_blkif_ring*, %struct.grant_page**, i32, i32, i32) #1

declare dso_local i32 @gnttab_unmap_refs_async(%struct.gntab_unmap_queue_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
