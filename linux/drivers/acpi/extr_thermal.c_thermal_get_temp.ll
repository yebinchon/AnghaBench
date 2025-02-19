; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_get_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.acpi_thermal*, align 8
  %7 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 0
  %10 = load %struct.acpi_thermal*, %struct.acpi_thermal** %9, align 8
  store %struct.acpi_thermal* %10, %struct.acpi_thermal** %6, align 8
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %12 = icmp ne %struct.acpi_thermal* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %18 = call i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %16
  %24 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32 %26, i32 %29)
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %21, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @acpi_thermal_get_temperature(%struct.acpi_thermal*) #1

declare dso_local i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
