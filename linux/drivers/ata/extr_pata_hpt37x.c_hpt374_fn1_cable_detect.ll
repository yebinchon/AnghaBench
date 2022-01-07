; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt37x.c_hpt374_fn1_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt37x.c_hpt374_fn1_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @hpt374_fn1_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt374_fn1_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 4, %16
  %18 = add nsw i32 80, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 2
  %22 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i32 %21, i32* %6)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 2
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, 32768
  %28 = call i32 @pci_write_config_word(%struct.pci_dev* %23, i32 %25, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i32 90, i32* %7)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 2
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pci_write_config_word(%struct.pci_dev* %31, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 2, %39
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
