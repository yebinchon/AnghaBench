; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_dev_supports_fua.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_dev_supports_fua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_ID_FW_REV_LEN = common dso_local global i32 0, align 4
@libata_fua = common dso_local global i32 0, align 4
@ATA_ID_PROD = common dso_local global i32 0, align 4
@ATA_ID_FW_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Maxtor\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BANC1G10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ata_dev_supports_fua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_supports_fua(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @ATA_ID_FW_REV_LEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = load i32, i32* @libata_fua, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ata_id_has_fua(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %42

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @ATA_ID_PROD, align 4
  %28 = trunc i64 %10 to i32
  %29 = call i32 @ata_id_c_string(i32* %26, i8* %12, i32 %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @ATA_ID_FW_REV, align 4
  %32 = trunc i64 %15 to i32
  %33 = call i32 @ata_id_c_string(i32* %30, i8* %16, i32 %31, i32 %32)
  %34 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %42

37:                                               ; preds = %25
  %38 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %42

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40, %36, %24, %19
  %43 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_id_has_fua(i32*) #2

declare dso_local i32 @ata_id_c_string(i32*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
