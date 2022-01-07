; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_pbm_info*, %struct.iommu* }
%struct.pci_pbm_info = type { i32 }
%struct.iommu = type { %struct.iommu_map_table, %struct.atu* }
%struct.iommu_map_table = type { i64 }
%struct.atu = type { %struct.iommu_map_table, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_MASK = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i64, i32, i64)* @dma_4v_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_unmap_page(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca %struct.iommu*, align 8
  %13 = alloca %struct.atu*, align 8
  %14 = alloca %struct.iommu_map_table*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @DMA_NONE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = call i64 (...) @printk_ratelimit()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @WARN_ON(i32 1)
  br label %30

30:                                               ; preds = %28, %25
  br label %94

31:                                               ; preds = %5
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.iommu*, %struct.iommu** %34, align 8
  store %struct.iommu* %35, %struct.iommu** %12, align 8
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %38, align 8
  store %struct.pci_pbm_info* %39, %struct.pci_pbm_info** %11, align 8
  %40 = load %struct.iommu*, %struct.iommu** %12, align 8
  %41 = getelementptr inbounds %struct.iommu, %struct.iommu* %40, i32 0, i32 1
  %42 = load %struct.atu*, %struct.atu** %41, align 8
  store %struct.atu* %42, %struct.atu** %13, align 8
  %43 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %44 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %46, %47
  %49 = call i64 @IO_PAGE_ALIGN(i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @IO_PAGE_MASK, align 8
  %52 = and i64 %50, %51
  %53 = sub i64 %49, %52
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %55 = load i64, i64* %15, align 8
  %56 = lshr i64 %55, %54
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* @IO_PAGE_MASK, align 8
  %58 = load i64, i64* %7, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @DMA_BIT_MASK(i32 32)
  %62 = icmp ule i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %31
  store i64 0, i64* %16, align 8
  %64 = load %struct.iommu*, %struct.iommu** %12, align 8
  %65 = getelementptr inbounds %struct.iommu, %struct.iommu* %64, i32 0, i32 0
  store %struct.iommu_map_table* %65, %struct.iommu_map_table** %14, align 8
  br label %74

66:                                               ; preds = %31
  %67 = load %struct.atu*, %struct.atu** %13, align 8
  %68 = getelementptr inbounds %struct.atu, %struct.atu* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %16, align 8
  %72 = load %struct.atu*, %struct.atu** %13, align 8
  %73 = getelementptr inbounds %struct.atu, %struct.atu* %72, i32 0, i32 0
  store %struct.iommu_map_table* %73, %struct.iommu_map_table** %14, align 8
  br label %74

74:                                               ; preds = %66, %63
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.iommu_map_table*, %struct.iommu_map_table** %14, align 8
  %77 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %81 = lshr i64 %79, %80
  store i64 %81, i64* %17, align 8
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @dma_4v_iommu_demap(%struct.device* %82, i32 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load %struct.iommu_map_table*, %struct.iommu_map_table** %14, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* @IOMMU_ERROR_CODE, align 4
  %93 = call i32 @iommu_tbl_range_free(%struct.iommu_map_table* %89, i64 %90, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %74, %30
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_4v_iommu_demap(%struct.device*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.iommu_map_table*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
