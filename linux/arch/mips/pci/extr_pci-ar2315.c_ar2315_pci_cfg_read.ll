; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_cfg_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_cfg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.ar2315_pci_ctrl = type { i32 }

@AR2315_PCI_HOST_SLOT = common dso_local global i64 0, align 8
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @ar2315_pci_cfg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2315_pci_cfg_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ar2315_pci_ctrl*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = call %struct.ar2315_pci_ctrl* @ar2315_pci_bus_to_apc(%struct.pci_bus* %13)
  store %struct.ar2315_pci_ctrl* %14, %struct.ar2315_pci_ctrl** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @PCI_SLOT(i32 %15)
  %17 = load i64, i64* @AR2315_PCI_HOST_SLOT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %20, i32* %6, align 4
  br label %28

21:                                               ; preds = %5
  %22 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @ar2315_pci_cfg_access(%struct.ar2315_pci_ctrl* %22, i32 %23, i32 %24, i32 %25, i32* %26, i32 0)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.ar2315_pci_ctrl* @ar2315_pci_bus_to_apc(%struct.pci_bus*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @ar2315_pci_cfg_access(%struct.ar2315_pci_ctrl*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
