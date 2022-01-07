; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c___ata_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c___ata_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }

@ATA_DFLAG_NCQ_OFF = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ata_change_queue_depth(%struct.ata_port* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %3
  %19 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  br label %94

22:                                               ; preds = %12
  %23 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %25 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %23, %struct.scsi_device* %24)
  store %struct.ata_device* %25, %struct.ata_device** %8, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %27 = icmp ne %struct.ata_device* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %30 = call i32 @ata_dev_enabled(%struct.ata_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %94

36:                                               ; preds = %28
  %37 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32 %39, i64 %40)
  %42 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %45 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %54, label %50

50:                                               ; preds = %36
  %51 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %52 = call i32 @ata_ncq_enabled(%struct.ata_device* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %36
  %55 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %56 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %57 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %50
  %61 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %62 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32 %63, i64 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @min(i32 %66, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %75 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ata_id_queue_depth(i32 %76)
  %78 = call i32 @min(i32 %73, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %81 = call i32 @min(i32 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %60
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %94

90:                                               ; preds = %60
  %91 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %87, %32, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ata_id_queue_depth(i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
