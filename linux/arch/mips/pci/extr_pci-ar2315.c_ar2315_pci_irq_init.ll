; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar2315_pci_ctrl = type { i32, i32, i32 }

@AR2315_PCI_IER = common dso_local global i32 0, align 4
@AR2315_PCI_IER_ENABLE = common dso_local global i32 0, align 4
@AR2315_PCI_IMR = common dso_local global i32 0, align 4
@AR2315_PCI_INT_ABORT = common dso_local global i32 0, align 4
@AR2315_PCI_INT_EXT = common dso_local global i32 0, align 4
@AR2315_PCI_IRQ_EXT = common dso_local global i32 0, align 4
@ar2315_pci_irq_handler = common dso_local global i32 0, align 4
@AR2315_PCI_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar2315_pci_ctrl*)* @ar2315_pci_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar2315_pci_irq_init(%struct.ar2315_pci_ctrl* %0) #0 {
  %2 = alloca %struct.ar2315_pci_ctrl*, align 8
  store %struct.ar2315_pci_ctrl* %0, %struct.ar2315_pci_ctrl** %2, align 8
  %3 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %4 = load i32, i32* @AR2315_PCI_IER, align 4
  %5 = load i32, i32* @AR2315_PCI_IER_ENABLE, align 4
  %6 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %8 = load i32, i32* @AR2315_PCI_IMR, align 4
  %9 = load i32, i32* @AR2315_PCI_INT_ABORT, align 4
  %10 = load i32, i32* @AR2315_PCI_INT_EXT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %7, i32 %8, i32 %11, i32 0)
  %13 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AR2315_PCI_IRQ_EXT, align 4
  %17 = call i32 @irq_create_mapping(i32 %15, i32 %16)
  %18 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %21 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ar2315_pci_irq_handler, align 4
  %24 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %25 = call i32 @irq_set_chained_handler_and_data(i32 %22, i32 %23, %struct.ar2315_pci_ctrl* %24)
  %26 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %27 = load i32, i32* @AR2315_PCI_ISR, align 4
  %28 = load i32, i32* @AR2315_PCI_INT_ABORT, align 4
  %29 = load i32, i32* @AR2315_PCI_INT_EXT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl* %26, i32 %27, i32 %30)
  %32 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %2, align 8
  %33 = load i32, i32* @AR2315_PCI_IER, align 4
  %34 = load i32, i32* @AR2315_PCI_IER_ENABLE, align 4
  %35 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %32, i32 %33, i32 0, i32 %34)
  ret void
}

declare dso_local i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl*, i32, i32, i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.ar2315_pci_ctrl*) #1

declare dso_local i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
