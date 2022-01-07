; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_prt_entry = type { i32 }
%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Found %s[%c] _PRT entry\0A\00", align 1
@PCI_CLASS_BRIDGE_CARDBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No interrupt pin configured for device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Derived GSI for %s INT %c from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"can't derive routing for PCI INT %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_prt_entry* (%struct.pci_dev*, i32)* @acpi_pci_irq_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_prt_entry*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_prt_entry*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %6, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %12, i32 %13, %struct.acpi_prt_entry** %6)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  %19 = icmp ne %struct.acpi_prt_entry* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* @ACPI_DB_INFO, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_name(%struct.pci_dev* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pin_name(i32 %24)
  %26 = call i32 @ACPI_DEBUG_PRINT(i32 %25)
  %27 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  store %struct.acpi_prt_entry* %27, %struct.acpi_prt_entry** %3, align 8
  br label %92

28:                                               ; preds = %17, %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %7, align 8
  br label %34

34:                                               ; preds = %79, %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = icmp ne %struct.pci_dev* %35, null
  br i1 %36, label %37, label %86

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pci_swizzle_interrupt_pin(%struct.pci_dev* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 8
  %45 = load i32, i32* @PCI_CLASS_BRIDGE_CARDBUS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ACPI_DB_INFO, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = call i32 @pci_name(%struct.pci_dev* %55)
  %57 = call i32 @ACPI_DEBUG_PRINT(i32 %56)
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %3, align 8
  br label %92

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %37
  %61 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %61, i32 %62, %struct.acpi_prt_entry** %6)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  %68 = icmp ne %struct.acpi_prt_entry* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* @ACPI_DB_INFO, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = call i32 @pci_name(%struct.pci_dev* %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @pin_name(i32 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %76 = call i32 @pci_name(%struct.pci_dev* %75)
  %77 = call i32 @ACPI_DEBUG_PRINT(i32 %76)
  %78 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  store %struct.acpi_prt_entry* %78, %struct.acpi_prt_entry** %3, align 8
  br label %92

79:                                               ; preds = %66, %60
  %80 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %80, %struct.pci_dev** %4, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.pci_dev*, %struct.pci_dev** %84, align 8
  store %struct.pci_dev* %85, %struct.pci_dev** %7, align 8
  br label %34

86:                                               ; preds = %34
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @pin_name(i32 %89)
  %91 = call i32 @dev_warn(i32* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %3, align 8
  br label %92

92:                                               ; preds = %86, %69, %53, %20
  %93 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  ret %struct.acpi_prt_entry* %93
}

declare dso_local i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev*, i32, %struct.acpi_prt_entry**) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pin_name(i32) #1

declare dso_local i32 @pci_swizzle_interrupt_pin(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
