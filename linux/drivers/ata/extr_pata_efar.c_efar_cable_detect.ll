; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_efar.c_efar_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_efar.c_efar_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @efar_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efar_cable_detect(%struct.ata_port* %0) #0 {
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
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_read_config_byte(%struct.pci_dev* %12, i32 71, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 2, %17
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
