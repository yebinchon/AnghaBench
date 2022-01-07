; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_find_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_port = type { i32 }
%struct.scsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_device* (%struct.ata_port*, %struct.scsi_device*)* @ata_scsi_find_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.ata_device*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %9 = call %struct.ata_device* @__ata_scsi_find_dev(%struct.ata_port* %7, %struct.scsi_device* %8)
  store %struct.ata_device* %9, %struct.ata_device** %6, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %11 = icmp ne %struct.ata_device* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %14 = call i32 @ata_dev_enabled(%struct.ata_device* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.ata_device* null, %struct.ata_device** %3, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  store %struct.ata_device* %24, %struct.ata_device** %3, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  ret %struct.ata_device* %26
}

declare dso_local %struct.ata_device* @__ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
