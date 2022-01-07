; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_core_pci_power_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_core_pci_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i64, %struct.bcma_drv_pci* }
%struct.bcma_drv_pci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BCMA_HOSTTYPE_PCI = common dso_local global i64 0, align 8
@BCMA_CORE_PCI_MDIO_BLK1 = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_BLK1_MGMT1 = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_BLK1_MGMT3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_pci_power_save(%struct.bcma_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_drv_pci*, align 8
  %6 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BCMA_HOSTTYPE_PCI, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %14, i32 0, i32 1
  %16 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %15, align 8
  %17 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %16, i64 0
  store %struct.bcma_drv_pci* %17, %struct.bcma_drv_pci** %5, align 8
  %18 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %19 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 15
  br i1 %24, label %25, label %47

25:                                               ; preds = %13
  %26 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %27 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 20
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 116, i32 124
  store i32 %37, i32* %6, align 4
  %38 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %39 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1, align 4
  %40 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1_MGMT1, align 4
  %41 = call i32 @bcma_pcie_mdio_writeread(%struct.bcma_drv_pci* %38, i32 %39, i32 %40, i32 32612)
  %42 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %43 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1, align 4
  %44 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1_MGMT3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @bcma_pcie_mdio_writeread(%struct.bcma_drv_pci* %42, i32 %43, i32 %44, i32 %45)
  br label %78

47:                                               ; preds = %25, %13
  %48 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %49 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 21
  br i1 %54, label %55, label %77

55:                                               ; preds = %47
  %56 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %57 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 22
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 117, i32 125
  store i32 %67, i32* %6, align 4
  %68 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %69 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1, align 4
  %70 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1_MGMT1, align 4
  %71 = call i32 @bcma_pcie_mdio_writeread(%struct.bcma_drv_pci* %68, i32 %69, i32 %70, i32 32357)
  %72 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %73 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1, align 4
  %74 = load i32, i32* @BCMA_CORE_PCI_MDIO_BLK1_MGMT3, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @bcma_pcie_mdio_writeread(%struct.bcma_drv_pci* %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %63, %55, %47
  br label %78

78:                                               ; preds = %12, %77, %33
  ret void
}

declare dso_local i32 @bcma_pcie_mdio_writeread(%struct.bcma_drv_pci*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
