; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_artop.c_artop6260_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_artop.c_artop6260_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @artop6260_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artop6260_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XFER_PIO_0, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i32 @artop6260_load_piomode(%struct.ata_port* %13, %struct.ata_device* %14, i64 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 68, %24
  %26 = call i32 @pci_read_config_byte(%struct.pci_dev* %21, i64 %25, i32* %6)
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 4, %29
  %31 = shl i32 7, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 68, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pci_write_config_byte(%struct.pci_dev* %35, i64 %39, i32 %40)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @artop6260_load_piomode(%struct.ata_port*, %struct.ata_device*, i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
