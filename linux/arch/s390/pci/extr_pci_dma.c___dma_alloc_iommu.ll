; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___dma_alloc_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_dma.c___dma_alloc_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i64, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i64, i32)* @__dma_alloc_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__dma_alloc_iommu(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zpci_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @to_pci_dev(%struct.device* %9)
  %11 = call %struct.zpci_dev* @to_zpci(i32 %10)
  store %struct.zpci_dev* %11, %struct.zpci_dev** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i64 @dma_get_seg_boundary(%struct.device* %12)
  %14 = add nsw i64 %13, 1
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i64 @ALIGN(i64 %14, i32 %15)
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %23 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @iommu_area_alloc(i32 %21, i32 %24, i64 %25, i32 %26, i64 %31, i64 %32, i32 0)
  ret i64 %33
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i64 @iommu_area_alloc(i32, i32, i64, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
