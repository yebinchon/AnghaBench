; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_blacklisted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_blacklist_entry = type { i64, i32*, i32* }
%struct.ata_device = type { i32 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_ID_FW_REV_LEN = common dso_local global i32 0, align 4
@ata_device_blacklist = common dso_local global %struct.ata_blacklist_entry* null, align 8
@ATA_ID_PROD = common dso_local global i32 0, align 4
@ATA_ID_FW_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ata_device*)* @ata_dev_blacklisted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ata_dev_blacklisted(%struct.ata_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_blacklist_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %9 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @ATA_ID_FW_REV_LEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** @ata_device_blacklist, align 8
  store %struct.ata_blacklist_entry* %18, %struct.ata_blacklist_entry** %7, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATA_ID_PROD, align 4
  %23 = trunc i64 %11 to i32
  %24 = call i32 @ata_id_c_string(i32 %21, i8* %13, i32 %22, i32 %23)
  %25 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATA_ID_FW_REV, align 4
  %29 = trunc i64 %16 to i32
  %30 = call i32 @ata_id_c_string(i32 %27, i8* %17, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %62, %1
  %32 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %33 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %38 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @glob_match(i32* %39, i8* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %44 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %49 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %66

51:                                               ; preds = %42
  %52 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %53 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @glob_match(i32* %54, i8* %17)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %59 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %66

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.ata_blacklist_entry*, %struct.ata_blacklist_entry** %7, align 8
  %64 = getelementptr inbounds %struct.ata_blacklist_entry, %struct.ata_blacklist_entry* %63, i32 1
  store %struct.ata_blacklist_entry* %64, %struct.ata_blacklist_entry** %7, align 8
  br label %31

65:                                               ; preds = %31
  store i64 0, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %57, %47
  %67 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_id_c_string(i32, i8*, i32, i32) #2

declare dso_local i64 @glob_match(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
