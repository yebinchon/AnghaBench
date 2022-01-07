; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_initialize_hp_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_initialize_hp_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_hotplug_context = type { i32 (%struct.acpi_device.0*, i32)*, void (%struct.acpi_device.1*, i32)* }
%struct.acpi_device.0 = type opaque
%struct.acpi_device.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_initialize_hp_context(%struct.acpi_device* %0, %struct.acpi_hotplug_context* %1, i32 (%struct.acpi_device*, i32)* %2, void (%struct.acpi_device*, i32)* %3) #0 {
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.acpi_hotplug_context*, align 8
  %7 = alloca i32 (%struct.acpi_device*, i32)*, align 8
  %8 = alloca void (%struct.acpi_device*, i32)*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %5, align 8
  store %struct.acpi_hotplug_context* %1, %struct.acpi_hotplug_context** %6, align 8
  store i32 (%struct.acpi_device*, i32)* %2, i32 (%struct.acpi_device*, i32)** %7, align 8
  store void (%struct.acpi_device*, i32)* %3, void (%struct.acpi_device*, i32)** %8, align 8
  %9 = call i32 (...) @acpi_lock_hp_context()
  %10 = load i32 (%struct.acpi_device*, i32)*, i32 (%struct.acpi_device*, i32)** %7, align 8
  %11 = bitcast i32 (%struct.acpi_device*, i32)* %10 to i32 (%struct.acpi_device.0*, i32)*
  %12 = load %struct.acpi_hotplug_context*, %struct.acpi_hotplug_context** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_hotplug_context, %struct.acpi_hotplug_context* %12, i32 0, i32 0
  store i32 (%struct.acpi_device.0*, i32)* %11, i32 (%struct.acpi_device.0*, i32)** %13, align 8
  %14 = load void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)** %8, align 8
  %15 = bitcast void (%struct.acpi_device*, i32)* %14 to void (%struct.acpi_device.1*, i32)*
  %16 = load %struct.acpi_hotplug_context*, %struct.acpi_hotplug_context** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_hotplug_context, %struct.acpi_hotplug_context* %16, i32 0, i32 1
  store void (%struct.acpi_device.1*, i32)* %15, void (%struct.acpi_device.1*, i32)** %17, align 8
  %18 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %19 = load %struct.acpi_hotplug_context*, %struct.acpi_hotplug_context** %6, align 8
  %20 = call i32 @acpi_set_hp_context(%struct.acpi_device* %18, %struct.acpi_hotplug_context* %19)
  %21 = call i32 (...) @acpi_unlock_hp_context()
  ret void
}

declare dso_local i32 @acpi_lock_hp_context(...) #1

declare dso_local i32 @acpi_set_hp_context(%struct.acpi_device*, %struct.acpi_hotplug_context*) #1

declare dso_local i32 @acpi_unlock_hp_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
