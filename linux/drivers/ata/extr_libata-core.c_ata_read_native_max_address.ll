; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_read_native_max_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_read_native_max_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_CMD_READ_NATIVE_MAX_EXT = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_CMD_READ_NATIVE_MAX = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to read native max address (err_mask=0x%x)\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_ABORTED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ATA_HORKAGE_HPA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i64*)* @ata_read_native_max_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_read_native_max_address(%struct.ata_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ata_id_has_lba48(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = call i32 @ata_tf_init(%struct.ata_device* %13, %struct.ata_taskfile* %7)
  %15 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %16 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @ATA_CMD_READ_NATIVE_MAX_EXT, align 4
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ATA_CMD_READ_NATIVE_MAX, align 4
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @ATA_PROT_NODATA, align 4
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @ATA_LBA, align 4
  %37 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %41 = load i32, i32* @DMA_NONE, align 4
  %42 = call i32 @ata_exec_internal(%struct.ata_device* %40, %struct.ata_taskfile* %7, i32* null, i32 %41, i32* null, i32 0, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %33
  %46 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ata_dev_warn(%struct.ata_device* %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @AC_ERR_DEV, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATA_ABORTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EACCES, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %87

61:                                               ; preds = %52, %45
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %87

64:                                               ; preds = %33
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = call i64 @ata_tf_to_lba48(%struct.ata_taskfile* %7)
  %69 = add nsw i64 %68, 1
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  br label %75

71:                                               ; preds = %64
  %72 = call i64 @ata_tf_to_lba(%struct.ata_taskfile* %7)
  %73 = add nsw i64 %72, 1
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %77 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATA_HORKAGE_HPA_SIZE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i64*, i64** %5, align 8
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %82, %75
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %61, %58
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ata_id_has_lba48(i32) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32) #1

declare dso_local i64 @ata_tf_to_lba48(%struct.ata_taskfile*) #1

declare dso_local i64 @ata_tf_to_lba(%struct.ata_taskfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
