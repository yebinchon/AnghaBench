; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_root_bridge_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_root_bridge_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_host_bridge*)* }
%struct.pci_host_bridge = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_root_bridge_prepare(%struct.pci_host_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_host_bridge*, align 8
  store %struct.pci_host_bridge* %0, %struct.pci_host_bridge** %3, align 8
  %4 = load i32 (%struct.pci_host_bridge*)*, i32 (%struct.pci_host_bridge*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %5 = icmp ne i32 (%struct.pci_host_bridge*)* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32 (%struct.pci_host_bridge*)*, i32 (%struct.pci_host_bridge*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %8 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %9 = call i32 %7(%struct.pci_host_bridge* %8)
  store i32 %9, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
