; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwpci.c_acpi_hw_build_pci_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwpci.c_acpi_hw_build_pci_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_device = type { i64, %struct.acpi_pci_device* }

@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.acpi_pci_device**)* @acpi_hw_build_pci_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_hw_build_pci_list(i64 %0, i64 %1, %struct.acpi_pci_device** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_pci_device**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_pci_device*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_pci_device** %2, %struct.acpi_pci_device*** %7, align 8
  %12 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %7, align 8
  store %struct.acpi_pci_device* null, %struct.acpi_pci_device** %12, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %3, %40
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @acpi_get_parent(i64 %15, i64* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %7, align 8
  %22 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %21, align 8
  %23 = call i32 @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %14
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @AE_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %25
  %32 = call %struct.acpi_pci_device* @ACPI_ALLOCATE(i32 16)
  store %struct.acpi_pci_device* %32, %struct.acpi_pci_device** %11, align 8
  %33 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %11, align 8
  %34 = icmp ne %struct.acpi_pci_device* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %7, align 8
  %37 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %36, align 8
  %38 = call i32 @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %37)
  %39 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %7, align 8
  %42 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %41, align 8
  %43 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %11, align 8
  %44 = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %43, i32 0, i32 1
  store %struct.acpi_pci_device* %42, %struct.acpi_pci_device** %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %11, align 8
  %47 = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %11, align 8
  %49 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %7, align 8
  store %struct.acpi_pci_device* %48, %struct.acpi_pci_device** %49, align 8
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %8, align 8
  br label %14

51:                                               ; preds = %35, %29, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @acpi_get_parent(i64, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_hw_delete_pci_list(%struct.acpi_pci_device*) #1

declare dso_local %struct.acpi_pci_device* @ACPI_ALLOCATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
