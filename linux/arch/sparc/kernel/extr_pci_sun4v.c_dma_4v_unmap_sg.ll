; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_pbm_info*, %struct.iommu* }
%struct.pci_pbm_info = type { i32 }
%struct.iommu = type { %struct.iommu_map_table, %struct.atu* }
%struct.iommu_map_table = type { i64 }
%struct.atu = type { %struct.iommu_map_table, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.scatterlist = type { i64, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IO_PAGE_SIZE = common dso_local global i32 0, align 4
@IOMMU_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, i64)* @dma_4v_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.iommu*, align 8
  %14 = alloca %struct.atu*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.iommu_map_table*, align 8
  %23 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @DMA_NONE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.iommu*, %struct.iommu** %31, align 8
  store %struct.iommu* %32, %struct.iommu** %13, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %35, align 8
  store %struct.pci_pbm_info* %36, %struct.pci_pbm_info** %11, align 8
  %37 = load %struct.iommu*, %struct.iommu** %13, align 8
  %38 = getelementptr inbounds %struct.iommu, %struct.iommu* %37, i32 0, i32 1
  %39 = load %struct.atu*, %struct.atu** %38, align 8
  store %struct.atu* %39, %struct.atu** %14, align 8
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %41 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i64, i64* %15, align 8
  %44 = call i32 @local_irq_save(i64 %43)
  %45 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %45, %struct.scatterlist** %12, align 8
  br label %46

46:                                               ; preds = %80, %5
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %102

50:                                               ; preds = %46
  %51 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %19, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %20, align 4
  %57 = load i64, i64* @IO_PAGE_SHIFT, align 8
  store i64 %57, i64* %23, align 8
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %102

61:                                               ; preds = %50
  %62 = load i64, i64* %19, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @IO_PAGE_SIZE, align 4
  %65 = call i64 @iommu_num_pages(i64 %62, i32 %63, i32 %64)
  store i64 %65, i64* %21, align 8
  %66 = load i64, i64* %19, align 8
  %67 = call i64 @DMA_BIT_MASK(i32 32)
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  store i64 0, i64* %17, align 8
  %70 = load %struct.iommu*, %struct.iommu** %13, align 8
  %71 = getelementptr inbounds %struct.iommu, %struct.iommu* %70, i32 0, i32 0
  store %struct.iommu_map_table* %71, %struct.iommu_map_table** %22, align 8
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.atu*, %struct.atu** %14, align 8
  %74 = getelementptr inbounds %struct.atu, %struct.atu* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %17, align 8
  %78 = load %struct.atu*, %struct.atu** %14, align 8
  %79 = getelementptr inbounds %struct.atu, %struct.atu* %78, i32 0, i32 0
  store %struct.iommu_map_table* %79, %struct.iommu_map_table** %22, align 8
  br label %80

80:                                               ; preds = %72, %69
  %81 = load i64, i64* %19, align 8
  %82 = load %struct.iommu_map_table*, %struct.iommu_map_table** %22, align 8
  %83 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load i64, i64* %23, align 8
  %87 = ashr i64 %85, %86
  store i64 %87, i64* %16, align 8
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load i32, i32* %18, align 4
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %21, align 8
  %94 = call i32 @dma_4v_iommu_demap(%struct.device* %88, i32 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load %struct.iommu_map_table*, %struct.iommu_map_table** %22, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i32, i32* @IOMMU_ERROR_CODE, align 4
  %99 = call i32 @iommu_tbl_range_free(%struct.iommu_map_table* %95, i64 %96, i64 %97, i32 %98)
  %100 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %101 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %100)
  store %struct.scatterlist* %101, %struct.scatterlist** %12, align 8
  br label %46

102:                                              ; preds = %60, %46
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @local_irq_restore(i64 %103)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @iommu_num_pages(i64, i32, i32) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_4v_iommu_demap(%struct.device*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.iommu_map_table*, i64, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
