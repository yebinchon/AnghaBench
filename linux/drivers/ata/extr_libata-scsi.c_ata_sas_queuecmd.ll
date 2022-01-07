; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_sas_queuecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_sas_queuecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DID_BAD_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sas_queuecmd(%struct.scsi_cmnd* %0, %struct.ata_port* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.ata_port* %1, %struct.ata_port** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = call i32 @ata_scsi_dump_cdb(%struct.ata_port* %6, %struct.scsi_cmnd* %7)
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ata_dev_enabled(i32 %12)
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd* %17, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @DID_BAD_TARGET, align 4
  %25 = shl i32 %24, 16
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %29, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = call i32 %30(%struct.scsi_cmnd* %31)
  br label %33

33:                                               ; preds = %23, %16
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @ata_scsi_dump_cdb(%struct.ata_port*, %struct.scsi_cmnd*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_dev_enabled(i32) #1

declare dso_local i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
