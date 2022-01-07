; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_dev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, %struct.TYPE_2__*, i32, %struct.request_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.ata_device = type { i32, i64, %struct.scsi_device*, i32, i32 }

@ATA_DFLAG_NO_UNLOAD = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_SECT_SIZE = common dso_local global i64 0, align 8
@ATA_DMA_PAD_SZ = common dso_local global i64 0, align 8
@ATAPI_MAX_DRAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"drain buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@atapi_drain_needed = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"sector_size=%u > PAGE_SIZE, PIO may malfunction\0A\00", align 1
@ATA_DFLAG_AN = common dso_local global i32 0, align 4
@SDEV_EVT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_DFLAG_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.ata_device*)* @ata_scsi_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_dev_config(%struct.scsi_device* %0, %struct.ata_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 5
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %6, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ata_id_has_unload(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %19 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %24, i32 %27)
  %29 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %23
  %35 = load i64, i64* @ATA_SECT_SIZE, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %39 = load i64, i64* @ATA_DMA_PAD_SZ, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @blk_queue_update_dma_pad(%struct.request_queue* %38, i64 %40)
  %42 = load i32, i32* @ATAPI_MAX_DRAIN, align 4
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @kmalloc(i32 %42, i32 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %34
  %52 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %53 = call i32 @ata_dev_err(%struct.ata_device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %140

56:                                               ; preds = %34
  %57 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %58 = load i32, i32* @atapi_drain_needed, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @ATAPI_MAX_DRAIN, align 4
  %61 = call i32 @blk_queue_dma_drain(%struct.request_queue* %57, i32 %58, i8* %59, i32 %60)
  br label %71

62:                                               ; preds = %23
  %63 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %64 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ata_id_logical_sector_size(i32 %65)
  %67 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %62, %56
  %72 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %79 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ata_dev_warn(%struct.ata_device* %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %85 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  %89 = call i32 @blk_queue_update_dma_alignment(%struct.request_queue* %84, i64 %88)
  %90 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %91 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ATA_DFLAG_AN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load i32, i32* @SDEV_EVT_MEDIA_CHANGE, align 4
  %98 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @set_bit(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %83
  %103 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %104 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %102
  %110 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %111 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %116 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ata_id_queue_depth(i32 %117)
  %119 = call i32 @min(i32 %114, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @min(i32 %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %123, i32 %124)
  br label %126

126:                                              ; preds = %109, %102
  %127 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %128 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ATA_DFLAG_TRUSTED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %135 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %134, i32 0, i32 2
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %126
  %137 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %138 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %139 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %138, i32 0, i32 2
  store %struct.scsi_device* %137, %struct.scsi_device** %139, align 8
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %51
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @ata_id_has_unload(i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_update_dma_pad(%struct.request_queue*, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*) #1

declare dso_local i32 @blk_queue_dma_drain(%struct.request_queue*, i32, i8*, i32) #1

declare dso_local i64 @ata_id_logical_sector_size(i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i64) #1

declare dso_local i32 @blk_queue_update_dma_alignment(%struct.request_queue*, i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ata_id_queue_depth(i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
