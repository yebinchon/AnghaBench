; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.via_isa_bridge* }
%struct.via_isa_bridge = type { i32, i64 }
%struct.pci_dev = type { i32 }

@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@VIA_SATA_PATA = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i32 0, align 4
@ATA_UDMA4 = common dso_local global i64 0, align 8
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i64 0, align 8
@ATA_CBL_PATA_UNK = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @via_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.via_isa_bridge*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %10, align 8
  store %struct.via_isa_bridge* %11, %struct.via_isa_bridge** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i64 @via_cable_override(%struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %1
  %24 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VIA_SATA_PATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ATA_CBL_SATA, align 4
  store i32 %36, i32* %2, align 4
  br label %81

37:                                               ; preds = %30, %23
  %38 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %4, align 8
  %39 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATA_UDMA4, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %44, i32* %2, align 4
  br label %81

45:                                               ; preds = %37
  %46 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %4, align 8
  %47 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATA_UDMA5, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ATA_CBL_PATA_UNK, align 4
  store i32 %52, i32* %2, align 4
  br label %81

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = call i32 @pci_read_config_dword(%struct.pci_dev* %55, i32 80, i32* %6)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 16, %60
  %62 = ashr i32 269484032, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %54
  %68 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %69 = call i64 @ata_acpi_init_gtm(%struct.ata_port* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %73 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %74 = call i64 @ata_acpi_init_gtm(%struct.ata_port* %73)
  %75 = call i64 @ata_acpi_cbl_80wire(%struct.ata_port* %72, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %71, %67
  %80 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %77, %65, %51, %43, %35, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @via_cable_override(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ata_acpi_init_gtm(%struct.ata_port*) #1

declare dso_local i64 @ata_acpi_cbl_80wire(%struct.ata_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
