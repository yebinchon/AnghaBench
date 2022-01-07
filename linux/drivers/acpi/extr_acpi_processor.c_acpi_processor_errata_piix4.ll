; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_processor.c_acpi_processor_errata_piix4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_processor.c_acpi_processor_errata_piix4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found PIIX4 A-step\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Found PIIX4 B-step\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Found PIIX4E\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Found PIIX4M\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Found unknown PIIX4\0A\00", align 1
@errata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82371AB = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82371AB_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Bus master activity detection (BM-IDE) erratum enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Type-F DMA livelock erratum (C3 disabled)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @acpi_processor_errata_piix4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_errata_piix4(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = icmp ne %struct.pci_dev* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %86

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %21
    i32 3, label %24
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @ACPI_DB_INFO, align 4
  %17 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([20 x i8]* @.str to i32))
  br label %30

18:                                               ; preds = %11
  %19 = load i32, i32* @ACPI_DB_INFO, align 4
  %20 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([20 x i8]* @.str.1 to i32))
  br label %30

21:                                               ; preds = %11
  %22 = load i32, i32* @ACPI_DB_INFO, align 4
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([14 x i8]* @.str.2 to i32))
  br label %30

24:                                               ; preds = %11
  %25 = load i32, i32* @ACPI_DB_INFO, align 4
  %26 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([14 x i8]* @.str.3 to i32))
  br label %30

27:                                               ; preds = %11
  %28 = load i32, i32* @ACPI_DB_INFO, align 4
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([21 x i8]* @.str.4 to i32))
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %73 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %35
    i32 3, label %35
  ]

34:                                               ; preds = %30, %30
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @errata, i32 0, i32 0, i32 0), align 8
  br label %35

35:                                               ; preds = %30, %30, %34
  %36 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %37 = load i32, i32* @PCI_DEVICE_ID_INTEL_82371AB, align 4
  %38 = load i32, i32* @PCI_ANY_ID, align 4
  %39 = load i32, i32* @PCI_ANY_ID, align 4
  %40 = call %struct.pci_dev* @pci_get_subsys(i32 %36, i32 %37, i32 %38, i32 %39, i32* null)
  store %struct.pci_dev* %40, %struct.pci_dev** %3, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = call i64 @pci_resource_start(%struct.pci_dev* %44, i32 4)
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @errata, i32 0, i32 0, i32 2), align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = call i32 @pci_dev_put(%struct.pci_dev* %46)
  br label %48

48:                                               ; preds = %43, %35
  %49 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %50 = load i32, i32* @PCI_DEVICE_ID_INTEL_82371AB_0, align 4
  %51 = load i32, i32* @PCI_ANY_ID, align 4
  %52 = load i32, i32* @PCI_ANY_ID, align 4
  %53 = call %struct.pci_dev* @pci_get_subsys(i32 %49, i32 %50, i32 %51, i32 %52, i32* null)
  store %struct.pci_dev* %53, %struct.pci_dev** %3, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = icmp ne %struct.pci_dev* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = call i32 @pci_read_config_byte(%struct.pci_dev* %57, i32 118, i32* %4)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = call i32 @pci_read_config_byte(%struct.pci_dev* %59, i32 119, i32* %5)
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %56
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @errata, i32 0, i32 0, i32 1), align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = call i32 @pci_dev_put(%struct.pci_dev* %70)
  br label %72

72:                                               ; preds = %69, %48
  br label %73

73:                                               ; preds = %30, %72
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @errata, i32 0, i32 0, i32 2), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @ACPI_DB_INFO, align 4
  %78 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([56 x i8]* @.str.5 to i32))
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @errata, i32 0, i32 0, i32 1), align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @ACPI_DB_INFO, align 4
  %84 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([43 x i8]* @.str.6 to i32))
  br label %85

85:                                               ; preds = %82, %79
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %8
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.pci_dev* @pci_get_subsys(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
