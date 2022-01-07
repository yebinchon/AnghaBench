; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_host_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_host_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar2315_pci_ctrl = type { i32 }

@AR2315_PCI_HOST_SLOT = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@AR2315_PCI_HOST_DEVID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@AR2315_PCI_HOST_MBAR0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@AR2315_PCI_HOST_MBAR1 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_2 = common dso_local global i32 0, align 4
@AR2315_PCI_HOST_MBAR2 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_SPECIAL = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_FAST_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar2315_pci_ctrl*)* @ar2315_pci_host_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2315_pci_host_setup(%struct.ar2315_pci_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar2315_pci_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ar2315_pci_ctrl* %0, %struct.ar2315_pci_ctrl** %3, align 8
  %7 = load i32, i32* @AR2315_PCI_HOST_SLOT, align 4
  %8 = call i32 @PCI_DEVFN(i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PCI_VENDOR_ID, align 4
  %12 = call i32 @ar2315_pci_local_cfg_rd(%struct.ar2315_pci_ctrl* %9, i32 %10, i32 %11, i64* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @AR2315_PCI_HOST_DEVID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %16
  %24 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %27 = load i32, i32* @AR2315_PCI_HOST_MBAR0, align 4
  %28 = call i32 @ar2315_pci_local_cfg_wr(%struct.ar2315_pci_ctrl* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %32 = load i32, i32* @AR2315_PCI_HOST_MBAR1, align 4
  %33 = call i32 @ar2315_pci_local_cfg_wr(%struct.ar2315_pci_ctrl* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PCI_BASE_ADDRESS_2, align 4
  %37 = load i32, i32* @AR2315_PCI_HOST_MBAR2, align 4
  %38 = call i32 @ar2315_pci_local_cfg_wr(%struct.ar2315_pci_ctrl* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PCI_COMMAND, align 4
  %42 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %43 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PCI_COMMAND_SPECIAL, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PCI_COMMAND_FAST_BACK, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ar2315_pci_local_cfg_wr(%struct.ar2315_pci_ctrl* %39, i32 %40, i32 %41, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %23, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @ar2315_pci_local_cfg_rd(%struct.ar2315_pci_ctrl*, i32, i32, i64*) #1

declare dso_local i32 @ar2315_pci_local_cfg_wr(%struct.ar2315_pci_ctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
