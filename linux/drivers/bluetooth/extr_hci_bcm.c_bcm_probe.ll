; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm_device = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s device registered.\0A\00", align 1
@bcm_device_lock = common dso_local global i32 0, align 4
@bcm_device_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to power down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bcm_device* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.bcm_device* %9, %struct.bcm_device** %4, align 8
  %10 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %11 = icmp ne %struct.bcm_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %19 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  %22 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %23 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i64 @has_acpi_companion(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %30 = call i32 @bcm_acpi_probe(%struct.bcm_device* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %38 = call i32 @bcm_get_resources(%struct.bcm_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.bcm_device* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %50 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i32 @mutex_lock(i32* @bcm_device_lock)
  %54 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(i32* %55, i32* @bcm_device_list)
  %57 = call i32 @mutex_unlock(i32* @bcm_device_lock)
  %58 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %59 = call i32 @bcm_gpio_set_power(%struct.bcm_device* %58, i32 0)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %43
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %43
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %41, %33, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.bcm_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @has_acpi_companion(i32*) #1

declare dso_local i32 @bcm_acpi_probe(%struct.bcm_device*) #1

declare dso_local i32 @bcm_get_resources(%struct.bcm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bcm_gpio_set_power(%struct.bcm_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
