; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_thermal.c_processor_get_max_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_thermal.c_processor_get_max_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_processor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @processor_get_max_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processor_get_max_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_processor*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %9 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %8, i32 0, i32 0
  %10 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  store %struct.acpi_device* %10, %struct.acpi_device** %6, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %12 = icmp ne %struct.acpi_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %18 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %17)
  store %struct.acpi_processor* %18, %struct.acpi_processor** %7, align 8
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %20 = icmp ne %struct.acpi_processor* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %26 = call i64 @acpi_processor_max_state(%struct.acpi_processor* %25)
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %21, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i64 @acpi_processor_max_state(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
