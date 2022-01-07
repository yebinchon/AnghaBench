; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_msi.c_pci_msi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_msi.c_pci_msi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.msi_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@X86_IRQ_ALLOC_TYPE_MSIX = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_TYPE_MSI = common dso_local global i32 0, align 4
@X86_IRQ_ALLOC_CONTIGUOUS_VECTORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_msi_prepare(%struct.irq_domain* %0, %struct.device* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.msi_desc*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.pci_dev* @to_pci_dev(%struct.device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %14 = call %struct.msi_desc* @first_pci_msi_entry(%struct.pci_dev* %13)
  store %struct.msi_desc* %14, %struct.msi_desc** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = call i32 @init_irq_alloc_info(%struct.TYPE_6__* %15, i32* null)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store %struct.pci_dev* %17, %struct.pci_dev** %19, align 8
  %20 = load %struct.msi_desc*, %struct.msi_desc** %10, align 8
  %21 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @X86_IRQ_ALLOC_TYPE_MSIX, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %38

29:                                               ; preds = %4
  %30 = load i32, i32* @X86_IRQ_ALLOC_TYPE_MSI, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @X86_IRQ_ALLOC_CONTIGUOUS_VECTORS, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %29, %25
  ret i32 0
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.msi_desc* @first_pci_msi_entry(%struct.pci_dev*) #1

declare dso_local i32 @init_irq_alloc_info(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
