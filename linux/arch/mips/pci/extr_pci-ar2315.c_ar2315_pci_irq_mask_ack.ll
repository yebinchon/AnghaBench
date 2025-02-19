; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ar2315_pci_ctrl = type { i32 }

@AR2315_PCI_IMR = common dso_local global i32 0, align 4
@AR2315_PCI_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ar2315_pci_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar2315_pci_irq_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ar2315_pci_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.ar2315_pci_ctrl* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.ar2315_pci_ctrl* %6, %struct.ar2315_pci_ctrl** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BIT(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %12 = load i32, i32* @AR2315_PCI_IMR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %16 = load i32, i32* @AR2315_PCI_ISR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local %struct.ar2315_pci_ctrl* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl*, i32, i32, i32) #1

declare dso_local i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
