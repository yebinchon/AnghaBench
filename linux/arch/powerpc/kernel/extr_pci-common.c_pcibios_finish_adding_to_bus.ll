; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_finish_adding_to_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_finish_adding_to_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"PCI: Finishing adding to hotplug bus %04x:%02x\0A\00", align 1
@PCI_PROBE_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibios_finish_adding_to_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %3 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %4 = call i32 @pci_domain_nr(%struct.pci_bus* %3)
  %5 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %6 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %7)
  %9 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %10 = call i32 @pcibios_allocate_bus_resources(%struct.pci_bus* %9)
  %11 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %12 = call i32 @pcibios_claim_one_bus(%struct.pci_bus* %11)
  %13 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %14 = call i32 @pci_has_flag(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pci_assign_unassigned_bridge_resources(i64 %24)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %28 = call i32 @pci_assign_unassigned_bus_resources(%struct.pci_bus* %27)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %32 = call i32 @eeh_add_device_tree_late(%struct.pci_bus* %31)
  %33 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %34 = call i32 @pci_bus_add_devices(%struct.pci_bus* %33)
  %35 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %36 = call i32 @eeh_add_sysfs_files(%struct.pci_bus* %35)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @pcibios_allocate_bus_resources(%struct.pci_bus*) #1

declare dso_local i32 @pcibios_claim_one_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_has_flag(i32) #1

declare dso_local i32 @pci_assign_unassigned_bridge_resources(i64) #1

declare dso_local i32 @pci_assign_unassigned_bus_resources(%struct.pci_bus*) #1

declare dso_local i32 @eeh_add_device_tree_late(%struct.pci_bus*) #1

declare dso_local i32 @pci_bus_add_devices(%struct.pci_bus*) #1

declare dso_local i32 @eeh_add_sysfs_files(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
