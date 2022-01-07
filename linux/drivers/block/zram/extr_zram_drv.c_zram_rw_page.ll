; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_rw_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_zram_rw_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.zram* }
%struct.zram = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.bio_vec = type { i64, i32, %struct.page* }

@ENOTSUPP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SECTORS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@SECTORS_PER_PAGE = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, %struct.page*, i32)* @zram_rw_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_rw_page(%struct.block_device* %0, i32 %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.zram*, align 8
  %14 = alloca %struct.bio_vec, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = call i64 @PageTransHuge(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %79

21:                                               ; preds = %4
  %22 = load %struct.block_device*, %struct.block_device** %6, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.zram*, %struct.zram** %25, align 8
  store %struct.zram* %26, %struct.zram** %13, align 8
  %27 = load %struct.zram*, %struct.zram** %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @valid_io_request(%struct.zram* %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %21
  %33 = load %struct.zram*, %struct.zram** %13, align 8
  %34 = getelementptr inbounds %struct.zram, %struct.zram* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @atomic64_inc(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %59

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SECTORS_PER_PAGE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SECTORS_PER_PAGE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = load i32, i32* @SECTOR_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 2
  store %struct.page* %49, %struct.page** %50, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.zram*, %struct.zram** %13, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @zram_bvec_rw(%struct.zram* %54, %struct.bio_vec* %14, i32 %55, i32 %56, i32 %57, i32* null)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %39, %32
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %79

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %75 [
    i32 0, label %69
    i32 1, label %74
  ]

69:                                               ; preds = %67
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @op_is_write(i32 %71)
  %73 = call i32 @page_endio(%struct.page* %70, i32 %72, i32 0)
  br label %77

74:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %77

75:                                               ; preds = %67
  %76 = call i32 @WARN_ON(i32 1)
  br label %77

77:                                               ; preds = %75, %74, %69
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %65, %18
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @valid_io_request(%struct.zram*, i32, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @zram_bvec_rw(%struct.zram*, %struct.bio_vec*, i32, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_endio(%struct.page*, i32, i32) #1

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
