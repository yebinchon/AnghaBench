; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_stm32-rng.c_stm32_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_stm32-rng.c_stm32_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_rng_private = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-error-detect\00", align 1
@stm32_rng_init = common dso_local global i32 0, align 4
@stm32_rng_cleanup = common dso_local global i32 0, align 4
@stm32_rng_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stm32_rng_private*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.stm32_rng_private* @devm_kzalloc(%struct.device* %15, i32 48, i32 %16)
  store %struct.stm32_rng_private* %17, %struct.stm32_rng_private** %6, align 8
  %18 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %19 = icmp ne %struct.stm32_rng_private* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %125

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_address_to_resource(%struct.device_node* %24, i32 0, %struct.resource* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %125

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @devm_ioremap_resource(%struct.device* %31, %struct.resource* %7)
  %33 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %34 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %36 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %42 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %125

45:                                               ; preds = %30
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @devm_clk_get(%struct.device* %47, i32* null)
  %49 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %50 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %52 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %58 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %125

61:                                               ; preds = %45
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @devm_reset_control_get(%struct.device* %63, i32* null)
  %65 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %66 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %68 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %61
  %73 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %74 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @reset_control_assert(i32 %75)
  %77 = call i32 @udelay(i32 2)
  %78 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %79 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @reset_control_deassert(i32 %80)
  br label %82

82:                                               ; preds = %72, %61
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call i32 @of_property_read_bool(%struct.device_node* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %86 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %89 = call i32 @dev_set_drvdata(%struct.device* %87, %struct.stm32_rng_private* %88)
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_driver_string(%struct.device* %90)
  %92 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %93 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @stm32_rng_init, align 4
  %96 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %97 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @stm32_rng_cleanup, align 4
  %100 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %101 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @stm32_rng_read, align 4
  %104 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %105 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = ptrtoint %struct.device* %107 to i64
  %109 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %110 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %113 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 900, i32* %114, align 8
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %115, i32 100)
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @pm_runtime_use_autosuspend(%struct.device* %117)
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 @pm_runtime_enable(%struct.device* %119)
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.stm32_rng_private*, %struct.stm32_rng_private** %6, align 8
  %123 = getelementptr inbounds %struct.stm32_rng_private, %struct.stm32_rng_private* %122, i32 0, i32 0
  %124 = call i32 @devm_hwrng_register(%struct.device* %121, %struct.TYPE_2__* %123)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %82, %56, %40, %28, %20
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.stm32_rng_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.stm32_rng_private*) #1

declare dso_local i32 @dev_driver_string(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
