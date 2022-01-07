; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_destroy_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_destroy_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@drbd_pp_pool = common dso_local global %struct.page* null, align 8
@drbd_pp_vacant = common dso_local global i32 0, align 4
@drbd_io_bio_set = common dso_local global i32 0, align 4
@drbd_md_io_bio_set = common dso_local global i32 0, align 4
@drbd_md_io_page_pool = common dso_local global i32 0, align 4
@drbd_ee_mempool = common dso_local global i32 0, align 4
@drbd_request_mempool = common dso_local global i32 0, align 4
@drbd_ee_cache = common dso_local global i32* null, align 8
@drbd_request_cache = common dso_local global i32* null, align 8
@drbd_bm_ext_cache = common dso_local global i32* null, align 8
@drbd_al_ext_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @drbd_destroy_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_destroy_mempools() #0 {
  %1 = alloca %struct.page*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load %struct.page*, %struct.page** @drbd_pp_pool, align 8
  %4 = icmp ne %struct.page* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load %struct.page*, %struct.page** @drbd_pp_pool, align 8
  store %struct.page* %6, %struct.page** %1, align 8
  %7 = load %struct.page*, %struct.page** %1, align 8
  %8 = call i64 @page_private(%struct.page* %7)
  %9 = inttoptr i64 %8 to %struct.page*
  store %struct.page* %9, %struct.page** @drbd_pp_pool, align 8
  %10 = load %struct.page*, %struct.page** %1, align 8
  %11 = call i32 @__free_page(%struct.page* %10)
  %12 = load i32, i32* @drbd_pp_vacant, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @drbd_pp_vacant, align 4
  br label %2

14:                                               ; preds = %2
  %15 = call i32 @bioset_exit(i32* @drbd_io_bio_set)
  %16 = call i32 @bioset_exit(i32* @drbd_md_io_bio_set)
  %17 = call i32 @mempool_exit(i32* @drbd_md_io_page_pool)
  %18 = call i32 @mempool_exit(i32* @drbd_ee_mempool)
  %19 = call i32 @mempool_exit(i32* @drbd_request_mempool)
  %20 = load i32*, i32** @drbd_ee_cache, align 8
  %21 = call i32 @kmem_cache_destroy(i32* %20)
  %22 = load i32*, i32** @drbd_request_cache, align 8
  %23 = call i32 @kmem_cache_destroy(i32* %22)
  %24 = load i32*, i32** @drbd_bm_ext_cache, align 8
  %25 = call i32 @kmem_cache_destroy(i32* %24)
  %26 = load i32*, i32** @drbd_al_ext_cache, align 8
  %27 = call i32 @kmem_cache_destroy(i32* %26)
  store i32* null, i32** @drbd_ee_cache, align 8
  store i32* null, i32** @drbd_request_cache, align 8
  store i32* null, i32** @drbd_bm_ext_cache, align 8
  store i32* null, i32** @drbd_al_ext_cache, align 8
  ret void
}

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
