; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_slot.c_acpi_pci_slot_enumerate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_slot.c_acpi_pci_slot_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@slot_list_lock = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@register_slot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_pci_slot_enumerate(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @ACPI_HANDLE(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @slot_list_lock)
  %12 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @register_slot, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %16 = call i32 @acpi_walk_namespace(i32 %12, i64 %13, i32 1, i32 %14, i32* null, %struct.pci_bus* %15, i32* null)
  %17 = call i32 @mutex_unlock(i32* @slot_list_lock)
  br label %18

18:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @ACPI_HANDLE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i64, i32, i32, i32*, %struct.pci_bus*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
