; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_firmware_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_firmware_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.fw_sysfs = type { %struct.fw_priv* }
%struct.fw_priv = type { i64, i64 }

@fw_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @firmware_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @firmware_data_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.fw_sysfs*, align 8
  %15 = alloca %struct.fw_priv*, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.kobject*, %struct.kobject** %8, align 8
  %18 = call %struct.device* @kobj_to_dev(%struct.kobject* %17)
  store %struct.device* %18, %struct.device** %13, align 8
  %19 = load %struct.device*, %struct.device** %13, align 8
  %20 = call %struct.fw_sysfs* @to_fw_sysfs(%struct.device* %19)
  store %struct.fw_sysfs* %20, %struct.fw_sysfs** %14, align 8
  %21 = call i32 @mutex_lock(i32* @fw_lock)
  %22 = load %struct.fw_sysfs*, %struct.fw_sysfs** %14, align 8
  %23 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %22, i32 0, i32 0
  %24 = load %struct.fw_priv*, %struct.fw_priv** %23, align 8
  store %struct.fw_priv* %24, %struct.fw_priv** %15, align 8
  %25 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %26 = icmp ne %struct.fw_priv* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %29 = call i64 @fw_sysfs_done(%struct.fw_priv* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %6
  %32 = load i64, i64* @ENODEV, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %16, align 8
  br label %74

34:                                               ; preds = %27
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %37 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 0, i64* %16, align 8
  br label %74

41:                                               ; preds = %34
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %44 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp ugt i64 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %51 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i64, i64* %12, align 8
  store i64 %56, i64* %16, align 8
  %57 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %58 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @firmware_rw_data(%struct.fw_priv* %62, i8* %63, i64 %64, i64 %65, i32 1)
  br label %73

67:                                               ; preds = %55
  %68 = load %struct.fw_priv*, %struct.fw_priv** %15, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @firmware_rw(%struct.fw_priv* %68, i8* %69, i64 %70, i64 %71, i32 1)
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %40, %31
  %75 = call i32 @mutex_unlock(i32* @fw_lock)
  %76 = load i64, i64* %16, align 8
  ret i64 %76
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.fw_sysfs* @to_fw_sysfs(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fw_sysfs_done(%struct.fw_priv*) #1

declare dso_local i32 @firmware_rw_data(%struct.fw_priv*, i8*, i64, i64, i32) #1

declare dso_local i32 @firmware_rw(%struct.fw_priv*, i8*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
