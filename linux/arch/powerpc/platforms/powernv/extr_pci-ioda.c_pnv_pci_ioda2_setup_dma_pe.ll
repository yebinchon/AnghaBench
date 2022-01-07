; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_setup_dma_pe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_pci_ioda2_setup_dma_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pnv_ioda_pe = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Setting up 32-bit TCE table at 0..%08x\0A\00", align 1
@IOMMU_TABLE_GROUP_MAX_TABLES = common dso_local global i32 0, align 4
@POWERNV_IOMMU_MAX_LEVELS = common dso_local global i32 0, align 4
@PNV_IODA_PE_BUS = common dso_local global i32 0, align 4
@PNV_IODA_PE_BUS_ALL = common dso_local global i32 0, align 4
@pnv_pci_ioda2_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_phb*, %struct.pnv_ioda_pe*)* @pnv_pci_ioda2_setup_dma_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_pci_ioda2_setup_dma_pe(%struct.pnv_phb* %0, %struct.pnv_ioda_pe* %1) #0 {
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca %struct.pnv_ioda_pe*, align 8
  %5 = alloca i64, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  store %struct.pnv_ioda_pe* %1, %struct.pnv_ioda_pe** %4, align 8
  %6 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %7 = call i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %62

10:                                               ; preds = %2
  %11 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %12 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %11, i32 0, i32 0
  store i64 576460752303423488, i64* %12, align 8
  %13 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %14 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %15 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pe_info(%struct.pnv_ioda_pe* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %20 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %23 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %27 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @IOMMU_TABLE_GROUP_MAX_TABLES, align 4
  %30 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %31 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @POWERNV_IOMMU_MAX_LEVELS, align 4
  %34 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %35 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %38 = call i32 @pnv_ioda_parse_tce_sizes(%struct.pnv_phb* %37)
  %39 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %40 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %43 = call i64 @pnv_pci_ioda2_setup_default_config(%struct.pnv_ioda_pe* %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %10
  br label %62

47:                                               ; preds = %10
  %48 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %49 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PNV_IODA_PE_BUS, align 4
  %52 = load i32, i32* @PNV_IODA_PE_BUS_ALL, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %58 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %4, align 8
  %59 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pnv_ioda_setup_bus_dma(%struct.pnv_ioda_pe* %57, i32 %60)
  br label %62

62:                                               ; preds = %9, %46, %56, %47
  ret void
}

declare dso_local i32 @pnv_pci_ioda_pe_dma_weight(%struct.pnv_ioda_pe*) #1

declare dso_local i32 @pe_info(%struct.pnv_ioda_pe*, i8*, i32) #1

declare dso_local i32 @pnv_ioda_parse_tce_sizes(%struct.pnv_phb*) #1

declare dso_local i64 @pnv_pci_ioda2_setup_default_config(%struct.pnv_ioda_pe*) #1

declare dso_local i32 @pnv_ioda_setup_bus_dma(%struct.pnv_ioda_pe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
