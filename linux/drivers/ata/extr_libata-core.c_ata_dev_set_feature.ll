; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_set_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"set features - SATA features\0A\00", align 1
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@SETFEATURES_SPINUP = common dso_local global i64 0, align 8
@ata_probe_timeout = common dso_local global i32 0, align 4
@SETFEATURES_SPINUP_TIMEOUT = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"EXIT, err_mask=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_dev_set_feature(%struct.ata_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_taskfile, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = call i32 @ata_tf_init(%struct.ata_device* %11, %struct.ata_taskfile* %7)
  %13 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %14 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 3
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %18 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @ATA_PROT_NODATA, align 4
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SETFEATURES_SPINUP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %3
  %31 = load i32, i32* @ata_probe_timeout, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ata_probe_timeout, align 4
  %35 = mul nsw i32 %34, 1000
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @SETFEATURES_SPINUP_TIMEOUT, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %38, %3
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = load i32, i32* @DMA_NONE, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @ata_exec_internal(%struct.ata_device* %42, %struct.ata_taskfile* %7, i32* null, i32 %43, i32* null, i32 0, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
