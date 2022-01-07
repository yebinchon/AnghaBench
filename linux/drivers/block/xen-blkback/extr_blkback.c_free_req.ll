; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_free_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_free_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32, i32, i32 }
%struct.pending_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif_ring*, %struct.pending_req*)* @free_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_req(%struct.xen_blkif_ring* %0, %struct.pending_req* %1) #0 {
  %3 = alloca %struct.xen_blkif_ring*, align 8
  %4 = alloca %struct.pending_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %3, align 8
  store %struct.pending_req* %1, %struct.pending_req** %4, align 8
  %7 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %8 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %12 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %11, i32 0, i32 2
  %13 = call i32 @list_empty(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pending_req*, %struct.pending_req** %4, align 8
  %15 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %14, i32 0, i32 0
  %16 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %17 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %16, i32 0, i32 2
  %18 = call i32 @list_add(i32* %15, i32* %17)
  %19 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %20 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %27 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
