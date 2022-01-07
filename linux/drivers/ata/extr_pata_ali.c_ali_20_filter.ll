; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_20_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ali.c_ali_20_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_MASK_MWDMA = common dso_local global i64 0, align 8
@ATA_MASK_UDMA = common dso_local global i64 0, align 8
@ATA_ID_PROD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WDC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @ali_20_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ali_20_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATA_DEV_ATA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i64, i64* @ATA_MASK_MWDMA, align 8
  %21 = load i64, i64* @ATA_MASK_UDMA, align 8
  %22 = or i64 %20, %21
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATA_ID_PROD, align 4
  %31 = trunc i64 %11 to i32
  %32 = call i32 @ata_id_c_string(i32 %29, i8* %13, i32 %30, i32 %31)
  %33 = call i64 @strstr(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i64, i64* @ATA_MASK_UDMA, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %5, align 8
  store i64 %39, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %3, align 8
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_id_c_string(i32, i8*, i32, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
