; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_table_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_table* @pnv_pci_table_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_table*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iommu_table* @kzalloc_node(i32 8, i32 %5, i32 %6)
  store %struct.iommu_table* %7, %struct.iommu_table** %4, align 8
  %8 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %9 = icmp ne %struct.iommu_table* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.iommu_table* null, %struct.iommu_table** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %13 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD_RCU(i32* %13)
  %15 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %16 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %15, i32 0, i32 0
  %17 = call i32 @kref_init(i32* %16)
  %18 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  store %struct.iommu_table* %18, %struct.iommu_table** %2, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  ret %struct.iommu_table* %20
}

declare dso_local %struct.iommu_table* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD_RCU(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
