; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_query_osc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_query_osc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_root = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OSC_PCI_SUPPORT_MASKS = common dso_local global i32 0, align 4
@OSC_QUERY_ENABLE = common dso_local global i32 0, align 4
@OSC_QUERY_DWORD = common dso_local global i64 0, align 8
@OSC_SUPPORT_DWORD = common dso_local global i64 0, align 8
@OSC_PCI_CONTROL_MASKS = common dso_local global i32 0, align 4
@OSC_CONTROL_DWORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_pci_root*, i32, i32*)* @acpi_pci_query_osc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_query_osc(%struct.acpi_pci_root* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.acpi_pci_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.acpi_pci_root* %0, %struct.acpi_pci_root** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @OSC_PCI_SUPPORT_MASKS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @OSC_QUERY_ENABLE, align 4
  %19 = load i64, i64* @OSC_QUERY_DWORD, align 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %19
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* @OSC_SUPPORT_DWORD, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %22
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load i32, i32* @OSC_PCI_CONTROL_MASKS, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = load i64, i64* @OSC_CONTROL_DWORD, align 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %37
  store i32 %36, i32* %38, align 4
  br label %45

39:                                               ; preds = %3
  %40 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @OSC_CONTROL_DWORD, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %43
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %26
  %46 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %52 = call i32 @acpi_pci_run_osc(i32 %50, i32* %51, i32* %8)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @ACPI_SUCCESS(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @acpi_pci_run_osc(i32, i32*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
