; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_sense_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_sense_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }

@SETFEATURE_SENSE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to enable Sense Data Reporting, Emask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_dev_config_sense_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_config_sense_reporting(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %4 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %5 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ata_id_has_sense_reporting(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ata_id_sense_reporting_enabled(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %27

17:                                               ; preds = %10
  %18 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %19 = load i32, i32* @SETFEATURE_SENSE_DATA, align 4
  %20 = call i32 @ata_dev_set_feature(%struct.ata_device* %18, i32 %19, i32 1)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ata_dev_dbg(%struct.ata_device* %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %9, %16, %23, %17
  ret void
}

declare dso_local i32 @ata_id_has_sense_reporting(i32) #1

declare dso_local i64 @ata_id_sense_reporting_enabled(i32) #1

declare dso_local i32 @ata_dev_set_feature(%struct.ata_device*, i32, i32) #1

declare dso_local i32 @ata_dev_dbg(%struct.ata_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
