; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, i64, i32 }
%struct.ata_port = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.nv_adma_port_priv* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_8__ = type { %struct.nv_adma_port_priv* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.nv_adma_port_priv = type { i32, i32 }
%struct.pci_dev = type { i32 }

@ATA_MAX_DEVICES = common dso_local global i64 0, align 8
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_DMA_BOUNDARY = common dso_local global i64 0, align 8
@LIBATA_MAX_PRD = common dso_local global i32 0, align 4
@NV_ADMA_DMA_BOUNDARY = common dso_local global i64 0, align 8
@NV_ADMA_SGTBL_TOTAL_LEN = common dso_local global i16 0, align 2
@NV_MCP_SATA_CFG_20 = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT1_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT1_PWB_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT0_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT0_PWB_EN = common dso_local global i32 0, align 4
@NV_ADMA_ATAPI_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ATA_DMA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"DMA mask 0x%llX, segment boundary 0x%lX, hw segs %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @nv_adma_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_adma_slave_config(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.nv_adma_port_priv*, align 8
  %6 = alloca %struct.nv_adma_port_priv*, align 8
  %7 = alloca %struct.nv_adma_port_priv*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ata_port* @ata_shost_to_port(i32 %19)
  store %struct.ata_port* %20, %struct.ata_port** %4, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 4
  %23 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %22, align 8
  store %struct.nv_adma_port_priv* %23, %struct.nv_adma_port_priv** %5, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call %struct.pci_dev* @to_pci_dev(%struct.TYPE_10__* %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %8, align 8
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = call i32 @ata_scsi_slave_config(%struct.scsi_device* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ATA_MAX_DEVICES, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %1
  %38 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %37, %1
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %2, align 4
  br label %198

49:                                               ; preds = %42
  %50 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %51 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_lock_irqsave(i32 %52, i64 %53)
  %55 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load i64, i64* @ATA_DMA_BOUNDARY, align 8
  store i64 %68, i64* %9, align 8
  %69 = load i32, i32* @LIBATA_MAX_PRD, align 4
  %70 = sub nsw i32 %69, 1
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %11, align 2
  store i32 0, i32* %13, align 4
  %72 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %73 = call i32 @nv_adma_register_mode(%struct.ata_port* %72)
  br label %77

74:                                               ; preds = %49
  %75 = load i64, i64* @NV_ADMA_DMA_BOUNDARY, align 8
  store i64 %75, i64* %9, align 8
  %76 = load i16, i16* @NV_ADMA_SGTBL_TOTAL_LEN, align 2
  store i16 %76, i16* %11, align 2
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %79 = load i32, i32* @NV_MCP_SATA_CFG_20, align 4
  %80 = call i32 @pci_read_config_dword(%struct.pci_dev* %78, i32 %79, i32* %14)
  %81 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %82 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT1_EN, align 4
  %87 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT1_PWB_EN, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %16, align 4
  br label %93

89:                                               ; preds = %77
  %90 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT0_EN, align 4
  %91 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT0_PWB_EN, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %16, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %103 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %116

106:                                              ; preds = %93
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %16, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %112 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %113 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %106, %96
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %122 = load i32, i32* @NV_MCP_SATA_CFG_20, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @pci_write_config_dword(%struct.pci_dev* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %116
  %126 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %127 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %130, i64 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %133, align 8
  store %struct.nv_adma_port_priv* %134, %struct.nv_adma_port_priv** %6, align 8
  %135 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %136 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %135, i32 0, i32 2
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %139, i64 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %142, align 8
  store %struct.nv_adma_port_priv* %143, %struct.nv_adma_port_priv** %7, align 8
  %144 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %6, align 8
  %145 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %125
  %151 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %7, align 8
  %152 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150, %125
  %158 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* @ATA_DMA_MASK, align 4
  %161 = call i32 @dma_set_mask(i32* %159, i32 %160)
  store i32 %161, i32* %12, align 4
  br label %169

162:                                              ; preds = %150
  %163 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %164 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 0
  %165 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %166 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dma_set_mask(i32* %164, i32 %167)
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %162, %157
  %170 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %171 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @blk_queue_segment_boundary(i32 %172, i64 %173)
  %175 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %176 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i16, i16* %11, align 2
  %179 = call i32 @blk_queue_max_segments(i32 %177, i16 zeroext %178)
  %180 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %181 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %182 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i16, i16* %11, align 2
  %191 = call i32 @ata_port_info(%struct.ata_port* %180, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %188, i64 %189, i16 zeroext %190)
  %192 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %193 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i64, i64* %10, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32 %194, i64 %195)
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %169, %47
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @ata_scsi_slave_config(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @nv_adma_register_mode(%struct.ata_port*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @blk_queue_segment_boundary(i32, i64) #1

declare dso_local i32 @blk_queue_max_segments(i32, i16 zeroext) #1

declare dso_local i32 @ata_port_info(%struct.ata_port*, i8*, i64, i64, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
