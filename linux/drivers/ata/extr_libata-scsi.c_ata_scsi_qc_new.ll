; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_qc_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_qc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i32, i32 (%struct.scsi_cmnd*)*, %struct.scsi_cmnd* }
%struct.ata_device = type { i32 }
%struct.scsi_cmnd = type { i32, {}*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RQF_QUIET = common dso_local global i32 0, align 4
@ATA_QCFLAG_QUIET = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@QUEUE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_queued_cmd* (%struct.ata_device*, %struct.scsi_cmnd*)* @ata_scsi_qc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_queued_cmd* @ata_scsi_qc_new(%struct.ata_device* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ata_queued_cmd* @ata_qc_new_init(%struct.ata_device* %6, i32 %11)
  store %struct.ata_queued_cmd* %12, %struct.ata_queued_cmd** %5, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %14 = icmp ne %struct.ata_queued_cmd* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 4
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.scsi_cmnd*)**
  %22 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %21, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 3
  store i32 (%struct.scsi_cmnd*)* %22, i32 (%struct.scsi_cmnd*)** %24, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = call i32 @scsi_sglist(%struct.scsi_cmnd* %25)
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %29)
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RQF_QUIET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %15
  %42 = load i32, i32* @ATA_QCFLAG_QUIET, align 4
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %15
  br label %62

48:                                               ; preds = %2
  %49 = load i32, i32* @DID_OK, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* @QUEUE_FULL, align 4
  %52 = shl i32 %51, 1
  %53 = or i32 %50, %52
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 1
  %58 = bitcast {}** %57 to i32 (%struct.scsi_cmnd*)**
  %59 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %58, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = call i32 %59(%struct.scsi_cmnd* %60)
  br label %62

62:                                               ; preds = %48, %47
  %63 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  ret %struct.ata_queued_cmd* %63
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_new_init(%struct.ata_device*, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
