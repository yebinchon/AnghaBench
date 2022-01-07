; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-legacy.c_pcibios_fixup_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-legacy.c_pcibios_fixup_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_PROBE_ONLY = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibios_fixup_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 0
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %8 = call i64 @pci_has_flag(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %22 = call i32 @pci_read_bridge_bases(%struct.pci_bus* %21)
  br label %23

23:                                               ; preds = %20, %13, %10, %1
  ret void
}

declare dso_local i64 @pci_has_flag(i32) #1

declare dso_local i32 @pci_read_bridge_bases(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
