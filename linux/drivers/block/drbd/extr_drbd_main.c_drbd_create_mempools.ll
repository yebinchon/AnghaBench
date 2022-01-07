; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_create_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_create_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@DRBD_MAX_BIO_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@drbd_minor_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"drbd_req\00", align 1
@drbd_request_cache = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"drbd_ee\00", align 1
@drbd_ee_cache = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"drbd_bm\00", align 1
@drbd_bm_ext_cache = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"drbd_al\00", align 1
@drbd_al_ext_cache = common dso_local global i32* null, align 8
@drbd_io_bio_set = common dso_local global i32 0, align 4
@BIO_POOL_SIZE = common dso_local global i32 0, align 4
@drbd_md_io_bio_set = common dso_local global i32 0, align 4
@DRBD_MIN_POOL_PAGES = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@drbd_md_io_page_pool = common dso_local global i32 0, align 4
@drbd_request_mempool = common dso_local global i32 0, align 4
@drbd_ee_mempool = common dso_local global i32 0, align 4
@drbd_pp_lock = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@drbd_pp_pool = common dso_local global %struct.page* null, align 8
@drbd_pp_vacant = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @drbd_create_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_create_mempools() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @DRBD_MAX_BIO_SIZE, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = sdiv i32 %6, %7
  %9 = load i32, i32* @drbd_minor_count, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @drbd_request_cache, align 8
  %13 = load i32*, i32** @drbd_request_cache, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %90

16:                                               ; preds = %0
  %17 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @drbd_ee_cache, align 8
  %19 = load i32*, i32** @drbd_ee_cache, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %90

22:                                               ; preds = %16
  %23 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** @drbd_bm_ext_cache, align 8
  %25 = load i32*, i32** @drbd_bm_ext_cache, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %90

28:                                               ; preds = %22
  %29 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** @drbd_al_ext_cache, align 8
  %31 = load i32*, i32** @drbd_al_ext_cache, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %90

34:                                               ; preds = %28
  %35 = load i32, i32* @BIO_POOL_SIZE, align 4
  %36 = call i32 @bioset_init(i32* @drbd_io_bio_set, i32 %35, i32 0, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %90

40:                                               ; preds = %34
  %41 = load i32, i32* @DRBD_MIN_POOL_PAGES, align 4
  %42 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %43 = call i32 @bioset_init(i32* @drbd_md_io_bio_set, i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %90

47:                                               ; preds = %40
  %48 = load i32, i32* @DRBD_MIN_POOL_PAGES, align 4
  %49 = call i32 @mempool_init_page_pool(i32* @drbd_md_io_page_pool, i32 %48, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %90

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32*, i32** @drbd_request_cache, align 8
  %56 = call i32 @mempool_init_slab_pool(i32* @drbd_request_mempool, i32 %54, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %90

60:                                               ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = load i32*, i32** @drbd_ee_cache, align 8
  %63 = call i32 @mempool_init_slab_pool(i32* @drbd_ee_mempool, i32 %61, i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %90

67:                                               ; preds = %60
  %68 = call i32 @spin_lock_init(i32* @drbd_pp_lock)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %85, %67
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32, i32* @GFP_HIGHUSER, align 4
  %75 = call %struct.page* @alloc_page(i32 %74)
  store %struct.page* %75, %struct.page** %2, align 8
  %76 = load %struct.page*, %struct.page** %2, align 8
  %77 = icmp ne %struct.page* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %90

79:                                               ; preds = %73
  %80 = load %struct.page*, %struct.page** %2, align 8
  %81 = load %struct.page*, %struct.page** @drbd_pp_pool, align 8
  %82 = ptrtoint %struct.page* %81 to i64
  %83 = call i32 @set_page_private(%struct.page* %80, i64 %82)
  %84 = load %struct.page*, %struct.page** %2, align 8
  store %struct.page* %84, %struct.page** @drbd_pp_pool, align 8
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32, i32* %3, align 4
  store i32 %89, i32* @drbd_pp_vacant, align 4
  store i32 0, i32* %1, align 4
  br label %94

90:                                               ; preds = %78, %66, %59, %52, %46, %39, %33, %27, %21, %15
  %91 = call i32 (...) @drbd_destroy_mempools()
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %1, align 4
  br label %94

94:                                               ; preds = %90, %88
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mempool_init_page_pool(i32*, i32, i32) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @drbd_destroy_mempools(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
