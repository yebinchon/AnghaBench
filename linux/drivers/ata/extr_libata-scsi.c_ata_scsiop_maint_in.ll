; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_maint_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsiop_maint_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { %struct.TYPE_2__*, %struct.ata_device* }
%struct.TYPE_2__ = type { i32* }
%struct.ata_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid command format %d\0A\00", align 1
@ATA_DEV_ZAC = common dso_local global i32 0, align 4
@ATA_DFLAG_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_maint_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_maint_in(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %10 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %9, i32 0, i32 1
  %11 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  store %struct.ata_device* %11, %struct.ata_device** %5, align 8
  %12 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %13 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ata_dev_warn(%struct.ata_device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 2, i32* %8, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %55 [
    i32 156, label %31
    i32 152, label %31
    i32 151, label %31
    i32 147, label %31
    i32 138, label %31
    i32 146, label %31
    i32 145, label %31
    i32 136, label %31
    i32 144, label %31
    i32 140, label %31
    i32 141, label %31
    i32 135, label %31
    i32 139, label %31
    i32 155, label %31
    i32 148, label %31
    i32 150, label %31
    i32 149, label %31
    i32 130, label %31
    i32 132, label %31
    i32 131, label %31
    i32 158, label %31
    i32 157, label %31
    i32 134, label %31
    i32 133, label %31
    i32 154, label %31
    i32 153, label %31
    i32 137, label %31
    i32 129, label %32
    i32 128, label %32
    i32 143, label %46
    i32 142, label %46
  ]

31:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  store i32 3, i32* %7, align 4
  br label %56

32:                                               ; preds = %27, %27
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ata_id_zoned_cap(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATA_DEV_ZAC, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  store i32 3, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %38
  br label %56

46:                                               ; preds = %27, %27
  %47 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATA_DFLAG_TRUSTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 3, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %46
  br label %56

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %54, %45, %31
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32) #1

declare dso_local i32 @ata_id_zoned_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
