; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_trusted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_trusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i32* }

@ATA_LOG_SECURITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Security Log not supported\0A\00", align 1
@ATA_LOG_IDENTIFY_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to read Security Log, Emask 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Trusted Computing capability qword not valid!\0A\00", align 1
@ATA_DFLAG_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_dev_config_trusted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_config_trusted(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ata_id_has_trusted(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %19 = load i32, i32* @ATA_LOG_SECURITY, align 4
  %20 = call i32 @ata_identify_page_supported(%struct.ata_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %24 = call i32 @ata_dev_warn(%struct.ata_device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

25:                                               ; preds = %17
  %26 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %27 = load i32, i32* @ATA_LOG_IDENTIFY_DEVICE, align 4
  %28 = load i32, i32* @ATA_LOG_SECURITY, align 4
  %29 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ata_read_log_page(%struct.ata_device* %26, i32 %27, i32 %28, i32* %31, i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_dbg(%struct.ata_device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %61

39:                                               ; preds = %25
  %40 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 40
  %44 = call i64 @get_unaligned_le64(i32* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = and i64 %45, -9223372036854775808
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %50 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_dbg(%struct.ata_device* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %61

51:                                               ; preds = %39
  %52 = load i64, i64* %4, align 8
  %53 = and i64 %52, 1
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @ATA_DFLAG_TRUSTED, align 4
  %57 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %58 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %16, %22, %35, %48, %55, %51
  ret void
}

declare dso_local i32 @ata_id_has_trusted(i32) #1

declare dso_local i32 @ata_identify_page_supported(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ata_dev_dbg(%struct.ata_device*, i8*, ...) #1

declare dso_local i64 @get_unaligned_le64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
