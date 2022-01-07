; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sc1200.c_sc1200_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sc1200.c_sc1200_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@sc1200_set_piomode.pio_timings = internal constant [4 x [5 x i32]] [[5 x i32] [i32 37234, i32 74097, i32 131200, i32 204816, i32 262160], [5 x i32] [i32 -785215118, i32 1897996657, i32 807403648, i32 537927696, i32 1048592], [5 x i32] [i32 -89918221, i32 -1036897614, i32 1362166209, i32 824258849, i32 270602273], [5 x i32] [i32 -720908, i32 -212642861, i32 -2126445839, i32 1110524465, i32 288428337]], align 16
@XFER_PIO_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sc1200_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc1200_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 16, %17
  %19 = add nsw i32 64, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XFER_PIO_0, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 4
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i32 %27, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 31
  store i32 %30, i32* %6, align 4
  %31 = call i64 (...) @sc1200_clock()
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 8, %40
  %42 = add i32 %37, %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* @sc1200_set_piomode.pio_timings, i64 0, i64 %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_write_config_dword(%struct.pci_dev* %36, i32 %42, i32 %49)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @sc1200_clock(...) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
