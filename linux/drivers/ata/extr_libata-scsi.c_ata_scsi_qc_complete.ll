; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_qc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, i32, i32, %struct.scsi_cmnd*, %struct.ata_port* }
%struct.scsi_cmnd = type { i32*, i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATA_16 = common dso_local global i32 0, align 4
@ATA_12 = common dso_local global i32 0, align 4
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_scsi_qc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_scsi_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 4
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %3, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 3
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATA_16, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATA_12, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26, %1
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %32
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %43 = call i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd* %42)
  br label %67

44:                                               ; preds = %38, %26
  %45 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %66

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %60 = call i32 @ata_gen_ata_sense(%struct.ata_queued_cmd* %59)
  br label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @SAM_STAT_GOOD, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %79 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 2
  %83 = call i32 @ata_dump_status(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %77, %70, %67
  %85 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %86 = call i32 @ata_qc_done(%struct.ata_queued_cmd* %85)
  ret void
}

declare dso_local i32 @ata_gen_passthru_sense(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_gen_ata_sense(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_dump_status(i32, i32*) #1

declare dso_local i32 @ata_qc_done(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
