; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq_send_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_config_ncq_send_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i32 }

@ATA_LOG_NCQ_SEND_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NCQ Send/Recv Log not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to get NCQ Send/Recv Log Emask 0x%x\0A\00", align 1
@ATA_DFLAG_NCQ_SEND_RECV = common dso_local global i32 0, align 4
@ATA_LOG_NCQ_SEND_RECV_SIZE = common dso_local global i32 0, align 4
@ATA_HORKAGE_NO_NCQ_TRIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"disabling queued TRIM support\0A\00", align 1
@ATA_LOG_NCQ_SEND_RECV_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_dev_config_ncq_send_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_dev_config_ncq_send_recv(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %12 = load i32, i32* @ATA_LOG_NCQ_SEND_RECV, align 4
  %13 = call i32 @ata_log_supported(%struct.ata_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %17 = call i32 @ata_dev_warn(%struct.ata_device* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %20 = load i32, i32* @ATA_LOG_NCQ_SEND_RECV, align 4
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
  %30 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_dbg(%struct.ata_device* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %63

31:                                               ; preds = %18
  %32 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %5, align 8
  %35 = load i32, i32* @ATA_DFLAG_NCQ_SEND_RECV, align 4
  %36 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %37 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATA_LOG_NCQ_SEND_RECV_SIZE, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %43, i32 %44)
  %46 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ATA_HORKAGE_NO_NCQ_TRIM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %31
  %53 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %54 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_dbg(%struct.ata_device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ATA_LOG_NCQ_SEND_RECV_DSM_TRIM, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** %5, align 8
  %58 = load i64, i64* @ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %52, %31
  br label %63

63:                                               ; preds = %15, %62, %27
  ret void
}

declare dso_local i32 @ata_log_supported(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ata_dev_dbg(%struct.ata_device*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
