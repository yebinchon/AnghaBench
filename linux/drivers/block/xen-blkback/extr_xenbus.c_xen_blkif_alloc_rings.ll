; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { i32, %struct.xen_blkif_ring* }
%struct.xen_blkif_ring = type { i32, i32, %struct.xen_blkif*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xen_blkbk_unmap_purged_grants = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif*)* @xen_blkif_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_blkif_alloc_rings(%struct.xen_blkif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_blkif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_blkif_ring*, align 8
  store %struct.xen_blkif* %0, %struct.xen_blkif** %3, align 8
  %6 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %7 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xen_blkif_ring* @kcalloc(i32 %8, i32 56, i32 %9)
  %11 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %12 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %11, i32 0, i32 1
  store %struct.xen_blkif_ring* %10, %struct.xen_blkif_ring** %12, align 8
  %13 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %14 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %13, i32 0, i32 1
  %15 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %14, align 8
  %16 = icmp ne %struct.xen_blkif_ring* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %73, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %24 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %21
  %28 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %29 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %28, i32 0, i32 1
  %30 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %30, i64 %32
  store %struct.xen_blkif_ring* %33, %struct.xen_blkif_ring** %5, align 8
  %34 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %35 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %34, i32 0, i32 12
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %38 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %37, i32 0, i32 11
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %41 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %40, i32 0, i32 10
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %44 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %43, i32 0, i32 9
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %47 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %46, i32 0, i32 8
  %48 = load i32, i32* @xen_blkbk_unmap_purged_grants, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %51 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %50, i32 0, i32 7
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %54 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %53, i32 0, i32 6
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %57 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %56, i32 0, i32 5
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %60 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %59, i32 0, i32 4
  %61 = call i32 @init_waitqueue_head(i32* %60)
  %62 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %63 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %62, i32 0, i32 3
  %64 = call i32 @init_waitqueue_head(i32* %63)
  %65 = load %struct.xen_blkif*, %struct.xen_blkif** %3, align 8
  %66 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %67 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %66, i32 0, i32 2
  store %struct.xen_blkif* %65, %struct.xen_blkif** %67, align 8
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %70 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %5, align 8
  %72 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %27
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %21

76:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.xen_blkif_ring* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
