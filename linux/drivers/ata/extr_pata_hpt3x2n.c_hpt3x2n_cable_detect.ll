; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @hpt3x2n_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt3x2n_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i32 91, i32* %4)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -2
  %18 = call i32 @pci_write_config_byte(%struct.pci_dev* %15, i32 91, i32 %17)
  %19 = call i32 @udelay(i32 10)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = call i32 @pci_read_config_byte(%struct.pci_dev* %20, i32 90, i32* %5)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pci_write_config_byte(%struct.pci_dev* %22, i32 91, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 2, %28
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
