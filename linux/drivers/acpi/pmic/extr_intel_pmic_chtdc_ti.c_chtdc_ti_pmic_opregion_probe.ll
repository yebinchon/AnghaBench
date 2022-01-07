; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_chtdc_ti.c_chtdc_ti_pmic_opregion_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_chtdc_ti.c_chtdc_ti_pmic_opregion_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_soc_pmic = type { i32 }

@chtdc_ti_pmic_opregion_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @chtdc_ti_pmic_opregion_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtdc_ti_pmic_opregion_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_soc_pmic*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %9)
  store %struct.intel_soc_pmic* %10, %struct.intel_soc_pmic** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ACPI_HANDLE(i32 %16)
  %18 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %19 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @intel_pmic_install_opregion_handler(%struct.TYPE_2__* %12, i32 %17, i32 %20, i32* @chtdc_ti_pmic_opregion_data)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ACPI_HANDLE(i32 %30)
  %32 = call i32 @acpi_walk_dep_device_list(i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @intel_pmic_install_opregion_handler(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @acpi_walk_dep_device_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
