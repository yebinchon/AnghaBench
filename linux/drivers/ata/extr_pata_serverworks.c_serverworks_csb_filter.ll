; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_serverworks.c_serverworks_csb_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_serverworks.c_serverworks_csb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_ID_PROD = common dso_local global i32 0, align 4
@csb_bad_ata100 = common dso_local global i8** null, align 8
@ATA_SHIFT_UDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*, i64)* @serverworks_csb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serverworks_csb_filter(%struct.ata_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATA_DEV_ATA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATA_ID_PROD, align 4
  %28 = trunc i64 %13 to i32
  %29 = call i32 @ata_id_c_string(i32 %26, i8* %15, i32 %27, i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %49, %23
  %31 = load i8**, i8*** @csb_bad_ata100, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcmp(i8* %38, i8* %15)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ATA_SHIFT_UDMA, align 4
  %43 = shl i32 224, %42
  %44 = xor i32 %43, -1
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %41, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_id_c_string(i32, i8*, i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
