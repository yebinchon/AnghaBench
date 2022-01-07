; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_mm_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_mm_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.zs_pool_stats = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%8llu %8llu %8llu %8lu %8ld %8llu %8lu %8llu\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mm_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_stat_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.zram*, align 8
  %8 = alloca %struct.zs_pool_stats, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.zram* @dev_to_zram(%struct.device* %13)
  store %struct.zram* %14, %struct.zram** %7, align 8
  store i64 0, i64* %10, align 8
  %15 = call i32 @memset(%struct.zs_pool_stats* %8, i32 0, i32 4)
  %16 = load %struct.zram*, %struct.zram** %7, align 8
  %17 = getelementptr inbounds %struct.zram, %struct.zram* %16, i32 0, i32 1
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.zram*, %struct.zram** %7, align 8
  %20 = call i64 @init_done(%struct.zram* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.zram*, %struct.zram** %7, align 8
  %24 = getelementptr inbounds %struct.zram, %struct.zram* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @zs_get_total_pages(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.zram*, %struct.zram** %7, align 8
  %28 = getelementptr inbounds %struct.zram, %struct.zram* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @zs_pool_stats(i32 %29, %struct.zs_pool_stats* %8)
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.zram*, %struct.zram** %7, align 8
  %33 = getelementptr inbounds %struct.zram, %struct.zram* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = call i64 @atomic64_read(i32* %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.zram*, %struct.zram** %7, align 8
  %37 = getelementptr inbounds %struct.zram, %struct.zram* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = call i64 @atomic_long_read(i32* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load %struct.zram*, %struct.zram** %7, align 8
  %46 = getelementptr inbounds %struct.zram, %struct.zram* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = call i64 @atomic64_read(i32* %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = load %struct.zram*, %struct.zram** %7, align 8
  %53 = getelementptr inbounds %struct.zram, %struct.zram* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PAGE_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = load %struct.zram*, %struct.zram** %7, align 8
  %61 = getelementptr inbounds %struct.zram, %struct.zram* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i64 @atomic64_read(i32* %62)
  %64 = getelementptr inbounds %struct.zs_pool_stats, %struct.zs_pool_stats* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.zram*, %struct.zram** %7, align 8
  %67 = getelementptr inbounds %struct.zram, %struct.zram* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i64 @atomic64_read(i32* %68)
  %70 = call i32 @scnprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %48, i64 %51, i64 %56, i64 %59, i64 %63, i32 %65, i64 %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.zram*, %struct.zram** %7, align 8
  %72 = getelementptr inbounds %struct.zram, %struct.zram* %71, i32 0, i32 1
  %73 = call i32 @up_read(i32* %72)
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @memset(%struct.zs_pool_stats*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @init_done(%struct.zram*) #1

declare dso_local i64 @zs_get_total_pages(i32) #1

declare dso_local i32 @zs_pool_stats(i32, %struct.zs_pool_stats*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
