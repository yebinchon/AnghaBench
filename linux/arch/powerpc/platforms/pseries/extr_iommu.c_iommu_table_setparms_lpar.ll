; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_table_setparms_lpar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_iommu_table_setparms_lpar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.iommu_table = type { i64, i32, i64, i64, i32, i64, i32, i32 }
%struct.iommu_table_group = type { i64, i64 }

@IOMMU_PAGE_SHIFT_4K = common dso_local global i64 0, align 8
@TCE_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*, %struct.device_node*, %struct.iommu_table*, %struct.iommu_table_group*, i32*)* @iommu_table_setparms_lpar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_table_setparms_lpar(%struct.pci_controller* %0, %struct.device_node* %1, %struct.iommu_table* %2, %struct.iommu_table_group* %3, i32* %4) #0 {
  %6 = alloca %struct.pci_controller*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.iommu_table*, align 8
  %9 = alloca %struct.iommu_table_group*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.iommu_table* %2, %struct.iommu_table** %8, align 8
  store %struct.iommu_table_group* %3, %struct.iommu_table_group** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %16 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %15, i32 0, i32 7
  %17 = call i32 @of_parse_dma_window(%struct.device_node* %13, i32* %14, i32* %16, i64* %11, i64* %12)
  %18 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %19 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %24 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @IOMMU_PAGE_SHIFT_4K, align 8
  %26 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %27 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %29 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %31 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %30, i32 0, i32 1
  store i32 16, i32* %31, align 8
  %32 = load i32, i32* @TCE_PCI, align 4
  %33 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %34 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %37 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = lshr i64 %35, %38
  %40 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %41 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %44 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = lshr i64 %42, %45
  %47 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %48 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.iommu_table_group*, %struct.iommu_table_group** %9, align 8
  %51 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.iommu_table_group*, %struct.iommu_table_group** %9, align 8
  %54 = getelementptr inbounds %struct.iommu_table_group, %struct.iommu_table_group* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  ret void
}

declare dso_local i32 @of_parse_dma_window(%struct.device_node*, i32*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
