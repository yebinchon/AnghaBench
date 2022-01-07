; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_root_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_root_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_pci_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_pci_root_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pci_root_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpi_pci_root*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = call %struct.acpi_pci_root* @acpi_driver_data(%struct.acpi_device* %4)
  store %struct.acpi_pci_root* %5, %struct.acpi_pci_root** %3, align 8
  %6 = call i32 (...) @pci_lock_rescan_remove()
  %7 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call i32 @pci_stop_root_bus(%struct.TYPE_3__* %9)
  %11 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %12 = call i32 @pci_ioapic_remove(%struct.acpi_pci_root* %11)
  %13 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_set_wakeup_capable(i32 %17, i32 0)
  %19 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %20 = call i32 @pci_acpi_remove_bus_pm_notifier(%struct.acpi_device* %19)
  %21 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @pci_remove_root_bus(%struct.TYPE_3__* %23)
  %25 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %26 = call i32 @acpi_ioapic_remove(%struct.acpi_pci_root* %25)
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dmar_device_remove(i32 %30)
  %32 = call i32 (...) @pci_unlock_rescan_remove()
  %33 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %34 = call i32 @kfree(%struct.acpi_pci_root* %33)
  ret void
}

declare dso_local %struct.acpi_pci_root* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_root_bus(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_ioapic_remove(%struct.acpi_pci_root*) #1

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @pci_acpi_remove_bus_pm_notifier(%struct.acpi_device*) #1

declare dso_local i32 @pci_remove_root_bus(%struct.TYPE_3__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @acpi_ioapic_remove(%struct.acpi_pci_root*) #1

declare dso_local i32 @dmar_device_remove(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @kfree(%struct.acpi_pci_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
