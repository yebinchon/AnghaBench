; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_89.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_89.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { i8* }
%struct.ata_taskfile = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"linux   \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"libata          \00", align 1
@DRV_VERSION = common dso_local global i8* null, align 8
@ATA_DRDY = common dso_local global i32 0, align 4
@ATA_CMD_ID_ATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_inq_89 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_inq_89(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_taskfile, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 @memset(%struct.ata_taskfile* %5, i32 0, i32 12)
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 137, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 2, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 56, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  %15 = call i32 @memcpy(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 16
  %18 = call i32 @memcpy(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 32
  %21 = load i8*, i8** @DRV_VERSION, align 8
  %22 = call i32 @memcpy(i32* %20, i8* %21, i32 4)
  %23 = load i32, i32* @ATA_DRDY, align 4
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %5, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %5, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 36
  %29 = call i32 @ata_tf_to_fis(%struct.ata_taskfile* %5, i32 0, i32 1, i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 36
  store i32 52, i32* %31, align 4
  %32 = load i32, i32* @ATA_CMD_ID_ATA, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 56
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 60
  %37 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %38 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = call i32 @memcpy(i32* %36, i8* %40, i32 512)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ata_taskfile*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @ata_tf_to_fis(%struct.ata_taskfile*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
