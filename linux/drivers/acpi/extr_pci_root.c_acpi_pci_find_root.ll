; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_find_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_find_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_root = type { i32 }
%struct.acpi_device = type { i32 }

@root_device_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_pci_root* @acpi_pci_find_root(i32 %0) #0 {
  %2 = alloca %struct.acpi_pci_root*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_pci_root*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @acpi_bus_get_device(i32 %6, %struct.acpi_device** %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %11 = load i32, i32* @root_device_ids, align 4
  %12 = call i64 @acpi_match_device_ids(%struct.acpi_device* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store %struct.acpi_pci_root* null, %struct.acpi_pci_root** %2, align 8
  br label %19

15:                                               ; preds = %9
  %16 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %17 = call %struct.acpi_pci_root* @acpi_driver_data(%struct.acpi_device* %16)
  store %struct.acpi_pci_root* %17, %struct.acpi_pci_root** %4, align 8
  %18 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  store %struct.acpi_pci_root* %18, %struct.acpi_pci_root** %2, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %2, align 8
  ret %struct.acpi_pci_root* %20
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @acpi_match_device_ids(%struct.acpi_device*, i32) #1

declare dso_local %struct.acpi_pci_root* @acpi_driver_data(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
