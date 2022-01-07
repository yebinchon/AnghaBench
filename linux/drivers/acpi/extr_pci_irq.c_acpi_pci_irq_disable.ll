; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.acpi_prt_entry = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"PCI INT %c disabled\0A\00", align 1
@RPM_SUSPENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_pci_irq_disable(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.acpi_prt_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11, %1
  br label %66

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %66

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %31, i32 %32)
  store %struct.acpi_prt_entry* %33, %struct.acpi_prt_entry** %3, align 8
  %34 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %35 = icmp ne %struct.acpi_prt_entry* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %66

37:                                               ; preds = %30
  %38 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @acpi_pci_link_free_irq(i64 %45)
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %53 = call i32 @kfree(%struct.acpi_prt_entry* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @pin_name(i32 %56)
  %58 = call i32 @dev_dbg(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @acpi_unregister_gsi(i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %21, %29, %36, %61, %51
  ret void
}

declare dso_local %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_pci_link_free_irq(i64) #1

declare dso_local i32 @kfree(%struct.acpi_prt_entry*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @pin_name(i32) #1

declare dso_local i32 @acpi_unregister_gsi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
