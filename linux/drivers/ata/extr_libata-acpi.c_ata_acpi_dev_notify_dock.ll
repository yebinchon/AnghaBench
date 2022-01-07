; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_dev_notify_dock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_dev_notify_dock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.ata_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ata_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @ata_acpi_dev_notify_dock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acpi_dev_notify_dock(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ata_device* @ata_hotplug_data(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.ata_device* %10, %struct.ata_device** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %13 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  store %struct.ata_device* %13, %struct.ata_device** %5, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ata_acpi_handle_hotplug(i32 %18, %struct.ata_device* %19, i32 %20)
  ret i32 0
}

declare dso_local %struct.ata_device* @ata_hotplug_data(i32) #1

declare dso_local i32 @ata_acpi_handle_hotplug(i32, %struct.ata_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
