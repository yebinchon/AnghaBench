; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32 }
%struct.ata_port = type { %struct.TYPE_2__, %struct.pata_macio_priv* }
%struct.TYPE_2__ = type { %struct.ata_device* }
%struct.ata_device = type { i64 }
%struct.pata_macio_priv = type { i64, i32 }

@controller_ohare = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"OHare alignment limits applied\0A\00", align 1
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@controller_sh_ata6 = common dso_local global i64 0, align 8
@controller_k2_ata6 = common dso_local global i64 0, align 8
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"K2/Shasta alignment limits applied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @pata_macio_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_macio_slave_config(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.pata_macio_priv*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ata_port* @ata_shost_to_port(i32 %11)
  store %struct.ata_port* %12, %struct.ata_port** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %14, align 8
  store %struct.pata_macio_priv* %15, %struct.pata_macio_priv** %5, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = call i32 @ata_scsi_slave_config(%struct.scsi_device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %103

22:                                               ; preds = %1
  %23 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ata_device*, %struct.ata_device** %25, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i64 %29
  store %struct.ata_device* %30, %struct.ata_device** %6, align 8
  %31 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %32 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @controller_ohare, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %22
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @blk_queue_update_dma_alignment(i32 %39, i32 31)
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @blk_queue_update_dma_pad(i32 %43, i32 31)
  %45 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %46 = call i32 @ata_dev_info(%struct.ata_device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

47:                                               ; preds = %22
  %48 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %49 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %103

54:                                               ; preds = %47
  %55 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %56 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @controller_sh_ata6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %62 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @controller_k2_ata6, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %60, %54
  %67 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @blk_queue_update_dma_alignment(i32 %69, i32 15)
  %71 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @blk_queue_update_dma_pad(i32 %73, i32 15)
  %75 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %76 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %83 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %86 = call i32 @pci_write_config_byte(i32 %84, i32 %85, i32 8)
  %87 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %88 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PCI_COMMAND, align 4
  %91 = call i32 @pci_read_config_word(i32 %89, i32 %90, i32* %7)
  %92 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %5, align 8
  %93 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PCI_COMMAND, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @pci_write_config_word(i32 %94, i32 %95, i32 %98)
  %100 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %101 = call i32 @ata_dev_info(%struct.ata_device* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %66, %60
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %53, %36, %20
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local i32 @ata_scsi_slave_config(%struct.scsi_device*) #1

declare dso_local i32 @blk_queue_update_dma_alignment(i32, i32) #1

declare dso_local i32 @blk_queue_update_dma_pad(i32, i32) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
