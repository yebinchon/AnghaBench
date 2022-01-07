; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt37x.c_hpt372_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt37x.c_hpt372_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @hpt372_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt372_set_mode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %22, %26
  %28 = mul nsw i32 4, %27
  %29 = add nsw i32 64, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 4, %32
  %34 = add nsw i32 81, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %35, i32 %36, i32* %13)
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, -8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @pci_write_config_byte(%struct.pci_dev* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @XFER_MW_DMA_0, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 -809238529, i32* %12, align 4
  br label %55

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @XFER_UDMA_0, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 834667007, i32* %12, align 4
  br label %54

53:                                               ; preds = %48
  store i32 809238528, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %47
  %56 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @hpt37x_find_mode(%struct.ata_port* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pci_read_config_dword(%struct.pci_dev* %59, i32 %60, i32* %10)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %66, %67
  %69 = or i32 %65, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @pci_write_config_dword(%struct.pci_dev* %70, i32 %71, i32 %72)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @hpt37x_find_mode(%struct.ata_port*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
