; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_acpi.c_pacpi_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__, %struct.pata_acpi*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32* }
%struct.pata_acpi = type { i8** }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @pacpi_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pacpi_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pata_acpi*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 2
  %14 = call i32* @ACPI_HANDLE(i32* %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pata_acpi* @devm_kzalloc(i32* %21, i32 8, i32 %22)
  %24 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  store %struct.pata_acpi* %23, %struct.pata_acpi** %25, align 8
  store %struct.pata_acpi* %23, %struct.pata_acpi** %5, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = load %struct.pata_acpi*, %struct.pata_acpi** %27, align 8
  %29 = icmp eq %struct.pata_acpi* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %19
  %34 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i8* @pacpi_discover_modes(%struct.ata_port* %34, i32* %39)
  %41 = load %struct.pata_acpi*, %struct.pata_acpi** %5, align 8
  %42 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i8* @pacpi_discover_modes(%struct.ata_port* %45, i32* %50)
  %52 = load %struct.pata_acpi*, %struct.pata_acpi** %5, align 8
  %53 = getelementptr inbounds %struct.pata_acpi, %struct.pata_acpi* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %51, i8** %55, align 8
  %56 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %57 = call i32 @ata_bmdma_port_start(%struct.ata_port* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %33, %30, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32* @ACPI_HANDLE(i32*) #1

declare dso_local %struct.pata_acpi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @pacpi_discover_modes(%struct.ata_port*, i32*) #1

declare dso_local i32 @ata_bmdma_port_start(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
