; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwpci.c_acpi_hw_derive_pci_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwpci.c_acpi_hw_derive_pci_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_id = type { i32 }
%struct.acpi_pci_device = type { i32 }

@hw_derive_pci_id = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_derive_pci_id(%struct.acpi_pci_id* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_pci_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_pci_device*, align 8
  store %struct.acpi_pci_id* %0, %struct.acpi_pci_id** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @hw_derive_pci_id, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %5, align 8
  %13 = icmp ne %struct.acpi_pci_id* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @acpi_hw_build_pci_list(i32 %18, i32 %19, %struct.acpi_pci_device** %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ACPI_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %5, align 8
  %26 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %9, align 8
  %27 = call i32 @acpi_hw_process_pci_list(%struct.acpi_pci_id* %25, %struct.acpi_pci_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %9, align 8
  %29 = call i32 @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_hw_build_pci_list(i32, i32, %struct.acpi_pci_device**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_hw_process_pci_list(%struct.acpi_pci_id*, %struct.acpi_pci_device*) #1

declare dso_local i32 @acpi_hw_delete_pci_list(%struct.acpi_pci_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
