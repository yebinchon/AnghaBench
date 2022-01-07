; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_unmap_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@iommu_bus_base = common dso_local global i64 0, align 8
@iommu_size = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@gart_unmapped_entry = common dso_local global i32 0, align 4
@iommu_gatt_base = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, i64)* @gart_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gart_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %61

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @iommu_bus_base, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @iommu_bus_base, align 8
  %28 = load i64, i64* @iommu_size, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %21
  br label %61

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @iommu_bus_base, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = ashr i64 %35, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @iommu_num_pages(i64 %38, i64 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %54, %32
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* @gart_unmapped_entry, align 4
  %48 = load i32*, i32** @iommu_gatt_base, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @free_iommu(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %31, %20
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iommu_num_pages(i64, i64, i32) #1

declare dso_local i32 @free_iommu(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
