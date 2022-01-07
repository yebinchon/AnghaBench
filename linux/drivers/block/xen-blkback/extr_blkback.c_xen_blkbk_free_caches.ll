; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_free_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_free_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_blkbk_free_caches(%struct.xen_blkif_ring* %0) #0 {
  %2 = alloca %struct.xen_blkif_ring*, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %2, align 8
  %3 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %4 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %3, i32 0, i32 1
  %5 = call i32 @RB_EMPTY_ROOT(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %9 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %10 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %9, i32 0, i32 1
  %11 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %12 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @free_persistent_gnts(%struct.xen_blkif_ring* %8, i32* %10, i64 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %17 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %16, i32 0, i32 1
  %18 = call i32 @RB_EMPTY_ROOT(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %24 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %26 = call i32 @shrink_free_pagepool(%struct.xen_blkif_ring* %25, i32 0)
  ret void
}

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @free_persistent_gnts(%struct.xen_blkif_ring*, i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @shrink_free_pagepool(%struct.xen_blkif_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
