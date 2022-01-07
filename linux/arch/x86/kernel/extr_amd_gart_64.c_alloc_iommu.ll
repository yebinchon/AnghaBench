; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_alloc_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_alloc_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@iommu_bus_base = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@iommu_bitmap_lock = common dso_local global i32 0, align 4
@iommu_gart_bitmap = common dso_local global i32 0, align 4
@iommu_pages = common dso_local global i64 0, align 8
@next_bit = common dso_local global i64 0, align 8
@need_flush = common dso_local global i32 0, align 4
@iommu_fullflush = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i32, i64)* @alloc_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_iommu(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @iommu_bus_base, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @dma_get_seg_boundary(%struct.device* %12)
  %14 = and i32 %11, %13
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i64 @ALIGN(i32 %14, i32 %15)
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dma_get_seg_boundary(%struct.device* %19)
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @ALIGN(i32 %21, i32 %22)
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* @iommu_bitmap_lock, i64 %26)
  %28 = load i32, i32* @iommu_gart_bitmap, align 4
  %29 = load i64, i64* @iommu_pages, align 8
  %30 = load i64, i64* @next_bit, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @iommu_area_alloc(i32 %28, i64 %29, i64 %30, i32 %31, i64 %32, i64 %33, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %3
  store i32 1, i32* @need_flush, align 4
  %39 = load i32, i32* @iommu_gart_bitmap, align 4
  %40 = load i64, i64* @iommu_pages, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @iommu_area_alloc(i32 %39, i64 %40, i64 0, i32 %41, i64 %42, i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %38, %3
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, -1
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  store i64 %53, i64* @next_bit, align 8
  %54 = load i64, i64* @next_bit, align 8
  %55 = load i64, i64* @iommu_pages, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i64 0, i64* @next_bit, align 8
  store i32 1, i32* @need_flush, align 4
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i64, i64* @iommu_fullflush, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* @need_flush, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @iommu_bitmap_lock, i64 %64)
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i32, i64, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
