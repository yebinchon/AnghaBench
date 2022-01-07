; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_read_log_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_read_log_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ata_taskfile = type { i32, i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"read log page - log 0x%x, page 0x%x\0A\00", align 1
@ATA_FLAG_NO_LOG_PAGE = common dso_local global i64 0, align 8
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_HORKAGE_NO_DMA_LOG = common dso_local global i32 0, align 4
@ATA_CMD_READ_LOG_DMA_EXT = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_CMD_READ_LOG_EXT = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"READ LOG DMA EXT failed, trying PIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"EXIT, err_mask=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_read_log_page(%struct.ata_device* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ata_taskfile, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25)
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @ATA_FLAG_NO_LOG_PAGE, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @AC_ERR_DEV, align 4
  store i32 %32, i32* %6, align 4
  br label %106

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %94, %33
  %35 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %36 = call i32 @ata_tf_init(%struct.ata_device* %35, %struct.ata_taskfile* %13)
  %37 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ata_id_has_read_log_dma_ext(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %49 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATA_HORKAGE_NO_DMA_LOG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ATA_CMD_READ_LOG_DMA_EXT, align 4
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 6
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @ATA_PROT_DMA, align 4
  %58 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  store i32 1, i32* %15, align 4
  br label %64

59:                                               ; preds = %47, %41, %34
  %60 = load i32, i32* @ATA_CMD_READ_LOG_EXT, align 4
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 6
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @ATA_PROT_PIO, align 4
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 5
  store i32 %62, i32* %63, align 8
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 4
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = lshr i32 %71, 8
  %73 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %75 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %78 = or i32 %76, %77
  %79 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %13, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 8
  %82 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %83 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @ATA_SECT_SIZE, align 4
  %87 = mul i32 %85, %86
  %88 = call i32 @ata_exec_internal(%struct.ata_device* %82, %struct.ata_taskfile* %13, i32* null, i32 %83, i8* %84, i32 %87, i32 0)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %64
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @ATA_HORKAGE_NO_DMA_LOG, align 4
  %96 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %97 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %101 = call i32 @ata_dev_warn(%struct.ata_device* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %34

102:                                              ; preds = %91, %64
  %103 = load i32, i32* %14, align 4
  %104 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %31
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i64 @ata_id_has_read_log_dma_ext(i32) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
