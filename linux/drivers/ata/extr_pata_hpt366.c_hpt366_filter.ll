; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt366.c_hpt366_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt366.c_hpt366_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64 }

@ATA_DEV_ATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"UDMA\00", align 1
@bad_ata33 = common dso_local global i32 0, align 4
@ATA_MASK_UDMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"UDMA3\00", align 1
@bad_ata66_3 = common dso_local global i32 0, align 4
@ATA_SHIFT_UDMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"UDMA4\00", align 1
@bad_ata66_4 = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_MASK_MWDMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @hpt366_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpt366_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ATA_DEV_ATA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = load i32, i32* @bad_ata33, align 4
  %13 = call i64 @hpt_dma_blacklisted(%struct.ata_device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* @ATA_MASK_UDMA, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %22 = load i32, i32* @bad_ata66_3, align 4
  %23 = call i64 @hpt_dma_blacklisted(%struct.ata_device* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  %27 = shl i32 248, %26
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %34 = load i32, i32* @bad_ata66_4, align 4
  %35 = call i64 @hpt_dma_blacklisted(%struct.ata_device* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  %39 = shl i32 240, %38
  %40 = xor i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %37, %32
  br label %59

45:                                               ; preds = %2
  %46 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i64, i64* @ATA_MASK_MWDMA, align 8
  %53 = load i64, i64* @ATA_MASK_UDMA, align 8
  %54 = or i64 %52, %53
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %4, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i64 @hpt_dma_blacklisted(%struct.ata_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
