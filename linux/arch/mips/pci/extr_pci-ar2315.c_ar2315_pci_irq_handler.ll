; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.ar2315_pci_ctrl = type { i32 }

@AR2315_PCI_ISR = common dso_local global i32 0, align 4
@AR2315_PCI_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ar2315_pci_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar2315_pci_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.ar2315_pci_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.ar2315_pci_ctrl* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.ar2315_pci_ctrl* %7, %struct.ar2315_pci_ctrl** %3, align 8
  %8 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %9 = load i32, i32* @AR2315_PCI_ISR, align 4
  %10 = call i32 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl* %8, i32 %9)
  %11 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %12 = load i32, i32* @AR2315_PCI_IMR, align 4
  %13 = call i32 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl* %11, i32 %12)
  %14 = and i32 %10, %13
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @__ffs(i32 %21)
  %23 = call i32 @irq_find_mapping(i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @generic_handle_irq(i32 %28)
  br label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @spurious_interrupt()
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.ar2315_pci_ctrl* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl*, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
