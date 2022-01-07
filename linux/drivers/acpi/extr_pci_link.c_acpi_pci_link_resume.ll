; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_link.c_acpi_pci_link_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_link.c_acpi_pci_link_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_link = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_pci_link*)* @acpi_pci_link_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_link_resume(%struct.acpi_pci_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_pci_link*, align 8
  store %struct.acpi_pci_link* %0, %struct.acpi_pci_link** %3, align 8
  %4 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %3, align 8
  %22 = load %struct.acpi_pci_link*, %struct.acpi_pci_link** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_pci_link, %struct.acpi_pci_link* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @acpi_pci_link_set(%struct.acpi_pci_link* %21, i64 %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %14, %8, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @acpi_pci_link_set(%struct.acpi_pci_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
