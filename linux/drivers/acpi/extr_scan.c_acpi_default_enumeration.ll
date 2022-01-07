; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_default_enumeration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_default_enumeration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@acpi_reconfig_chain = common dso_local global i32 0, align 4
@ACPI_RECONFIG_DEVICE_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_default_enumeration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_default_enumeration(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %10 = call i32 @acpi_create_platform_device(%struct.acpi_device* %9, i32* null)
  %11 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %12 = call i32 @acpi_device_set_enumerated(%struct.acpi_device* %11)
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ACPI_RECONFIG_DEVICE_ADD, align 4
  %15 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %16 = call i32 @blocking_notifier_call_chain(i32* @acpi_reconfig_chain, i32 %14, %struct.acpi_device* %15)
  br label %17

17:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @acpi_create_platform_device(%struct.acpi_device*, i32*) #1

declare dso_local i32 @acpi_device_set_enumerated(%struct.acpi_device*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
