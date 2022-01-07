; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwpci.c_acpi_hw_delete_pci_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwpci.c_acpi_hw_delete_pci_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_device = type { %struct.acpi_pci_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_pci_device*)* @acpi_hw_delete_pci_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %0) #0 {
  %2 = alloca %struct.acpi_pci_device*, align 8
  %3 = alloca %struct.acpi_pci_device*, align 8
  %4 = alloca %struct.acpi_pci_device*, align 8
  store %struct.acpi_pci_device* %0, %struct.acpi_pci_device** %2, align 8
  %5 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %2, align 8
  store %struct.acpi_pci_device* %5, %struct.acpi_pci_device** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %3, align 8
  %8 = icmp ne %struct.acpi_pci_device* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %3, align 8
  store %struct.acpi_pci_device* %10, %struct.acpi_pci_device** %4, align 8
  %11 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %11, i32 0, i32 0
  %13 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %12, align 8
  store %struct.acpi_pci_device* %13, %struct.acpi_pci_device** %3, align 8
  %14 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %4, align 8
  %15 = call i32 @ACPI_FREE(%struct.acpi_pci_device* %14)
  br label %6

16:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ACPI_FREE(%struct.acpi_pci_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
