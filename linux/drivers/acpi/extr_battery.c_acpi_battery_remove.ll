; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_battery = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_battery_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_battery*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_battery* null, %struct.acpi_battery** %4, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = icmp ne %struct.acpi_device* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_battery* @acpi_driver_data(%struct.acpi_device* %8)
  %10 = icmp ne %struct.acpi_battery* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %7
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = call i32 @device_init_wakeup(i32* %16, i32 0)
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = call %struct.acpi_battery* @acpi_driver_data(%struct.acpi_device* %18)
  store %struct.acpi_battery* %19, %struct.acpi_battery** %4, align 8
  %20 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %20, i32 0, i32 2
  %22 = call i32 @unregister_pm_notifier(i32* %21)
  %23 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %24 = call i32 @sysfs_remove_battery(%struct.acpi_battery* %23)
  %25 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %25, i32 0, i32 1
  %27 = call i32 @mutex_destroy(i32* %26)
  %28 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %28, i32 0, i32 0
  %30 = call i32 @mutex_destroy(i32* %29)
  %31 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %32 = call i32 @kfree(%struct.acpi_battery* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %14, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.acpi_battery* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @sysfs_remove_battery(%struct.acpi_battery*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
