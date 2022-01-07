; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_queuecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_queuecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32 }
%struct.ata_device = type { i32 }

@DID_BAD_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_scsi_queuecmd(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host* %13)
  store %struct.ata_port* %14, %struct.ata_port** %5, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = call i32 @ata_scsi_dump_cdb(%struct.ata_port* %20, %struct.scsi_cmnd* %21)
  %23 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %25 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %23, %struct.scsi_device* %24)
  store %struct.ata_device* %25, %struct.ata_device** %6, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %27 = call i64 @likely(%struct.ata_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %32 = call i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd* %30, %struct.ata_device* %31)
  store i32 %32, i32* %8, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load i32, i32* @DID_BAD_TARGET, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 1
  %40 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %39, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = call i32 %40(%struct.scsi_cmnd* %41)
  br label %43

43:                                               ; preds = %33, %29
  %44 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32 %46, i64 %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_scsi_dump_cdb(%struct.ata_port*, %struct.scsi_cmnd*) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i64 @likely(%struct.ata_device*) #1

declare dso_local i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd*, %struct.ata_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
