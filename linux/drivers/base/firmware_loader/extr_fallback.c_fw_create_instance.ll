; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_fw_create_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_fw_create_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_sysfs = type { i32, %struct.device, %struct.firmware* }
%struct.device = type { i32, i32*, %struct.device* }
%struct.firmware = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_OPT_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@firmware_class = common dso_local global i32 0, align 4
@fw_dev_attr_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_sysfs* (%struct.firmware*, i8*, %struct.device*, i32)* @fw_create_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_sysfs* @fw_create_instance(%struct.firmware* %0, i8* %1, %struct.device* %2, i32 %3) #0 {
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_sysfs*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.firmware* %0, %struct.firmware** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fw_sysfs* @kzalloc(i32 40, i32 %11)
  store %struct.fw_sysfs* %12, %struct.fw_sysfs** %9, align 8
  %13 = load %struct.fw_sysfs*, %struct.fw_sysfs** %9, align 8
  %14 = icmp ne %struct.fw_sysfs* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.fw_sysfs* @ERR_PTR(i32 %17)
  store %struct.fw_sysfs* %18, %struct.fw_sysfs** %9, align 8
  br label %47

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @FW_OPT_NOWAIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.fw_sysfs*, %struct.fw_sysfs** %9, align 8
  %28 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.firmware*, %struct.firmware** %5, align 8
  %30 = load %struct.fw_sysfs*, %struct.fw_sysfs** %9, align 8
  %31 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %30, i32 0, i32 2
  store %struct.firmware* %29, %struct.firmware** %31, align 8
  %32 = load %struct.fw_sysfs*, %struct.fw_sysfs** %9, align 8
  %33 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %32, i32 0, i32 1
  store %struct.device* %33, %struct.device** %10, align 8
  %34 = load %struct.device*, %struct.device** %10, align 8
  %35 = call i32 @device_initialize(%struct.device* %34)
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @dev_set_name(%struct.device* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.device*, %struct.device** %10, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 2
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  store i32* @firmware_class, i32** %43, align 8
  %44 = load i32, i32* @fw_dev_attr_groups, align 4
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %19, %15
  %48 = load %struct.fw_sysfs*, %struct.fw_sysfs** %9, align 8
  ret %struct.fw_sysfs* %48
}

declare dso_local %struct.fw_sysfs* @kzalloc(i32, i32) #1

declare dso_local %struct.fw_sysfs* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
