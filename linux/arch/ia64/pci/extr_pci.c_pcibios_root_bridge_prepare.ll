; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_pcibios_root_bridge_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_pcibios_root_bridge_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_host_bridge = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_controller* }
%struct.pci_controller = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_root_bridge_prepare(%struct.pci_host_bridge* %0) #0 {
  %2 = alloca %struct.pci_host_bridge*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.pci_host_bridge* %0, %struct.pci_host_bridge** %2, align 8
  %4 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %2, align 8
  %5 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %2, align 8
  %11 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  store %struct.pci_controller* %14, %struct.pci_controller** %3, align 8
  %15 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %2, align 8
  %16 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %15, i32 0, i32 0
  %17 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %18 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_4__* %16, i32 %19)
  br label %21

21:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
