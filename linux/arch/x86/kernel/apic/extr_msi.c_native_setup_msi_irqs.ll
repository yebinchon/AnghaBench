; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_msi.c_native_setup_msi_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_msi.c_native_setup_msi_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.pci_dev = type { i32 }
%struct.irq_alloc_info = type { %struct.pci_dev*, i32 }

@X86_IRQ_ALLOC_TYPE_MSI = common dso_local global i32 0, align 4
@msi_default_domain = common dso_local global %struct.irq_domain* null, align 8
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @native_setup_msi_irqs(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.irq_alloc_info, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @init_irq_alloc_info(%struct.irq_alloc_info* %9, i32* null)
  %11 = load i32, i32* @X86_IRQ_ALLOC_TYPE_MSI, align 4
  %12 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %9, i32 0, i32 0
  store %struct.pci_dev* %13, %struct.pci_dev** %14, align 8
  %15 = call %struct.irq_domain* @irq_remapping_get_irq_domain(%struct.irq_alloc_info* %9)
  store %struct.irq_domain* %15, %struct.irq_domain** %8, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %17 = icmp eq %struct.irq_domain* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.irq_domain*, %struct.irq_domain** @msi_default_domain, align 8
  store %struct.irq_domain* %19, %struct.irq_domain** %8, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %22 = icmp eq %struct.irq_domain* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %20
  %27 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @msi_domain_alloc_irqs(%struct.irq_domain* %27, i32* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @init_irq_alloc_info(%struct.irq_alloc_info*, i32*) #1

declare dso_local %struct.irq_domain* @irq_remapping_get_irq_domain(%struct.irq_alloc_info*) #1

declare dso_local i32 @msi_domain_alloc_irqs(%struct.irq_domain*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
