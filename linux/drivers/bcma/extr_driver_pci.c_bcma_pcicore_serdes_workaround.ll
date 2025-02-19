; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_pcicore_serdes_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_pcicore_serdes_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { i32 }

@BCMA_CORE_PCI_MDIODATA_DEV_RX = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_SERDES_RX_CTRL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEV_PLL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_SERDES_PLL_CTRL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_PLL_CTRL_FREQDET_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pci*)* @bcma_pcicore_serdes_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pcicore_serdes_workaround(%struct.bcma_drv_pci* %0) #0 {
  %2 = alloca %struct.bcma_drv_pci*, align 8
  %3 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %2, align 8
  %4 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %5 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEV_RX, align 4
  %6 = load i32, i32* @BCMA_CORE_PCI_SERDES_RX_CTRL, align 4
  %7 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %8 = call i32 @bcma_pcicore_polarity_workaround(%struct.bcma_drv_pci* %7)
  %9 = call i32 @bcma_pcie_mdio_write(%struct.bcma_drv_pci* %4, i32 %5, i32 %6, i32 %8)
  %10 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %11 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEV_PLL, align 4
  %12 = load i32, i32* @BCMA_CORE_PCI_SERDES_PLL_CTRL, align 4
  %13 = call i32 @bcma_pcie_mdio_read(%struct.bcma_drv_pci* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BCMA_CORE_PCI_PLL_CTRL_FREQDET_EN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %2, align 8
  %20 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEV_PLL, align 4
  %21 = load i32, i32* @BCMA_CORE_PCI_SERDES_PLL_CTRL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @BCMA_CORE_PCI_PLL_CTRL_FREQDET_EN, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @bcma_pcie_mdio_write(%struct.bcma_drv_pci* %19, i32 %20, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @bcma_pcie_mdio_write(%struct.bcma_drv_pci*, i32, i32, i32) #1

declare dso_local i32 @bcma_pcicore_polarity_workaround(%struct.bcma_drv_pci*) #1

declare dso_local i32 @bcma_pcie_mdio_read(%struct.bcma_drv_pci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
