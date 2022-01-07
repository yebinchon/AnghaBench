; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_generic_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_generic_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Eject disabled\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ACPI_OST_SC_EJECT_IN_PROGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_generic_hotplug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_generic_hotplug_event(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %40 [
    i32 131, label %7
    i32 130, label %10
    i32 129, label %13
    i32 128, label %13
  ]

7:                                                ; preds = %2
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = call i32 @acpi_scan_bus_check(%struct.acpi_device* %8)
  store i32 %9, i32* %3, align 4
  br label %43

10:                                               ; preds = %2
  %11 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %12 = call i32 @acpi_scan_device_check(%struct.acpi_device* %11)
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2, %2
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 1
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %18, %13
  %33 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ACPI_OST_SC_EJECT_IN_PROGRESS, align 4
  %37 = call i32 @acpi_evaluate_ost(i32 %35, i32 129, i32 %36, i32* null)
  %38 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %39 = call i32 @acpi_scan_hot_remove(%struct.acpi_device* %38)
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %32, %26, %10, %7
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @acpi_scan_bus_check(%struct.acpi_device*) #1

declare dso_local i32 @acpi_scan_device_check(%struct.acpi_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @acpi_evaluate_ost(i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_scan_hot_remove(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
