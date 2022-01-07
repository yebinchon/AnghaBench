; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_pci.c_pcie_rd_conf_wa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_pci.c_pcie_rd_conf_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@ORION5X_PCIE_WA_VIRT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pcie_rd_conf_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_rd_conf_wa(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @PCI_SLOT(i32 %16)
  %18 = call i64 @pcie_valid_config(i32 %15, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32*, i32** %11, align 8
  store i32 -1, i32* %21, align 4
  %22 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 256
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @ORION5X_PCIE_WA_VIRT_BASE, align 4
  %31 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @orion_pcie_rd_conf_wa(i32 %30, %struct.pci_bus* %31, i32 %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29, %26, %20
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @pcie_valid_config(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @orion_pcie_rd_conf_wa(i32, %struct.pci_bus*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
