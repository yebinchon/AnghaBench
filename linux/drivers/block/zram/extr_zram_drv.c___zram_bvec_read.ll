; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c___zram_bvec_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c___zram_bvec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i32, i32 }
%struct.page = type { i32 }
%struct.bio = type { i32 }
%struct.bio_vec = type { i32, i64, %struct.page* }
%struct.zcomp_strm = type { i32 }

@ZRAM_WB = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ZRAM_SAME = common dso_local global i32 0, align 4
@ZS_MM_RO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Decompression failed! err=%d, page=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.page*, i32, %struct.bio*, i32)* @__zram_bvec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zram_bvec_read(%struct.zram* %0, %struct.page* %1, i32 %2, %struct.bio* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zram*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.bio_vec, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.zcomp_strm*, align 8
  store %struct.zram* %0, %struct.zram** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.bio* %3, %struct.bio** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.zram*, %struct.zram** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @zram_slot_lock(%struct.zram* %21, i32 %22)
  %24 = load %struct.zram*, %struct.zram** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ZRAM_WB, align 4
  %27 = call i64 @zram_test_flag(%struct.zram* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %5
  %30 = load %struct.zram*, %struct.zram** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @zram_slot_unlock(%struct.zram* %30, i32 %31)
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 2
  store %struct.page* %33, %struct.page** %34, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.zram*, %struct.zram** %7, align 8
  %39 = load %struct.zram*, %struct.zram** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @zram_get_element(%struct.zram* %39, i32 %40)
  %42 = load %struct.bio*, %struct.bio** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @read_from_bdev(%struct.zram* %38, %struct.bio_vec* %17, i64 %41, %struct.bio* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %136

45:                                               ; preds = %5
  %46 = load %struct.zram*, %struct.zram** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @zram_get_handle(%struct.zram* %46, i32 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.zram*, %struct.zram** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ZRAM_SAME, align 4
  %55 = call i64 @zram_test_flag(%struct.zram* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %51, %45
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.zram*, %struct.zram** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @zram_get_element(%struct.zram* %61, i32 %62)
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i64 [ %63, %60 ], [ 0, %64 ]
  store i64 %66, i64* %18, align 8
  %67 = load %struct.page*, %struct.page** %8, align 8
  %68 = call i8* @kmap_atomic(%struct.page* %67)
  store i8* %68, i8** %19, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i64, i64* %18, align 8
  %72 = call i32 @zram_fill_page(i8* %69, i32 %70, i64 %71)
  %73 = load i8*, i8** %19, align 8
  %74 = call i32 @kunmap_atomic(i8* %73)
  %75 = load %struct.zram*, %struct.zram** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @zram_slot_unlock(%struct.zram* %75, i32 %76)
  store i32 0, i32* %6, align 4
  br label %136

78:                                               ; preds = %51
  %79 = load %struct.zram*, %struct.zram** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @zram_get_obj_size(%struct.zram* %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.zram*, %struct.zram** %7, align 8
  %83 = getelementptr inbounds %struct.zram, %struct.zram* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* @ZS_MM_RO, align 4
  %87 = call i8* @zs_map_object(i32 %84, i64 %85, i32 %86)
  store i8* %87, i8** %15, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %78
  %92 = load %struct.page*, %struct.page** %8, align 8
  %93 = call i8* @kmap_atomic(%struct.page* %92)
  store i8* %93, i8** %16, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  %98 = load i8*, i8** %16, align 8
  %99 = call i32 @kunmap_atomic(i8* %98)
  store i32 0, i32* %12, align 4
  br label %118

100:                                              ; preds = %78
  %101 = load %struct.zram*, %struct.zram** %7, align 8
  %102 = getelementptr inbounds %struct.zram, %struct.zram* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.zcomp_strm* @zcomp_stream_get(i32 %103)
  store %struct.zcomp_strm* %104, %struct.zcomp_strm** %20, align 8
  %105 = load %struct.page*, %struct.page** %8, align 8
  %106 = call i8* @kmap_atomic(%struct.page* %105)
  store i8* %106, i8** %16, align 8
  %107 = load %struct.zcomp_strm*, %struct.zcomp_strm** %20, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = call i32 @zcomp_decompress(%struct.zcomp_strm* %107, i8* %108, i32 %109, i8* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @kunmap_atomic(i8* %112)
  %114 = load %struct.zram*, %struct.zram** %7, align 8
  %115 = getelementptr inbounds %struct.zram, %struct.zram* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @zcomp_stream_put(i32 %116)
  br label %118

118:                                              ; preds = %100, %91
  %119 = load %struct.zram*, %struct.zram** %7, align 8
  %120 = getelementptr inbounds %struct.zram, %struct.zram* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @zs_unmap_object(i32 %121, i64 %122)
  %124 = load %struct.zram*, %struct.zram** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @zram_slot_unlock(%struct.zram* %124, i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %118
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %65, %29
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @zram_slot_lock(%struct.zram*, i32) #1

declare dso_local i64 @zram_test_flag(%struct.zram*, i32, i32) #1

declare dso_local i32 @zram_slot_unlock(%struct.zram*, i32) #1

declare dso_local i32 @read_from_bdev(%struct.zram*, %struct.bio_vec*, i64, %struct.bio*, i32) #1

declare dso_local i64 @zram_get_element(%struct.zram*, i32) #1

declare dso_local i64 @zram_get_handle(%struct.zram*, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @zram_fill_page(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @zram_get_obj_size(%struct.zram*, i32) #1

declare dso_local i8* @zs_map_object(i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.zcomp_strm* @zcomp_stream_get(i32) #1

declare dso_local i32 @zcomp_decompress(%struct.zcomp_strm*, i8*, i32, i8*) #1

declare dso_local i32 @zcomp_stream_put(i32) #1

declare dso_local i32 @zs_unmap_object(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
