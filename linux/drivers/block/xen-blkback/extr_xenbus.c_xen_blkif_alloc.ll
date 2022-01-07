; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { i32, i32, i32, i32 }

@MAX_INDIRECT_PAGES = common dso_local global i64 0, align 8
@BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST = common dso_local global i64 0, align 8
@xen_blkif_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xen_blkif_deferred_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_blkif* (i32)* @xen_blkif_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_blkif* @xen_blkif_alloc(i32 %0) #0 {
  %2 = alloca %struct.xen_blkif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_blkif*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @MAX_INDIRECT_PAGES, align 8
  %6 = load i64, i64* @BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST, align 8
  %7 = icmp sgt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load i32, i32* @xen_blkif_cachep, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.xen_blkif* @kmem_cache_zalloc(i32 %10, i32 %11)
  store %struct.xen_blkif* %12, %struct.xen_blkif** %4, align 8
  %13 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %14 = icmp ne %struct.xen_blkif* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.xen_blkif* @ERR_PTR(i32 %17)
  store %struct.xen_blkif* %18, %struct.xen_blkif** %2, align 8
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %22 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %24 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %23, i32 0, i32 2
  %25 = call i32 @atomic_set(i32* %24, i32 1)
  %26 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %27 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %26, i32 0, i32 1
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %30 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %29, i32 0, i32 0
  %31 = load i32, i32* @xen_blkif_deferred_free, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  store %struct.xen_blkif* %33, %struct.xen_blkif** %2, align 8
  br label %34

34:                                               ; preds = %19, %15
  %35 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  ret %struct.xen_blkif* %35
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.xen_blkif* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.xen_blkif* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
