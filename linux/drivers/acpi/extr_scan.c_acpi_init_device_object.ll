; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_init_device_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_init_device_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@acpi_device_fwnode_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_init_device_object(%struct.acpi_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @acpi_bus_get_parent(i32 %19)
  %21 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* @acpi_device_fwnode_ops, i32** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @acpi_set_device_status(%struct.acpi_device* %26, i64 %27)
  %29 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %30 = call i32 @acpi_device_get_busid(%struct.acpi_device* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @acpi_set_pnp_ids(i32 %31, %struct.TYPE_6__* %33, i32 %34)
  %36 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %37 = call i32 @acpi_init_properties(%struct.acpi_device* %36)
  %38 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %39 = call i32 @acpi_bus_get_flags(%struct.acpi_device* %38)
  %40 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %47 = call i32 @acpi_device_enumeration_by_parent(%struct.acpi_device* %46)
  %48 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %52 = call i32 @acpi_device_clear_enumerated(%struct.acpi_device* %51)
  %53 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %53, i32 0, i32 2
  %55 = call i32 @device_initialize(i32* %54)
  %56 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 2
  %58 = call i32 @dev_set_uevent_suppress(i32* %57, i32 1)
  %59 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %60 = call i32 @acpi_init_coherency(%struct.acpi_device* %59)
  %61 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %62 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @acpi_bus_get_parent(i32) #1

declare dso_local i32 @acpi_set_device_status(%struct.acpi_device*, i64) #1

declare dso_local i32 @acpi_device_get_busid(%struct.acpi_device*) #1

declare dso_local i32 @acpi_set_pnp_ids(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @acpi_init_properties(%struct.acpi_device*) #1

declare dso_local i32 @acpi_bus_get_flags(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_enumeration_by_parent(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_clear_enumerated(%struct.acpi_device*) #1

declare dso_local i32 @device_initialize(i32*) #1

declare dso_local i32 @dev_set_uevent_suppress(i32*, i32) #1

declare dso_local i32 @acpi_init_coherency(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
