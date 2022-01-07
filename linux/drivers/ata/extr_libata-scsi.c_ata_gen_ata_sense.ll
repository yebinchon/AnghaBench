; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_gen_ata_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_gen_ata_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_taskfile, i32, %struct.TYPE_4__*, %struct.scsi_cmnd*, %struct.ata_device* }
%struct.ata_taskfile = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.scsi_cmnd = type { i8*, i32 }
%struct.ata_device = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not decode error status 0x%x err_mask 0x%x\0A\00", align 1
@ABORTED_COMMAND = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_gen_ata_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_gen_ata_sense(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 4
  %14 = load %struct.ata_device*, %struct.ata_device** %13, align 8
  store %struct.ata_device* %14, %struct.ata_device** %3, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 3
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %4, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 0
  store %struct.ata_taskfile* %19, %struct.ata_taskfile** %5, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %34 = call i32 @memset(i8* %32, i32 0, i32 %33)
  %35 = load i32, i32* @DRIVER_SENSE, align 4
  %36 = shl i32 %35, 24
  %37 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %42 = call i64 @ata_dev_disabled(%struct.ata_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %47 = load i32, i32* @NOT_READY, align 4
  %48 = call i32 @ata_scsi_set_sense(%struct.ata_device* %45, %struct.scsi_cmnd* %46, i32 %47, i32 4, i32 33)
  br label %114

49:                                               ; preds = %1
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %51 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATA_BUSY, align 4
  %59 = load i32, i32* @ATA_DF, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ATA_ERR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ATA_DRQ, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %57, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %54, %49
  %68 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %69 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %74 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %77 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ata_to_sense_error(i32 %72, i32 %75, i32 %78, i32* %9, i32* %10, i32* %11, i32 %79)
  %81 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @ata_scsi_set_sense(%struct.ata_device* %81, %struct.scsi_cmnd* %82, i32 %83, i32 %84, i32 %85)
  br label %100

87:                                               ; preds = %54
  %88 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %93 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ata_dev_warn(%struct.ata_device* %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %98 = load i32, i32* @ABORTED_COMMAND, align 4
  %99 = call i32 @ata_scsi_set_sense(%struct.ata_device* %96, %struct.scsi_cmnd* %97, i32 %98, i32 0, i32 0)
  br label %114

100:                                              ; preds = %67
  %101 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %102 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %101, i32 0, i32 0
  %103 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %104 = call i64 @ata_tf_read_block(%struct.ata_taskfile* %102, %struct.ata_device* %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @U64_MAX, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %114

109:                                              ; preds = %100
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @scsi_set_sense_information(i8* %110, i32 %111, i64 %112)
  br label %114

114:                                              ; preds = %109, %108, %87, %44
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @ata_dev_disabled(%struct.ata_device*) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @ata_to_sense_error(i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32, i32) #1

declare dso_local i64 @ata_tf_read_block(%struct.ata_taskfile*, %struct.ata_device*) #1

declare dso_local i32 @scsi_set_sense_information(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
