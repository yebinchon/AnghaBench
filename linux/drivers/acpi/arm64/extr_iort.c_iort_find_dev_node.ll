; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_find_dev_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_find_dev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_iort_node = type { i32 }
%struct.device = type { i32 }
%struct.pci_bus = type { %struct.device, %struct.pci_bus* }
%struct.TYPE_2__ = type { %struct.pci_bus* }

@ACPI_IORT_NODE_NAMED_COMPONENT = common dso_local global i32 0, align 4
@iort_match_node_callback = common dso_local global i32 0, align 4
@ACPI_IORT_NODE_PCI_ROOT_COMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_iort_node* (%struct.device*)* @iort_find_dev_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_iort_node* @iort_find_dev_node(%struct.device* %0) #0 {
  %2 = alloca %struct.acpi_iort_node*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.acpi_iort_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @dev_is_pci(%struct.device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.acpi_iort_node* @iort_get_iort_node(i32 %12)
  store %struct.acpi_iort_node* %13, %struct.acpi_iort_node** %5, align 8
  %14 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %5, align 8
  %15 = icmp ne %struct.acpi_iort_node* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %5, align 8
  store %struct.acpi_iort_node* %17, %struct.acpi_iort_node** %2, align 8
  br label %43

18:                                               ; preds = %9
  %19 = load i32, i32* @ACPI_IORT_NODE_NAMED_COMPONENT, align 4
  %20 = load i32, i32* @iort_match_node_callback, align 4
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call %struct.acpi_iort_node* @iort_scan_node(i32 %19, i32 %20, %struct.device* %21)
  store %struct.acpi_iort_node* %22, %struct.acpi_iort_node** %2, align 8
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call %struct.TYPE_2__* @to_pci_dev(%struct.device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.pci_bus*, %struct.pci_bus** %26, align 8
  store %struct.pci_bus* %27, %struct.pci_bus** %4, align 8
  br label %28

28:                                               ; preds = %33, %23
  %29 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %30 = call i32 @pci_is_root_bus(%struct.pci_bus* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 1
  %36 = load %struct.pci_bus*, %struct.pci_bus** %35, align 8
  store %struct.pci_bus* %36, %struct.pci_bus** %4, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load i32, i32* @ACPI_IORT_NODE_PCI_ROOT_COMPLEX, align 4
  %39 = load i32, i32* @iort_match_node_callback, align 4
  %40 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %41 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %40, i32 0, i32 0
  %42 = call %struct.acpi_iort_node* @iort_scan_node(i32 %38, i32 %39, %struct.device* %41)
  store %struct.acpi_iort_node* %42, %struct.acpi_iort_node** %2, align 8
  br label %43

43:                                               ; preds = %37, %18, %16
  %44 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %2, align 8
  ret %struct.acpi_iort_node* %44
}

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.acpi_iort_node* @iort_get_iort_node(i32) #1

declare dso_local %struct.acpi_iort_node* @iort_scan_node(i32, i32, %struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_is_root_bus(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
