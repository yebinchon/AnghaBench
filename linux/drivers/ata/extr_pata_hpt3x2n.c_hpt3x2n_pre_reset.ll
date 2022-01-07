; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @hpt3x2n_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt3x2n_pre_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %5, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 4, %19
  %21 = add nsw i32 80, %20
  %22 = call i32 @pci_write_config_byte(%struct.pci_dev* %16, i32 %21, i32 55)
  %23 = call i32 @udelay(i32 100)
  %24 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @ata_sff_prereset(%struct.ata_link* %24, i64 %25)
  ret i32 %26
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
