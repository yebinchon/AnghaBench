; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_pcie_mdio_set_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_pcie_mdio_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { i32 }

@BCMA_CORE_PCI_MDIODATA_START = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_WRITE = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEV_ADDR = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_BLK_ADDR = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_REGADDR_SHF = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_TA = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_DATA = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_CONTROL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pci*, i32)* @bcma_pcie_mdio_set_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pcie_mdio_set_phy(%struct.bcma_drv_pci* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_START, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_WRITE, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEV_ADDR, align 4
  %12 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_BLK_ADDR, align 4
  %17 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_REGADDR_SHF, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_TA, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %3, align 8
  %29 = load i32, i32* @BCMA_CORE_PCI_MDIO_DATA, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %28, i32 %29, i32 %30)
  %32 = call i32 @udelay(i32 10)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %47, %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 200
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %3, align 8
  %38 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %39 = call i32 @pcicore_read32(%struct.bcma_drv_pci* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %50

45:                                               ; preds = %36
  %46 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %33

50:                                               ; preds = %44, %33
  ret void
}

declare dso_local i32 @pcicore_write32(%struct.bcma_drv_pci*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pcicore_read32(%struct.bcma_drv_pci*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
