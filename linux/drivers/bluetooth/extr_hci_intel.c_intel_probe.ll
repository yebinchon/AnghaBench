; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_device = type { i64, %struct.gpio_desc*, i32, %struct.platform_device*, i32 }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_hci_intel_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to add GPIO mapping table\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to retrieve gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"No IRQ, falling back to gpio-irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"host-wake\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to retrieve IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"No corresponding irq for gpio\0A\00", align 1
@intel_device_list_lock = common dso_local global i32 0, align 4
@intel_device_list = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"registered, gpio(%d)/irq(%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.intel_device* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.intel_device* %10, %struct.intel_device** %4, align 8
  %11 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %12 = icmp ne %struct.intel_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %18 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %17, i32 0, i32 4
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %22 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %21, i32 0, i32 3
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @acpi_hci_intel_gpios, align 4
  %26 = call i32 @devm_acpi_dev_add_driver_gpios(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %16
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %37 = call i8* @devm_gpiod_get(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = bitcast i8* %37 to %struct.gpio_desc*
  %39 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %40 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %39, i32 0, i32 1
  store %struct.gpio_desc* %38, %struct.gpio_desc** %40, align 8
  %41 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %42 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %41, i32 0, i32 1
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %42, align 8
  %44 = call i64 @IS_ERR(%struct.gpio_desc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %51 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %50, i32 0, i32 1
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.gpio_desc* %52)
  store i32 %53, i32* %2, align 4
  br label %119

54:                                               ; preds = %33
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i64 @platform_get_irq(%struct.platform_device* %55, i32 0)
  %57 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %58 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %60 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* @GPIOD_IN, align 4
  %70 = call i8* @devm_gpiod_get(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = bitcast i8* %70 to %struct.gpio_desc*
  store %struct.gpio_desc* %71, %struct.gpio_desc** %6, align 8
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %73 = call i64 @IS_ERR(%struct.gpio_desc* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %100

79:                                               ; preds = %63
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %81 = call i64 @gpiod_to_irq(%struct.gpio_desc* %80)
  %82 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %83 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %85 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %100

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @device_set_wakeup_capable(i32* %95, i32 1)
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @device_wakeup_disable(i32* %98)
  br label %100

100:                                              ; preds = %93, %88, %75
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.intel_device* %102)
  %104 = call i32 @mutex_lock(i32* @intel_device_list_lock)
  %105 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %106 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %105, i32 0, i32 2
  %107 = call i32 @list_add_tail(i32* %106, i32* @intel_device_list)
  %108 = call i32 @mutex_unlock(i32* @intel_device_list_lock)
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %112 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %111, i32 0, i32 1
  %113 = load %struct.gpio_desc*, %struct.gpio_desc** %112, align 8
  %114 = call i32 @desc_to_gpio(%struct.gpio_desc* %113)
  %115 = load %struct.intel_device*, %struct.intel_device** %4, align 8
  %116 = getelementptr inbounds %struct.intel_device, %struct.intel_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dev_info(i32* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %114, i64 %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %100, %46, %13
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.intel_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @device_wakeup_disable(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intel_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
