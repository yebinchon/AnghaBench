; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_free_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_dma_4v_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_pbm_info*, %struct.iommu* }
%struct.pci_pbm_info = type { i32 }
%struct.iommu = type { %struct.iommu_map_table, %struct.atu* }
%struct.iommu_map_table = type { i64 }
%struct.atu = type { %struct.TYPE_4__*, %struct.iommu_map_table }
%struct.TYPE_4__ = type { i64 }

@IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@IOMMU_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i64, i64)* @dma_4v_free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_4v_free_coherent(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pci_pbm_info*, align 8
  %12 = alloca %struct.iommu*, align 8
  %13 = alloca %struct.atu*, align 8
  %14 = alloca %struct.iommu_map_table*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @IO_PAGE_ALIGN(i64 %20)
  %22 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %16, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.iommu*, %struct.iommu** %26, align 8
  store %struct.iommu* %27, %struct.iommu** %12, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %30, align 8
  store %struct.pci_pbm_info* %31, %struct.pci_pbm_info** %11, align 8
  %32 = load %struct.iommu*, %struct.iommu** %12, align 8
  %33 = getelementptr inbounds %struct.iommu, %struct.iommu* %32, i32 0, i32 1
  %34 = load %struct.atu*, %struct.atu** %33, align 8
  store %struct.atu* %34, %struct.atu** %13, align 8
  %35 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %11, align 8
  %36 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %19, align 4
  %38 = load %struct.iommu*, %struct.iommu** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @iommu_use_atu(%struct.iommu* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %5
  %43 = load %struct.iommu*, %struct.iommu** %12, align 8
  %44 = getelementptr inbounds %struct.iommu, %struct.iommu* %43, i32 0, i32 0
  store %struct.iommu_map_table* %44, %struct.iommu_map_table** %14, align 8
  store i64 0, i64* %18, align 8
  br label %53

45:                                               ; preds = %5
  %46 = load %struct.atu*, %struct.atu** %13, align 8
  %47 = getelementptr inbounds %struct.atu, %struct.atu* %46, i32 0, i32 1
  store %struct.iommu_map_table* %47, %struct.iommu_map_table** %14, align 8
  %48 = load %struct.atu*, %struct.atu** %13, align 8
  %49 = getelementptr inbounds %struct.atu, %struct.atu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %18, align 8
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.iommu_map_table*, %struct.iommu_map_table** %14, align 8
  %56 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  store i64 %60, i64* %17, align 8
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load i32, i32* %19, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call i32 @dma_4v_iommu_demap(%struct.device* %61, i32 %62, i64 %63, i64 %64, i64 %65, i64 %66)
  %68 = load %struct.iommu_map_table*, %struct.iommu_map_table** %14, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i32, i32* @IOMMU_ERROR_CODE, align 4
  %72 = call i32 @iommu_tbl_range_free(%struct.iommu_map_table* %68, i64 %69, i64 %70, i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @get_order(i64 %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp ult i64 %75, 10
  br i1 %76, label %77, label %82

77:                                               ; preds = %53
  %78 = load i8*, i8** %8, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @free_pages(i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %77, %53
  ret void
}

declare dso_local i64 @IO_PAGE_ALIGN(i64) #1

declare dso_local i32 @iommu_use_atu(%struct.iommu*, i64) #1

declare dso_local i32 @dma_4v_iommu_demap(%struct.device*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @iommu_tbl_range_free(%struct.iommu_map_table*, i64, i64, i32) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
