; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i32* }

@ATA_DFLAG_NCQ_PRIO_ENABLE = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_PRIO = common dso_local global i32 0, align 4
@ATA_LOG_IDENTIFY_DEVICE = common dso_local global i32 0, align 4
@ATA_LOG_SATA_SETTINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to get Identify Device data, Emask 0x%x\0A\00", align 1
@ATA_LOG_NCQ_PRIO_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SATA page does not support priority\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_dev_config_ncq_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_config_ncq_prio(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %3, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ATA_DFLAG_NCQ_PRIO_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ATA_DFLAG_NCQ_PRIO, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %25 = load i32, i32* @ATA_LOG_IDENTIFY_DEVICE, align 4
  %26 = load i32, i32* @ATA_LOG_SATA_SETTINGS, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ata_read_log_page(%struct.ata_device* %24, i32 %25, i32 %26, i32* %29, i32 1)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_dbg(%struct.ata_device* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %62

37:                                               ; preds = %23
  %38 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ATA_LOG_NCQ_PRIO_OFFSET, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 3)
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load i32, i32* @ATA_DFLAG_NCQ_PRIO, align 4
  %49 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %62

53:                                               ; preds = %37
  %54 = load i32, i32* @ATA_DFLAG_NCQ_PRIO, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %57 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %61 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_dbg(%struct.ata_device* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %16, %33, %53, %47
  ret void
}

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ata_dev_dbg(%struct.ata_device*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
