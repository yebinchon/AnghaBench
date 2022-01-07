; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_fw_load_from_user_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_fw_load_from_user_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.device = type { i32 }
%struct.fw_sysfs = type { i32 }

@FW_OPT_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"firmware: %s loading timed out\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"firmware: %s will not be loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware*, i8*, %struct.device*, i32)* @fw_load_from_user_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_load_from_user_helper(%struct.firmware* %0, i8* %1, %struct.device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_sysfs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i64 (...) @firmware_loading_timeout()
  store i64 %13, i64* %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @FW_OPT_NOWAIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @usermodehelper_read_lock_wait(i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %74

29:                                               ; preds = %18
  br label %41

30:                                               ; preds = %4
  %31 = call i32 (...) @usermodehelper_read_trylock()
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.fw_sysfs* @fw_create_instance(%struct.firmware* %42, i8* %43, %struct.device* %44, i32 %45)
  store %struct.fw_sysfs* %46, %struct.fw_sysfs** %10, align 8
  %47 = load %struct.fw_sysfs*, %struct.fw_sysfs** %10, align 8
  %48 = call i64 @IS_ERR(%struct.fw_sysfs* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.fw_sysfs*, %struct.fw_sysfs** %10, align 8
  %52 = call i32 @PTR_ERR(%struct.fw_sysfs* %51)
  store i32 %52, i32* %12, align 4
  br label %71

53:                                               ; preds = %41
  %54 = load %struct.firmware*, %struct.firmware** %6, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fw_sysfs*, %struct.fw_sysfs** %10, align 8
  %58 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fw_sysfs*, %struct.fw_sysfs** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @fw_load_sysfs_fallback(%struct.fw_sysfs* %59, i32 %60, i64 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = load %struct.firmware*, %struct.firmware** %6, align 8
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @assign_fw(%struct.firmware* %66, %struct.device* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %53
  br label %71

71:                                               ; preds = %70, %50
  %72 = call i32 (...) @usermodehelper_read_unlock()
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %35, %23
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @firmware_loading_timeout(...) #1

declare dso_local i64 @usermodehelper_read_lock_wait(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @usermodehelper_read_trylock(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local %struct.fw_sysfs* @fw_create_instance(%struct.firmware*, i8*, %struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fw_sysfs*) #1

declare dso_local i32 @PTR_ERR(%struct.fw_sysfs*) #1

declare dso_local i32 @fw_load_sysfs_fallback(%struct.fw_sysfs*, i32, i64) #1

declare dso_local i32 @assign_fw(%struct.firmware*, %struct.device*, i32) #1

declare dso_local i32 @usermodehelper_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
