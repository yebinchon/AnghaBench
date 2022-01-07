; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sl82c105.c_sl82c105_configure_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sl82c105.c_sl82c105_configure_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@sl82c105_configure_piomode.pio_timing = internal global [5 x i32] [i32 1293, i32 1031, i32 772, i32 578, i32 576], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @sl82c105_configure_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl82c105_configure_piomode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 8, %18
  %20 = add nsw i32 68, %19
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 4, %23
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* @sl82c105_configure_piomode.pio_timing, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_write_config_word(%struct.pci_dev* %26, i32 %27, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pci_read_config_word(%struct.pci_dev* %33, i32 %34, i32* %8)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
