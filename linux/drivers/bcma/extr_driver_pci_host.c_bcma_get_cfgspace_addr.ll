; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci_host.c_bcma_get_cfgspace_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pci_host.c_bcma_get_cfgspace_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BCMA_CORE_PCI_DLLP_LSREG = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_DLLP_LSREG_LINKUP = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_SBTOPCI1 = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_SBTOPCI_CFG0 = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_CFG_SLOT_SHIFT = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_CFG_FUN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_pci*, i32, i32, i32)* @bcma_get_cfgspace_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_get_cfgspace_addr(%struct.bcma_drv_pci* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bcma_drv_pci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp uge i32 %10, 2
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %14 = load i32, i32* @BCMA_CORE_PCI_DLLP_LSREG, align 4
  %15 = call i32 @bcma_pcie_read(%struct.bcma_drv_pci* %13, i32 %14)
  %16 = load i32, i32* @BCMA_CORE_PCI_DLLP_LSREG_LINKUP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %4
  br label %44

20:                                               ; preds = %12
  %21 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %22 = load i32, i32* @BCMA_CORE_PCI_SBTOPCI1, align 4
  %23 = load i32, i32* @BCMA_CORE_PCI_SBTOPCI_CFG0, align 4
  %24 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %21, i32 %22, i32 %23)
  %25 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %5, align 8
  %26 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BCMA_CORE_PCI_CFG_SLOT_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BCMA_CORE_PCI_CFG_FUN_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, -4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %20, %19
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @bcma_pcie_read(%struct.bcma_drv_pci*, i32) #1

declare dso_local i32 @pcicore_write32(%struct.bcma_drv_pci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
