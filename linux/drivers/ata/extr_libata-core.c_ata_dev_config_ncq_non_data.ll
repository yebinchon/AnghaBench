; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq_non_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq_non_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i32 }

@ATA_LOG_NCQ_NON_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NCQ Send/Recv Log not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to get NCQ Non-Data Log Emask 0x%x\0A\00", align 1
@ATA_LOG_NCQ_NON_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_dev_config_ncq_non_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_config_ncq_non_data(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %12 = load i32, i32* @ATA_LOG_NCQ_NON_DATA, align 4
  %13 = call i32 @ata_log_supported(%struct.ata_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %17 = call i32 @ata_dev_warn(%struct.ata_device* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %20 = load i32, i32* @ATA_LOG_NCQ_NON_DATA, align 4
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ata_read_log_page(%struct.ata_device* %19, i32 %20, i32 0, i32 %23, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ata_dev_dbg(%struct.ata_device* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %41

31:                                               ; preds = %18
  %32 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATA_LOG_NCQ_NON_DATA_SIZE, align 4
  %40 = call i32 @memcpy(i32* %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %15, %31, %27
  ret void
}

declare dso_local i32 @ata_log_supported(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ata_dev_dbg(%struct.ata_device*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
