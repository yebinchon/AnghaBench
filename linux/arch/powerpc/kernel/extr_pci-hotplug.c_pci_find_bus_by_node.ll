; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-hotplug.c_pci_find_bus_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-hotplug.c_pci_find_bus_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.device_node = type { i32 }
%struct.pci_dn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_bus* @pci_find_bus_by_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_dn*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %5)
  store %struct.pci_dn* %6, %struct.pci_dn** %4, align 8
  %7 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %8 = icmp ne %struct.pci_dn* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %9, %1
  store %struct.pci_bus* null, %struct.pci_bus** %2, align 8
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = call %struct.pci_bus* @find_bus_among_children(i32 %27, %struct.device_node* %28)
  store %struct.pci_bus* %29, %struct.pci_bus** %2, align 8
  br label %30

30:                                               ; preds = %22, %21
  %31 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  ret %struct.pci_bus* %31
}

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local %struct.pci_bus* @find_bus_among_children(i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
