; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_park_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_park_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32, i32 }
%struct.ata_device = type { i64, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ATA_TMOUT_MAX_PARK = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATA_DFLAG_NO_UNLOAD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ATA_EH_PARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ata_scsi_park_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_park_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.scsi_device* @to_scsi_device(%struct.device* %16)
  store %struct.scsi_device* %17, %struct.scsi_device** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 10, i64* %13)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %5, align 4
  br label %145

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = icmp slt i64 %25, -2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %145

30:                                               ; preds = %24
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @ATA_TMOUT_MAX_PARK, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @EOVERFLOW, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* @ATA_TMOUT_MAX_PARK, align 8
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ata_port* @ata_shost_to_port(i32 %41)
  store %struct.ata_port* %42, %struct.ata_port** %11, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @spin_lock_irqsave(i32 %45, i64 %46)
  %48 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %49 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %50 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %48, %struct.scsi_device* %49)
  store %struct.ata_device* %50, %struct.ata_device** %12, align 8
  %51 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %52 = icmp ne %struct.ata_device* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  br label %129

60:                                               ; preds = %38
  %61 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ATA_DEV_ATA, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %68 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATA_DEV_ZAC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  br label %129

75:                                               ; preds = %66, %60
  %76 = load i64, i64* %13, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %80 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %15, align 4
  br label %129

88:                                               ; preds = %78
  %89 = load i32, i32* @jiffies, align 4
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @ata_deadline(i32 %89, i64 %90)
  %92 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %93 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @ATA_EH_PARK, align 4
  %95 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %96 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %95, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %102 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %94
  store i32 %106, i32* %104, align 4
  %107 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %108 = call i32 @ata_port_schedule_eh(%struct.ata_port* %107)
  %109 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %110 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %109, i32 0, i32 1
  %111 = call i32 @complete(i32* %110)
  br label %128

112:                                              ; preds = %75
  %113 = load i64, i64* %13, align 8
  switch i64 %113, label %127 [
    i64 -1, label %114
    i64 -2, label %121
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %118 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %127

121:                                              ; preds = %112
  %122 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %123 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %124 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %112, %121, %114
  br label %128

128:                                              ; preds = %127, %88
  br label %129

129:                                              ; preds = %128, %85, %72, %57
  %130 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %131 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32 %132, i64 %133)
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  br label %142

140:                                              ; preds = %129
  %141 = load i64, i64* %9, align 8
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi i64 [ %139, %137 ], [ %141, %140 ]
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %27, %22
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_deadline(i32, i64) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
