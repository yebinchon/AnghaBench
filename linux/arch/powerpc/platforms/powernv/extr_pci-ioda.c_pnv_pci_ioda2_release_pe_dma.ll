; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_release_pe_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_release_pe_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_ioda_pe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.iommu_table** }
%struct.iommu_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_ioda_pe*)* @pnv_pci_ioda2_release_pe_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda2_release_pe_dma(%struct.pnv_ioda_pe* %0) #0 {
  %2 = alloca %struct.pnv_ioda_pe*, align 8
  %3 = alloca %struct.iommu_table*, align 8
  %4 = alloca i32, align 4
  store %struct.pnv_ioda_pe* %0, %struct.pnv_ioda_pe** %2, align 8
  %5 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %6 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.iommu_table**, %struct.iommu_table*** %7, align 8
  %9 = getelementptr inbounds %struct.iommu_table*, %struct.iommu_table** %8, i64 0
  %10 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  store %struct.iommu_table* %10, %struct.iommu_table** %3, align 8
  %11 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %12 = call i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %18 = call i32 @pnv_pci_ioda2_set_bypass(%struct.pnv_ioda_pe* %17, i32 0)
  %19 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %20 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %26 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @iommu_group_put(i64 %28)
  %30 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %2, align 8
  %31 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @WARN_ON(i64 %33)
  br label %35

35:                                               ; preds = %24, %16
  %36 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %37 = call i32 @iommu_tce_table_put(%struct.iommu_table* %36)
  br label %38

38:                                               ; preds = %35, %15
  ret void
}

declare dso_local i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe*) #1

declare dso_local i32 @pnv_pci_ioda2_set_bypass(%struct.pnv_ioda_pe*, i32) #1

declare dso_local i32 @iommu_group_put(i64) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @iommu_tce_table_put(%struct.iommu_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
