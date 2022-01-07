; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pci_dlpar.c_init_phb_dynamic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pci_dlpar.c_init_phb_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32, i32 }
%struct.device_node = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"PCI: Initializing new hotplug PHB %pOF\0A\00", align 1
@pseries_pci_controller_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_controller* @init_phb_dynamic(%struct.device_node* %0) #0 {
  %2 = alloca %struct.pci_controller*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.device_node* %5)
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call %struct.pci_controller* @pcibios_alloc_controller(%struct.device_node* %7)
  store %struct.pci_controller* %8, %struct.pci_controller** %4, align 8
  %9 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %10 = icmp ne %struct.pci_controller* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.pci_controller* null, %struct.pci_controller** %2, align 8
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %14 = call i32 @rtas_setup_phb(%struct.pci_controller* %13)
  %15 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @pci_process_bridge_OF_ranges(%struct.pci_controller* %15, %struct.device_node* %16, i32 0)
  %18 = load i32, i32* @pseries_pci_controller_ops, align 4
  %19 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %20 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %22 = call i32 @pci_devs_phb_init_dynamic(%struct.pci_controller* %21)
  %23 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %24 = call i32 @eeh_dev_phb_init_dynamic(%struct.pci_controller* %23)
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %12
  %30 = load %struct.device_node*, %struct.device_node** %3, align 8
  %31 = call i32 @PCI_DN(%struct.device_node* %30)
  %32 = call i32 @eeh_add_device_tree_early(i32 %31)
  br label %33

33:                                               ; preds = %29, %12
  %34 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %35 = call i32 @pcibios_scan_phb(%struct.pci_controller* %34)
  %36 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pcibios_finish_adding_to_bus(i32 %38)
  %40 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  store %struct.pci_controller* %40, %struct.pci_controller** %2, align 8
  br label %41

41:                                               ; preds = %33, %11
  %42 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  ret %struct.pci_controller* %42
}

declare dso_local i32 @pr_debug(i8*, %struct.device_node*) #1

declare dso_local %struct.pci_controller* @pcibios_alloc_controller(%struct.device_node*) #1

declare dso_local i32 @rtas_setup_phb(%struct.pci_controller*) #1

declare dso_local i32 @pci_process_bridge_OF_ranges(%struct.pci_controller*, %struct.device_node*, i32) #1

declare dso_local i32 @pci_devs_phb_init_dynamic(%struct.pci_controller*) #1

declare dso_local i32 @eeh_dev_phb_init_dynamic(%struct.pci_controller*) #1

declare dso_local i32 @eeh_add_device_tree_early(i32) #1

declare dso_local i32 @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @pcibios_scan_phb(%struct.pci_controller*) #1

declare dso_local i32 @pcibios_finish_adding_to_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
