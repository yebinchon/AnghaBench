; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.acpi_tad_driver_data = type { i32 }

@ACPI_TAD_DC_WAKE = common dso_local global i32 0, align 4
@acpi_tad_dc_attr_group = common dso_local global i32 0, align 4
@acpi_tad_attr_group = common dso_local global i32 0, align 4
@ACPI_TAD_AC_TIMER = common dso_local global i32 0, align 4
@ACPI_TAD_DC_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @acpi_tad_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_tad_driver_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.acpi_tad_driver_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.acpi_tad_driver_data* %8, %struct.acpi_tad_driver_data** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @device_init_wakeup(%struct.device* %9, i32 0)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @pm_runtime_get_sync(%struct.device* %11)
  %13 = load %struct.acpi_tad_driver_data*, %struct.acpi_tad_driver_data** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_tad_driver_data, %struct.acpi_tad_driver_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ACPI_TAD_DC_WAKE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = call i32 @sysfs_remove_group(i32* %21, i32* @acpi_tad_dc_attr_group)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = call i32 @sysfs_remove_group(i32* %25, i32* @acpi_tad_attr_group)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* @ACPI_TAD_AC_TIMER, align 4
  %29 = call i32 @acpi_tad_disable_timer(%struct.device* %27, i32 %28)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* @ACPI_TAD_AC_TIMER, align 4
  %32 = call i32 @acpi_tad_clear_status(%struct.device* %30, i32 %31)
  %33 = load %struct.acpi_tad_driver_data*, %struct.acpi_tad_driver_data** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_tad_driver_data, %struct.acpi_tad_driver_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ACPI_TAD_DC_WAKE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load i32, i32* @ACPI_TAD_DC_TIMER, align 4
  %42 = call i32 @acpi_tad_disable_timer(%struct.device* %40, i32 %41)
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load i32, i32* @ACPI_TAD_DC_TIMER, align 4
  %45 = call i32 @acpi_tad_clear_status(%struct.device* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %23
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @pm_runtime_put_sync(%struct.device* %47)
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @pm_runtime_disable(%struct.device* %49)
  ret i32 0
}

declare dso_local %struct.acpi_tad_driver_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @acpi_tad_disable_timer(%struct.device*, i32) #1

declare dso_local i32 @acpi_tad_clear_status(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
