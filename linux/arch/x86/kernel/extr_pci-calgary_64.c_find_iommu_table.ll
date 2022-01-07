; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_find_iommu_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_pci-calgary_64.c_find_iommu_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }
%struct.device = type { i32 }
%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i64, %struct.pci_bus* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_table* (%struct.device*)* @find_iommu_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_table* @find_iommu_table(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.iommu_table*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.pci_dev* @to_pci_dev(%struct.device* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  store %struct.pci_bus* %10, %struct.pci_bus** %4, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = call %struct.iommu_table* @pci_iommu(%struct.pci_bus* %12)
  store %struct.iommu_table* %13, %struct.iommu_table** %5, align 8
  %14 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %15 = icmp ne %struct.iommu_table* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %18 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %32

25:                                               ; preds = %16, %11
  store %struct.iommu_table* null, %struct.iommu_table** %5, align 8
  %26 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 1
  %28 = load %struct.pci_bus*, %struct.pci_bus** %27, align 8
  store %struct.pci_bus* %28, %struct.pci_bus** %4, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = icmp ne %struct.pci_bus* %30, null
  br i1 %31, label %11, label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %34 = icmp ne %struct.iommu_table* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %37 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %40 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br label %43

43:                                               ; preds = %35, %32
  %44 = phi i1 [ false, %32 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  ret %struct.iommu_table* %47
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.iommu_table* @pci_iommu(%struct.pci_bus*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
