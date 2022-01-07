; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_atapi_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_atapi_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_2__, i32, i32, %struct.ata_device*, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32 }
%struct.scsi_cmnd = type { i64, i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@atapi_qc_complete = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"direction: write\0A\00", align 1
@ATA_CMD_PACKET = common dso_local global i32 0, align 4
@ATAPI_PROT_NODATA = common dso_local global i32 0, align 4
@ATAPI_PROT_PIO = common dso_local global i32 0, align 4
@ATAPI_PROT_DMA = common dso_local global i32 0, align 4
@ATAPI_PKT_DMA = common dso_local global i32 0, align 4
@ATA_DFLAG_DMADIR = common dso_local global i32 0, align 4
@ATAPI_DMADIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @atapi_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atapi_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 3
  %13 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  store %struct.ata_device* %13, %struct.ata_device** %4, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DMA_NONE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %1
  %30 = phi i1 [ false, %1 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32 %34, i32 0, i32 %37)
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32 %41, i32 %44, i32 %47)
  %49 = load i32, i32* @atapi_qc_complete, align 4
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %51 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %53 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_TO_DEVICE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %29
  %66 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %67 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %68 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = call i32 @DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %65, %29
  %74 = load i32, i32* @ATA_CMD_PACKET, align 4
  %75 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %76 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %79 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %87 = call i64 @atapi_check_dma(%struct.ata_queued_cmd* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %85, %82, %73
  %91 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %92 = call i32 @ata_qc_raw_nbytes(%struct.ata_queued_cmd* %91)
  %93 = call i32 @min(i32 %92, i32 64512)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 255
  %103 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %104 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = lshr i32 %106, 8
  %108 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %109 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load i32, i32* @ATAPI_PROT_NODATA, align 4
  %115 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %116 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  store i32 %114, i32* %117, align 8
  br label %158

118:                                              ; preds = %100
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @ATAPI_PROT_PIO, align 4
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %124 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 4
  store i32 %122, i32* %125, align 8
  br label %157

126:                                              ; preds = %118
  %127 = load i32, i32* @ATAPI_PROT_DMA, align 4
  %128 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %129 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @ATAPI_PKT_DMA, align 4
  %132 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %133 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %138 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ATA_DFLAG_DMADIR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %126
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %145 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DMA_TO_DEVICE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load i32, i32* @ATAPI_DMADIR, align 4
  %151 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %152 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %149, %143, %126
  br label %157

157:                                              ; preds = %156, %121
  br label %158

158:                                              ; preds = %157, %113
  ret i32 0
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

declare dso_local i64 @atapi_check_dma(%struct.ata_queued_cmd*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ata_qc_raw_nbytes(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
