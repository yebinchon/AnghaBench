; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_probe_existing_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_probe_existing_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32 }
%struct.iommu_map_table = type { i64, i32, %struct.iommu_pool* }
%struct.iommu_pool = type { i64, i64 }

@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_pbm_info*, %struct.iommu_map_table*)* @probe_existing_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @probe_existing_entries(%struct.pci_pbm_info* %0, %struct.iommu_map_table* %1) #0 {
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca %struct.iommu_map_table*, align 8
  %5 = alloca %struct.iommu_pool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store %struct.iommu_map_table* %1, %struct.iommu_map_table** %4, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %14 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %68, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %24 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %23, i32 0, i32 2
  %25 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %25, i64 %26
  store %struct.iommu_pool* %27, %struct.iommu_pool** %5, align 8
  %28 = load %struct.iommu_pool*, %struct.iommu_pool** %5, align 8
  %29 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %64, %22
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.iommu_pool*, %struct.iommu_pool** %5, align 8
  %34 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ule i64 %32, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @HV_PCI_TSBID(i32 0, i64 %39)
  %41 = call i64 @pci_sun4v_iommu_getmap(i32 %38, i32 %40, i64* %11, i64* %12)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @HV_EOK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @page_in_phys_avail(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @HV_PCI_TSBID(i32 0, i64 %51)
  %53 = call i32 @pci_sun4v_iommu_demap(i32 %50, i32 %52, i32 1)
  br label %62

54:                                               ; preds = %45
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.iommu_map_table*, %struct.iommu_map_table** %4, align 8
  %59 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__set_bit(i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %31

67:                                               ; preds = %31
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %16

71:                                               ; preds = %16
  %72 = load i64, i64* %8, align 8
  ret i64 %72
}

declare dso_local i64 @pci_sun4v_iommu_getmap(i32, i32, i64*, i64*) #1

declare dso_local i32 @HV_PCI_TSBID(i32, i64) #1

declare dso_local i64 @page_in_phys_avail(i64) #1

declare dso_local i32 @pci_sun4v_iommu_demap(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
