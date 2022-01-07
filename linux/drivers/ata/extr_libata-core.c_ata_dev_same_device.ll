; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_same_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_same_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32* }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_ID_SERNO_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"class mismatch %d != %d\0A\00", align 1
@ATA_ID_PROD = common dso_local global i32 0, align 4
@ATA_ID_SERNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"model number mismatch '%s' != '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"serial number mismatch '%s' != '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32, i32*)* @ata_dev_same_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_same_device(%struct.ata_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = mul nuw i64 2, %18
  %21 = alloca i8, i64 %20, align 16
  store i64 %18, i64* %10, align 8
  %22 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = mul nuw i64 2, %24
  %26 = alloca i8, i64 %25, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_info(%struct.ata_device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %100

39:                                               ; preds = %3
  %40 = load i32*, i32** %8, align 8
  %41 = mul nsw i64 0, %18
  %42 = getelementptr inbounds i8, i8* %21, i64 %41
  %43 = load i32, i32* @ATA_ID_PROD, align 4
  %44 = mul nsw i64 0, %18
  %45 = getelementptr inbounds i8, i8* %21, i64 %44
  %46 = trunc i64 %18 to i32
  %47 = call i32 @ata_id_c_string(i32* %40, i8* %42, i32 %43, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = mul nsw i64 1, %18
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  %51 = load i32, i32* @ATA_ID_PROD, align 4
  %52 = mul nsw i64 1, %18
  %53 = getelementptr inbounds i8, i8* %21, i64 %52
  %54 = trunc i64 %18 to i32
  %55 = call i32 @ata_id_c_string(i32* %48, i8* %50, i32 %51, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = mul nsw i64 0, %24
  %58 = getelementptr inbounds i8, i8* %26, i64 %57
  %59 = load i32, i32* @ATA_ID_SERNO, align 4
  %60 = mul nsw i64 0, %24
  %61 = getelementptr inbounds i8, i8* %26, i64 %60
  %62 = trunc i64 %24 to i32
  %63 = call i32 @ata_id_c_string(i32* %56, i8* %58, i32 %59, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = mul nsw i64 1, %24
  %66 = getelementptr inbounds i8, i8* %26, i64 %65
  %67 = load i32, i32* @ATA_ID_SERNO, align 4
  %68 = mul nsw i64 1, %24
  %69 = getelementptr inbounds i8, i8* %26, i64 %68
  %70 = trunc i64 %24 to i32
  %71 = call i32 @ata_id_c_string(i32* %64, i8* %66, i32 %67, i32 %70)
  %72 = mul nsw i64 0, %18
  %73 = getelementptr inbounds i8, i8* %21, i64 %72
  %74 = mul nsw i64 1, %18
  %75 = getelementptr inbounds i8, i8* %21, i64 %74
  %76 = call i64 @strcmp(i8* %73, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %39
  %79 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %80 = mul nsw i64 0, %18
  %81 = getelementptr inbounds i8, i8* %21, i64 %80
  %82 = mul nsw i64 1, %18
  %83 = getelementptr inbounds i8, i8* %21, i64 %82
  %84 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_info(%struct.ata_device* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %83)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %100

85:                                               ; preds = %39
  %86 = mul nsw i64 0, %24
  %87 = getelementptr inbounds i8, i8* %26, i64 %86
  %88 = mul nsw i64 1, %24
  %89 = getelementptr inbounds i8, i8* %26, i64 %88
  %90 = call i64 @strcmp(i8* %87, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %94 = mul nsw i64 0, %24
  %95 = getelementptr inbounds i8, i8* %26, i64 %94
  %96 = mul nsw i64 1, %24
  %97 = getelementptr inbounds i8, i8* %26, i64 %96
  %98 = call i32 (%struct.ata_device*, i8*, ...) @ata_dev_info(%struct.ata_device* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %95, i8* %97)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %100

99:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %92, %78, %32
  %101 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, ...) #2

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
