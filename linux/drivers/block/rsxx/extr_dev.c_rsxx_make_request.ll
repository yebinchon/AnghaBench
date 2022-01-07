; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dev.c_rsxx_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dev.c_rsxx_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.rsxx_cardinfo* }
%struct.rsxx_cardinfo = type { i32, i32, i32 }
%struct.bio = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.rsxx_bio_meta = type { i32, i32, i32, %struct.bio* }

@BLK_STS_IOERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"size zero BIO!\0A\00", align 1
@bio_meta_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"BIO[%c]: meta: %p addr8: x%llx size: %d\0A\00", align 1
@bio_dma_done_cb = common dso_local global i32 0, align 4
@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @rsxx_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.rsxx_cardinfo*, align 8
  %7 = alloca %struct.rsxx_bio_meta*, align 8
  %8 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  store %struct.rsxx_cardinfo* %11, %struct.rsxx_cardinfo** %6, align 8
  %12 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = call i32 @blk_queue_split(%struct.request_queue* %13, %struct.bio** %5)
  %15 = call i32 (...) @might_sleep()
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %17 = icmp ne %struct.rsxx_cardinfo* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i64 @bio_end_sector(%struct.bio* %20)
  %22 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %23 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @get_capacity(i32 %24)
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %119

28:                                               ; preds = %19
  %29 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %30 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %119

35:                                               ; preds = %28
  %36 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %37 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %119

42:                                               ; preds = %35
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %50 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %49)
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %119

52:                                               ; preds = %42
  %53 = load i32, i32* @bio_meta_pool, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.rsxx_bio_meta* @kmem_cache_alloc(i32 %53, i32 %54)
  store %struct.rsxx_bio_meta* %55, %struct.rsxx_bio_meta** %7, align 8
  %56 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %57 = icmp ne %struct.rsxx_bio_meta* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %59, i64* %8, align 8
  br label %119

60:                                               ; preds = %52
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %63 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %62, i32 0, i32 3
  store %struct.bio* %61, %struct.bio** %63, align 8
  %64 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %65 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %64, i32 0, i32 2
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %68 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %67, i32 0, i32 0
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load i32, i32* @jiffies, align 4
  %71 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %72 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %74 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %60
  %79 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %80 = load %struct.bio*, %struct.bio** %5, align 8
  %81 = call i32 @disk_stats_start(%struct.rsxx_cardinfo* %79, %struct.bio* %80)
  br label %82

82:                                               ; preds = %78, %60
  %83 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %84 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %83)
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = call i64 @bio_data_dir(%struct.bio* %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 87, i32 82
  %90 = trunc i32 %89 to i8
  %91 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %92 = load %struct.bio*, %struct.bio** %5, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = shl i32 %96, 9
  %98 = load %struct.bio*, %struct.bio** %5, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8 signext %90, %struct.rsxx_bio_meta* %91, i32 %97, i64 %101)
  %103 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %104 = load %struct.bio*, %struct.bio** %5, align 8
  %105 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %106 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %105, i32 0, i32 0
  %107 = load i32, i32* @bio_dma_done_cb, align 4
  %108 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %109 = call i64 @rsxx_dma_queue_bio(%struct.rsxx_cardinfo* %103, %struct.bio* %104, i32* %106, i32 %107, %struct.rsxx_bio_meta* %108)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %82
  br label %115

113:                                              ; preds = %82
  %114 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %114, i32* %3, align 4
  br label %130

115:                                              ; preds = %112
  %116 = load i32, i32* @bio_meta_pool, align 4
  %117 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %118 = call i32 @kmem_cache_free(i32 %116, %struct.rsxx_bio_meta* %117)
  br label %119

119:                                              ; preds = %115, %58, %48, %41, %34, %27, %18
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.bio*, %struct.bio** %5, align 8
  %125 = getelementptr inbounds %struct.bio, %struct.bio* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %119
  %127 = load %struct.bio*, %struct.bio** %5, align 8
  %128 = call i32 @bio_endio(%struct.bio* %127)
  %129 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %113
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @blk_queue_split(%struct.request_queue*, %struct.bio**) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local %struct.rsxx_bio_meta* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @disk_stats_start(%struct.rsxx_cardinfo*, %struct.bio*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, %struct.rsxx_bio_meta*, i32, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @rsxx_dma_queue_bio(%struct.rsxx_cardinfo*, %struct.bio*, i32*, i32, %struct.rsxx_bio_meta*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rsxx_bio_meta*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
