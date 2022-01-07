; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_register_dock_dependent_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_register_dock_dependent_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.dock_station = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_dock_dependent_device(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dock_station*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.dock_station* @find_dock_station(i32 %6)
  store %struct.dock_station* %7, %struct.dock_station** %5, align 8
  %8 = load %struct.dock_station*, %struct.dock_station** %5, align 8
  %9 = icmp ne %struct.dock_station* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.dock_station*, %struct.dock_station** %5, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = call i32 @find_dock_dependent_device(%struct.dock_station* %11, %struct.acpi_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load %struct.dock_station*, %struct.dock_station** %5, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %18 = call i32 @add_dock_dependent_device(%struct.dock_station* %16, %struct.acpi_device* %17)
  br label %19

19:                                               ; preds = %15, %10, %2
  ret void
}

declare dso_local %struct.dock_station* @find_dock_station(i32) #1

declare dso_local i32 @find_dock_dependent_device(%struct.dock_station*, %struct.acpi_device*) #1

declare dso_local i32 @add_dock_dependent_device(%struct.dock_station*, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
