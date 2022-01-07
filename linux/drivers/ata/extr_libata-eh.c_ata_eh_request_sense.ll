; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_request_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.ata_device*, %struct.TYPE_2__* }
%struct.ata_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32 }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sense data available but port frozen\0A\00", align 1
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sense data reporting disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ATA request sense\0A\00", align 1
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_CMD_REQ_SENSE_DATA = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@ATA_SENSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"request sense failed stat %02x emask %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*, %struct.scsi_cmnd*)* @ata_eh_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_eh_request_sense(%struct.ata_queued_cmd* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_taskfile, align 4
  %7 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 1
  %10 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  store %struct.ata_device* %10, %struct.ata_device** %5, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %21 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %93

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = icmp ne %struct.scsi_cmnd* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %22
  br label %93

33:                                               ; preds = %25
  %34 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ata_id_sense_reporting_enabled(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 1
  %42 = load %struct.ata_device*, %struct.ata_device** %41, align 8
  %43 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %93

44:                                               ; preds = %33
  %45 = call i32 @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %47 = call i32 @ata_tf_init(%struct.ata_device* %46, %struct.ata_taskfile* %6)
  %48 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %49 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %55 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @ATA_CMD_REQ_SENSE_DATA, align 4
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @ATA_PROT_NODATA, align 4
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %65 = load i32, i32* @DMA_NONE, align 4
  %66 = call i32 @ata_exec_internal(%struct.ata_device* %64, %struct.ata_taskfile* %6, i32* null, i32 %65, i32* null, i32 0, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATA_SENSE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %44
  %73 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ata_scsi_set_sense(%struct.ata_device* %73, %struct.scsi_cmnd* %74, i32 %76, i32 %78, i32 %80)
  %82 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %83 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %84 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %93

87:                                               ; preds = %44
  %88 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_warn(%struct.ata_device* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %19, %32, %39, %87, %72
  ret void
}

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, ...) #1

declare dso_local i32 @ata_id_sense_reporting_enabled(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
