; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_pcie_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci.c_bcma_pcie_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BCMA_CORE_PCI_MDIOCTL_PREAM_EN = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIOCTL_DIVISOR_VAL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_CONTROL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEV_ADDR = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_REGADDR_SHF = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF_OLD = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_REGADDR_SHF_OLD = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_START = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_WRITE = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_TA = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_DATA = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pci*, i32, i32, i32)* @bcma_pcie_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pcie_mdio_write(%struct.bcma_drv_pci* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bcma_drv_pci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %12 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_PREAM_EN, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_DIVISOR_VAL, align 4
  %14 = load i32, i32* %10, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %10, align 4
  %16 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %17 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %16, i32 %17, i32 %18)
  %20 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %21 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 10
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  store i32 200, i32* %9, align 4
  %28 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bcma_pcie_mdio_set_phy(%struct.bcma_drv_pci* %28, i32 %29)
  %31 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEV_ADDR, align 4
  %32 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_REGADDR_SHF, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %48

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF_OLD, align 4
  %42 = shl i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_REGADDR_SHF_OLD, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %39, %27
  %49 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_START, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_WRITE, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_TA, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %62 = load i32, i32* @BCMA_CORE_PCI_MDIO_DATA, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %61, i32 %62, i32 %63)
  %65 = call i32 @udelay(i32 10)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %81, %48
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %72 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %73 = call i32 @pcicore_read32(%struct.bcma_drv_pci* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  %80 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %66

84:                                               ; preds = %78, %66
  %85 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %86 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %87 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %85, i32 %86, i32 0)
  ret void
}

declare dso_local i32 @pcicore_write32(%struct.bcma_drv_pci*, i32, i32) #1

declare dso_local i32 @bcma_pcie_mdio_set_phy(%struct.bcma_drv_pci*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pcicore_read32(%struct.bcma_drv_pci*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
