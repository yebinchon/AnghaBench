; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_remove_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_remove_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i64, i32 }

@ACPI_BUS_TYPE_POWER_BUTTON = common dso_local global i64 0, align 8
@ACPI_EVENT_POWER_BUTTON = common dso_local global i32 0, align 4
@acpi_device_fixed_event = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_SLEEP_BUTTON = common dso_local global i64 0, align 8
@ACPI_EVENT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_device_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_device_remove_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_device_remove_notify_handler(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ACPI_BUS_TYPE_POWER_BUTTON, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @ACPI_EVENT_POWER_BUTTON, align 4
  %10 = load i32, i32* @acpi_device_fixed_event, align 4
  %11 = call i32 @acpi_remove_fixed_event_handler(i32 %9, i32 %10)
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_BUS_TYPE_SLEEP_BUTTON, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @ACPI_EVENT_SLEEP_BUTTON, align 4
  %20 = load i32, i32* @acpi_device_fixed_event, align 4
  %21 = call i32 @acpi_remove_fixed_event_handler(i32 %19, i32 %20)
  br label %29

22:                                               ; preds = %12
  %23 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %27 = load i32, i32* @acpi_device_notify, align 4
  %28 = call i32 @acpi_remove_notify_handler(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %18
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @acpi_remove_fixed_event_handler(i32, i32) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
