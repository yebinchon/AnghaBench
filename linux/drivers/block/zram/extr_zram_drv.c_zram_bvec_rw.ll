; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_bvec_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_bvec_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.bio_vec = type { i32, i32 }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.bio_vec*, i32, i32, i32, %struct.bio*)* @zram_bvec_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_bvec_rw(%struct.zram* %0, %struct.bio_vec* %1, i32 %2, i32 %3, i32 %4, %struct.bio* %5) #0 {
  %7 = alloca %struct.zram*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.request_queue*, align 8
  %15 = alloca i32, align 4
  store %struct.zram* %0, %struct.zram** %7, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bio* %5, %struct.bio** %12, align 8
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.zram*, %struct.zram** %7, align 8
  %18 = getelementptr inbounds %struct.zram, %struct.zram* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  store %struct.request_queue* %21, %struct.request_queue** %14, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %25 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SECTOR_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load %struct.zram*, %struct.zram** %7, align 8
  %30 = getelementptr inbounds %struct.zram, %struct.zram* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @generic_start_io_acct(%struct.request_queue* %22, i32 %23, i32 %28, i32* %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @op_is_write(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %6
  %38 = load %struct.zram*, %struct.zram** %7, align 8
  %39 = getelementptr inbounds %struct.zram, %struct.zram* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = call i32 @atomic64_inc(i32* %40)
  %42 = load %struct.zram*, %struct.zram** %7, align 8
  %43 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.bio*, %struct.bio** %12, align 8
  %47 = call i32 @zram_bvec_read(%struct.zram* %42, %struct.bio_vec* %43, i32 %44, i32 %45, %struct.bio* %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %49 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @flush_dcache_page(i32 %50)
  br label %63

52:                                               ; preds = %6
  %53 = load %struct.zram*, %struct.zram** %7, align 8
  %54 = getelementptr inbounds %struct.zram, %struct.zram* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = call i32 @atomic64_inc(i32* %55)
  %57 = load %struct.zram*, %struct.zram** %7, align 8
  %58 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.bio*, %struct.bio** %12, align 8
  %62 = call i32 @zram_bvec_write(%struct.zram* %57, %struct.bio_vec* %58, i32 %59, i32 %60, %struct.bio* %61)
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %52, %37
  %64 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.zram*, %struct.zram** %7, align 8
  %67 = getelementptr inbounds %struct.zram, %struct.zram* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @generic_end_io_acct(%struct.request_queue* %64, i32 %65, i32* %69, i64 %70)
  %72 = load %struct.zram*, %struct.zram** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @zram_slot_lock(%struct.zram* %72, i32 %73)
  %75 = load %struct.zram*, %struct.zram** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @zram_accessed(%struct.zram* %75, i32 %76)
  %78 = load %struct.zram*, %struct.zram** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @zram_slot_unlock(%struct.zram* %78, i32 %79)
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %63
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @op_is_write(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load %struct.zram*, %struct.zram** %7, align 8
  %92 = getelementptr inbounds %struct.zram, %struct.zram* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = call i32 @atomic64_inc(i32* %93)
  br label %100

95:                                               ; preds = %86
  %96 = load %struct.zram*, %struct.zram** %7, align 8
  %97 = getelementptr inbounds %struct.zram, %struct.zram* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @atomic64_inc(i32* %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %63
  %102 = load i32, i32* %15, align 4
  ret i32 %102
}

declare dso_local i32 @generic_start_io_acct(%struct.request_queue*, i32, i32, i32*) #1

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @zram_bvec_read(%struct.zram*, %struct.bio_vec*, i32, i32, %struct.bio*) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @zram_bvec_write(%struct.zram*, %struct.bio_vec*, i32, i32, %struct.bio*) #1

declare dso_local i32 @generic_end_io_acct(%struct.request_queue*, i32, i32*, i64) #1

declare dso_local i32 @zram_slot_lock(%struct.zram*, i32) #1

declare dso_local i32 @zram_accessed(%struct.zram*, i32) #1

declare dso_local i32 @zram_slot_unlock(%struct.zram*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
