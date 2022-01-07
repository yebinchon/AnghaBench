; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda1_release_pe_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda1_release_pe_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_ioda_pe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.iommu_table** }
%struct.iommu_table = type { i32, i32, i32 }

@OPAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_ioda_pe*)* @pnv_pci_ioda1_release_pe_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda1_release_pe_dma(%struct.pnv_ioda_pe* %0) #0 {
  %2 = alloca %struct.pnv_ioda_pe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  store %struct.pnv_ioda_pe* %0, %struct.pnv_ioda_pe** %2, align 8
  %6 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %7 = call i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %9 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.iommu_table**, %struct.iommu_table*** %10, align 8
  %12 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %11, i64 0
  %13 = load %struct.iommu_table*, %struct.iommu_table** %12, align 8
  store %struct.iommu_table* %13, %struct.iommu_table** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %19 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %18, i32 0, i32 0
  %20 = call i64 @pnv_pci_ioda1_unset_window(%struct.TYPE_2__* %19, i32 0)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @OPAL_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %62

25:                                               ; preds = %17
  %26 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %27 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %28 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %31 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pnv_pci_p7ioc_tce_invalidate(%struct.iommu_table* %26, i32 %29, i32 %32, i32 0)
  %34 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %35 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  %40 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %41 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @iommu_group_put(i64 %43)
  %45 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %46 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @WARN_ON(i64 %48)
  br label %50

50:                                               ; preds = %39, %25
  %51 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %52 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %55 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 3
  %58 = call i32 @get_order(i32 %57)
  %59 = call i32 @free_pages(i32 %53, i32 %58)
  %60 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %61 = call i32 @iommu_tce_table_put(%struct.iommu_table* %60)
  br label %62

62:                                               ; preds = %50, %24, %16
  ret void
}

declare dso_local i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe*) #1

declare dso_local i64 @pnv_pci_ioda1_unset_window(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pnv_pci_p7ioc_tce_invalidate(%struct.iommu_table*, i32, i32, i32) #1

declare dso_local i32 @iommu_group_put(i64) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @iommu_tce_table_put(%struct.iommu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
