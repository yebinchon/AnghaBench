; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt366.c_hpt366_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt366.c_hpt366_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i64)* @hpt366_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt366_set_mode(%struct.ata_port* %0, %struct.ata_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 4, %20
  %22 = add nsw i32 64, %21
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @XFER_MW_DMA_0, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1040646145, i32* %9, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @XFER_UDMA_0, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 808976639, i32* %9, align 4
  br label %33

32:                                               ; preds = %27
  store i32 805765120, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @hpt36x_find_mode(%struct.ata_port* %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pci_read_config_dword(%struct.pci_dev* %38, i32 %39, i32* %10)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %44, %47
  %49 = and i32 %48, 1073741823
  store i32 %49, i32* %10, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @pci_write_config_dword(%struct.pci_dev* %50, i32 %51, i32 %52)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @hpt36x_find_mode(%struct.ata_port*, i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
