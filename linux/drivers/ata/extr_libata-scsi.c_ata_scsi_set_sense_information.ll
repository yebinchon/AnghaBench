; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_set_sense_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_set_sense_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.ata_taskfile = type { i32 }

@U64_MAX = common dso_local global i64 0, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_scsi_set_sense_information(%struct.ata_device* %0, %struct.scsi_cmnd* %1, %struct.ata_taskfile* %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ata_taskfile*, align 8
  %7 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.ata_taskfile* %2, %struct.ata_taskfile** %6, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %9 = icmp ne %struct.scsi_cmnd* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %26

11:                                               ; preds = %3
  %12 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = call i64 @ata_tf_read_block(%struct.ata_taskfile* %12, %struct.ata_device* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @U64_MAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %26

19:                                               ; preds = %11
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @scsi_set_sense_information(i32 %22, i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local i64 @ata_tf_read_block(%struct.ata_taskfile*, %struct.ata_device*) #1

declare dso_local i32 @scsi_set_sense_information(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
