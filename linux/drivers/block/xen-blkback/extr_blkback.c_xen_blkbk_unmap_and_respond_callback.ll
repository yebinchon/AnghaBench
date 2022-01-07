; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap_and_respond_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap_and_respond_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntab_unmap_queue_data = type { i32, i32, i64 }
%struct.pending_req = type { i32, i32, i32, %struct.xen_blkif_ring* }
%struct.xen_blkif_ring = type { i32, %struct.xen_blkif* }
%struct.xen_blkif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gntab_unmap_queue_data*)* @xen_blkbk_unmap_and_respond_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_blkbk_unmap_and_respond_callback(i32 %0, %struct.gntab_unmap_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gntab_unmap_queue_data*, align 8
  %5 = alloca %struct.pending_req*, align 8
  %6 = alloca %struct.xen_blkif_ring*, align 8
  %7 = alloca %struct.xen_blkif*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gntab_unmap_queue_data* %1, %struct.gntab_unmap_queue_data** %4, align 8
  %8 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %4, align 8
  %9 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.pending_req*
  store %struct.pending_req* %11, %struct.pending_req** %5, align 8
  %12 = load %struct.pending_req*, %struct.pending_req** %5, align 8
  %13 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %12, i32 0, i32 3
  %14 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %13, align 8
  store %struct.xen_blkif_ring* %14, %struct.xen_blkif_ring** %6, align 8
  %15 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %16 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %15, i32 0, i32 1
  %17 = load %struct.xen_blkif*, %struct.xen_blkif** %16, align 8
  store %struct.xen_blkif* %17, %struct.xen_blkif** %7, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %21 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %4, align 8
  %22 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gntab_unmap_queue_data*, %struct.gntab_unmap_queue_data** %4, align 8
  %25 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @put_free_pages(%struct.xen_blkif_ring* %20, i32 %23, i32 %26)
  %28 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %29 = load %struct.pending_req*, %struct.pending_req** %5, align 8
  %30 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pending_req*, %struct.pending_req** %5, align 8
  %33 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pending_req*, %struct.pending_req** %5, align 8
  %36 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @make_response(%struct.xen_blkif_ring* %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %40 = load %struct.pending_req*, %struct.pending_req** %5, align 8
  %41 = call i32 @free_req(%struct.xen_blkif_ring* %39, %struct.pending_req* %40)
  %42 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %43 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %42, i32 0, i32 0
  %44 = call i64 @atomic_dec_and_test(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %2
  %47 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %48 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %47, i32 0, i32 1
  %49 = call i64 @atomic_read(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %53 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %52, i32 0, i32 0
  %54 = call i32 @complete(i32* %53)
  br label %55

55:                                               ; preds = %51, %46, %2
  %56 = load %struct.xen_blkif*, %struct.xen_blkif** %7, align 8
  %57 = call i32 @xen_blkif_put(%struct.xen_blkif* %56)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_free_pages(%struct.xen_blkif_ring*, i32, i32) #1

declare dso_local i32 @make_response(%struct.xen_blkif_ring*, i32, i32, i32) #1

declare dso_local i32 @free_req(%struct.xen_blkif_ring*, %struct.pending_req*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @xen_blkif_put(%struct.xen_blkif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
