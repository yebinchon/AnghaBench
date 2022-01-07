; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_atapi_eh_clear_ua.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_atapi_eh_clear_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@ATA_EH_UA_TRIES = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TEST_UNIT_READY failed (err_mask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to clear UNIT ATTENTION (err_mask=0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"UNIT ATTENTION persists after %d tries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @atapi_eh_clear_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atapi_eh_clear_ua(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ATA_EH_UA_TRIES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %21 = call i32 @atapi_eh_tur(%struct.ata_device* %20, i64* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AC_ERR_DEV, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ata_dev_warn(%struct.ata_device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %63

34:                                               ; preds = %24, %12
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @UNIT_ATTENTION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %63

42:                                               ; preds = %37
  %43 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @atapi_eh_request_sense(%struct.ata_device* %43, i64* %44, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ata_dev_warn(%struct.ata_device* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %8

59:                                               ; preds = %8
  %60 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %61 = load i32, i32* @ATA_EH_UA_TRIES, align 4
  %62 = call i32 @ata_dev_warn(%struct.ata_device* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %49, %41, %28
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @atapi_eh_tur(%struct.ata_device*, i64*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32) #1

declare dso_local i32 @atapi_eh_request_sense(%struct.ata_device*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
