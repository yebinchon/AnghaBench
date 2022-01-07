; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.request_queue*, i32 }
%struct.request_queue = type { i64, i32* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32* }

@ATA_DFLAG_DETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_scsi_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ata_port* @ata_shost_to_port(i32 %9)
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32 %24, i64 %25)
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = call %struct.ata_device* @__ata_scsi_find_dev(%struct.ata_port* %27, %struct.scsi_device* %28)
  store %struct.ata_device* %29, %struct.ata_device** %6, align 8
  %30 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %31 = icmp ne %struct.ata_device* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %21
  %33 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* @ATA_DFLAG_DETACH, align 4
  %41 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %42 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = call i32 @ata_port_schedule_eh(%struct.ata_port* %45)
  br label %47

47:                                               ; preds = %37, %32, %21
  %48 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %49 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  %53 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %58 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %47, %20
  ret void
}

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ata_device* @__ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
