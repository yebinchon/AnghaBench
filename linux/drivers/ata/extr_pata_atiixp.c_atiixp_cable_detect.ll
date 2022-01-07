; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_atiixp.c_atiixp_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_atiixp.c_atiixp_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@attixp_cable_override_dmi_table = common dso_local global i32 0, align 4
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_MODE = common dso_local global i64 0, align 8
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @atiixp_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @attixp_cable_override_dmi_table, align 4
  %13 = call i64 @dmi_check_system(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i64, i64* @ATIIXP_IDE_UDMA_MODE, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @pci_read_config_byte(%struct.pci_dev* %18, i64 %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 7
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 112
  %31 = icmp sge i32 %30, 64
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %17
  %33 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
