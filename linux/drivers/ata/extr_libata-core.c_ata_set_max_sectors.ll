; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_set_max_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_set_max_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_CMD_SET_MAX_EXT = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_CMD_SET_MAX = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to set max address (err_mask=0x%x)\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_ABORTED = common dso_local global i32 0, align 4
@ATA_IDNF = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @ata_set_max_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_set_max_sectors(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ata_id_has_lba48(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = call i32 @ata_tf_init(%struct.ata_device* %15, %struct.ata_taskfile* %7)
  %17 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %18 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load i32, i32* @ATA_CMD_SET_MAX_EXT, align 4
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 10
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 32
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 40
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  br label %53

44:                                               ; preds = %2
  %45 = load i32, i32* @ATA_CMD_SET_MAX, align 4
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 10
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 24
  %49 = and i32 %48, 15
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %44, %25
  %54 = load i32, i32* @ATA_PROT_NODATA, align 4
  %55 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 9
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @ATA_LBA, align 4
  %57 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 0
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 6
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 7
  store i32 %70, i32* %71, align 4
  %72 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %73 = load i32, i32* @DMA_NONE, align 4
  %74 = call i32 @ata_exec_internal(%struct.ata_device* %72, %struct.ata_taskfile* %7, i32* null, i32 %73, i32* null, i32 0, i32 0)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %53
  %78 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ata_dev_warn(%struct.ata_device* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @AC_ERR_DEV, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATA_ABORTED, align 4
  %88 = load i32, i32* @ATA_IDNF, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* @EACCES, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %99

95:                                               ; preds = %84, %77
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %95, %92
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ata_id_has_lba48(i32) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
