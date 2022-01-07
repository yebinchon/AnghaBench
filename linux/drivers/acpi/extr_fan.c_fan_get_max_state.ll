; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_fan_get_max_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_fan_get_max_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_fan = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @fan_get_max_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_get_max_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca %struct.thermal_cooling_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.acpi_fan*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %3, align 8
  %8 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %7, i32 0, i32 0
  %9 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  store %struct.acpi_device* %9, %struct.acpi_device** %5, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %11 = call %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device* %10)
  store %struct.acpi_fan* %11, %struct.acpi_fan** %6, align 8
  %12 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** %4, align 8
  store i64 %21, i64* %22, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i64*, i64** %4, align 8
  store i64 1, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %16
  ret i32 0
}

declare dso_local %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
