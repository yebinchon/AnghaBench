; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__*, i64, %struct.drbd_bm_aio_ctx* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_bm_aio_ctx = type { i32, i32, i32, i32, i32, %struct.drbd_device* }
%struct.drbd_device = type { i32, %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i32* }

@BM_AIO_COPY_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bitmap page idx %u changed during IO!\0A\00", align 1
@drbd_ratelimit_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"IO ERROR %d on bitmap page idx %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"bitmap page idx %u completed\0A\00", align 1
@drbd_md_io_page_pool = common dso_local global i32 0, align 4
@drbd_bm_aio_ctx_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @drbd_bm_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_bm_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.drbd_bm_aio_ctx*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.drbd_bitmap*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 2
  %9 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %8, align 8
  store %struct.drbd_bm_aio_ctx* %9, %struct.drbd_bm_aio_ctx** %3, align 8
  %10 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %10, i32 0, i32 5
  %12 = load %struct.drbd_device*, %struct.drbd_device** %11, align 8
  store %struct.drbd_device* %12, %struct.drbd_device** %4, align 8
  %13 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %14 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %13, i32 0, i32 1
  %15 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %14, align 8
  store %struct.drbd_bitmap* %15, %struct.drbd_bitmap** %5, align 8
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = call i32 @bio_first_page_all(%struct.bio* %16)
  %18 = call i32 @bm_page_to_idx(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BM_AIO_COPY_PAGES, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  %27 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bm_test_page_unchanged(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @drbd_warn(%struct.drbd_device* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %25, %1
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @blk_status_to_errno(i64 %47)
  %49 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  %52 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bm_set_page_io_err(i32 %57)
  %59 = call i64 @__ratelimit(i32* @drbd_ratelimit_state)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @drbd_err(%struct.drbd_device* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %44
  br label %81

69:                                               ; preds = %39
  %70 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  %71 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bm_clear_page_io_err(i32 %76)
  %78 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dynamic_drbd_dbg(%struct.drbd_device* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %69, %68
  %82 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @bm_page_unlock_io(%struct.drbd_device* %82, i32 %83)
  %85 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BM_AIO_COPY_PAGES, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.bio*, %struct.bio** %2, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mempool_free(i32 %97, i32* @drbd_md_io_page_pool)
  br label %99

99:                                               ; preds = %91, %81
  %100 = load %struct.bio*, %struct.bio** %2, align 8
  %101 = call i32 @bio_put(%struct.bio* %100)
  %102 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %102, i32 0, i32 3
  %104 = call i64 @atomic_dec_and_test(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %110 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %109, i32 0, i32 0
  %111 = call i32 @wake_up(i32* %110)
  %112 = load %struct.drbd_bm_aio_ctx*, %struct.drbd_bm_aio_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.drbd_bm_aio_ctx, %struct.drbd_bm_aio_ctx* %112, i32 0, i32 2
  %114 = call i32 @kref_put(i32* %113, i32* @drbd_bm_aio_ctx_destroy)
  br label %115

115:                                              ; preds = %106, %99
  ret void
}

declare dso_local i32 @bm_page_to_idx(i32) #1

declare dso_local i32 @bio_first_page_all(%struct.bio*) #1

declare dso_local i32 @bm_test_page_unchanged(i32) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @blk_status_to_errno(i64) #1

declare dso_local i32 @bm_set_page_io_err(i32) #1

declare dso_local i64 @__ratelimit(i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i64, i32) #1

declare dso_local i32 @bm_clear_page_io_err(i32) #1

declare dso_local i32 @dynamic_drbd_dbg(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @bm_page_unlock_io(%struct.drbd_device*, i32) #1

declare dso_local i32 @mempool_free(i32, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kref_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
