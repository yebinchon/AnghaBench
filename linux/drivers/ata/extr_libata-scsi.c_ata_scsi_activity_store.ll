; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_activity_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_activity_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_device*, i32)* }
%struct.ata_device = type { i32 }

@ATA_FLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ata_scsi_activity_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ata_scsi_activity_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %10, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ata_port* @ata_shost_to_port(i32 %19)
  store %struct.ata_port* %20, %struct.ata_port** %11, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %23 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %21, %struct.scsi_device* %22)
  store %struct.ata_device* %23, %struct.ata_device** %12, align 8
  %24 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %25 = icmp ne %struct.ata_device* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %4
  %27 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ata_device*, i32)*, i32 (%struct.ata_device*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.ata_device*, i32)* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %26
  %34 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ATA_FLAG_SW_ACTIVITY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @simple_strtoul(i8* %41, i32* null, i32 0)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %60 [
    i32 128, label %44
    i32 129, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %40, %40, %40
  %45 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ata_device*, i32)*, i32 (%struct.ata_device*, i32)** %48, align 8
  %50 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 %49(%struct.ata_device* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %64

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %5, align 8
  br label %64

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %33, %26, %4
  %62 = load i64, i64* @EINVAL, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %61, %57, %55
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
