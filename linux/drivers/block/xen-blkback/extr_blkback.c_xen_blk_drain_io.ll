; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blk_drain_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blk_drain_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32, %struct.xen_blkif* }
%struct.xen_blkif = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif_ring*)* @xen_blk_drain_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_blk_drain_io(%struct.xen_blkif_ring* %0) #0 {
  %2 = alloca %struct.xen_blkif_ring*, align 8
  %3 = alloca %struct.xen_blkif*, align 8
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %2, align 8
  %4 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %5 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %4, i32 0, i32 1
  %6 = load %struct.xen_blkif*, %struct.xen_blkif** %5, align 8
  store %struct.xen_blkif* %6, %struct.xen_blkif** %3, align 8
  %7 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %8 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %7, i32 0, i32 0
  %9 = call i32 @atomic_set(i32* %8, i32 1)
  br label %10

10:                                               ; preds = %27, %1
  %11 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %2, align 8
  %12 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %18 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %17, i32 0, i32 1
  %19 = load i32, i32* @HZ, align 4
  %20 = call i32 @wait_for_completion_interruptible_timeout(i32* %18, i32 %19)
  %21 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %22 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %31

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = call i32 (...) @kthread_should_stop()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %10, label %31

31:                                               ; preds = %27, %25, %15
  %32 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %33 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %32, i32 0, i32 0
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
