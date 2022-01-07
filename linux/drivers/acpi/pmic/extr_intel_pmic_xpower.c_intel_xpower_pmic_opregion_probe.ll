; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_xpower.c_intel_xpower_pmic_opregion_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_xpower.c_intel_xpower_pmic_opregion_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.axp20x_dev = type { i32 }

@ACPI_ADR_SPACE_GPIO = common dso_local global i32 0, align 4
@intel_xpower_pmic_gpio_handler = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@intel_xpower_pmic_opregion_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_xpower_pmic_opregion_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_xpower_pmic_opregion_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.axp20x_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.axp20x_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.axp20x_dev* %13, %struct.axp20x_dev** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @ACPI_HANDLE(%struct.device* %14)
  %16 = load i32, i32* @ACPI_ADR_SPACE_GPIO, align 4
  %17 = load i32, i32* @intel_xpower_pmic_gpio_handler, align 4
  %18 = call i32 @acpi_install_address_space_handler(i32 %15, i32 %16, i32 %17, i32* null, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @ACPI_HANDLE(%struct.device* %28)
  %30 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %31 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @intel_pmic_install_opregion_handler(%struct.TYPE_2__* %27, i32 %29, i32 %32, i32* @intel_xpower_pmic_opregion_data)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @ACPI_HANDLE(%struct.device* %37)
  %39 = load i32, i32* @ACPI_ADR_SPACE_GPIO, align 4
  %40 = load i32, i32* @intel_xpower_pmic_gpio_handler, align 4
  %41 = call i32 @acpi_remove_address_space_handler(i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %25
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @acpi_install_address_space_handler(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @intel_pmic_install_opregion_handler(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @acpi_remove_address_space_handler(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
