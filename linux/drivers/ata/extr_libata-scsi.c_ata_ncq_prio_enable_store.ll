; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_ncq_prio_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_ncq_prio_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32 }
%struct.ata_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_PRIO_ENABLE = common dso_local global i32 0, align 4
@ATA_EH_REVALIDATE = common dso_local global i32 0, align 4
@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ata_ncq_prio_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ncq_prio_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtol(i8* %17, i32 10, i64* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %132

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = icmp sgt i64 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %132

32:                                               ; preds = %26
  %33 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ata_port* @ata_shost_to_port(i32 %35)
  store %struct.ata_port* %36, %struct.ata_port** %11, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %39 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %37, %struct.scsi_device* %38)
  store %struct.ata_device* %39, %struct.ata_device** %12, align 8
  %40 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %41 = icmp ne %struct.ata_device* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %132

49:                                               ; preds = %32
  %50 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %51 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @spin_lock_irq(i32 %52)
  %54 = load i64, i64* %13, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @ATA_DFLAG_NCQ_PRIO_ENABLE, align 4
  %58 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %69

62:                                               ; preds = %49
  %63 = load i32, i32* @ATA_DFLAG_NCQ_PRIO_ENABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %71 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %72 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %70
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @ATA_EHI_QUIET, align 4
  %79 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %80 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %78
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %87 = call i32 @ata_port_schedule_eh(%struct.ata_port* %86)
  %88 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %89 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @spin_unlock_irq(i32 %90)
  %92 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %93 = call i32 @ata_port_wait_eh(%struct.ata_port* %92)
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %69
  %97 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %98 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @spin_lock_irq(i32 %99)
  %101 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %102 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ATA_DFLAG_NCQ_PRIO, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @ATA_DFLAG_NCQ_PRIO_ENABLE, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %111 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %107, %96
  %117 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %118 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @spin_unlock_irq(i32 %119)
  br label %121

121:                                              ; preds = %116, %69
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  br label %129

127:                                              ; preds = %121
  %128 = load i64, i64* %9, align 8
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i64 [ %126, %124 ], [ %128, %127 ]
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %129, %46, %29, %21
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @ata_port_wait_eh(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
