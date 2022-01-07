; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_add_dock_dependent_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_add_dock_dependent_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dock_station = type { i32 }
%struct.acpi_device = type { i32 }
%struct.dock_dependent_device = type { i32, %struct.acpi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dock_station*, %struct.acpi_device*)* @add_dock_dependent_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dock_dependent_device(%struct.dock_station* %0, %struct.acpi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dock_station*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.dock_dependent_device*, align 8
  store %struct.dock_station* %0, %struct.dock_station** %4, align 8
  store %struct.acpi_device* %1, %struct.acpi_device** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dock_dependent_device* @kzalloc(i32 16, i32 %7)
  store %struct.dock_dependent_device* %8, %struct.dock_dependent_device** %6, align 8
  %9 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %6, align 8
  %10 = icmp ne %struct.dock_dependent_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %16 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %6, align 8
  %17 = getelementptr inbounds %struct.dock_dependent_device, %struct.dock_dependent_device* %16, i32 0, i32 1
  store %struct.acpi_device* %15, %struct.acpi_device** %17, align 8
  %18 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %6, align 8
  %19 = getelementptr inbounds %struct.dock_dependent_device, %struct.dock_dependent_device* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.dock_dependent_device*, %struct.dock_dependent_device** %6, align 8
  %22 = getelementptr inbounds %struct.dock_dependent_device, %struct.dock_dependent_device* %21, i32 0, i32 0
  %23 = load %struct.dock_station*, %struct.dock_station** %4, align 8
  %24 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.dock_dependent_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
