; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_THERMAL_MODE_ACTIVE = common dso_local global i32 0, align 4
@tzp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_thermal*)* @acpi_thermal_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_get_info(%struct.acpi_thermal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_thermal*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %6 = icmp ne %struct.acpi_thermal* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %12 = call i32 @acpi_thermal_aml_dependency_fix(%struct.acpi_thermal* %11)
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %14 = call i32 @acpi_thermal_get_trip_points(%struct.acpi_thermal* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %10
  %20 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %21 = call i32 @acpi_thermal_get_temperature(%struct.acpi_thermal* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %28 = load i32, i32* @ACPI_THERMAL_MODE_ACTIVE, align 4
  %29 = call i32 @acpi_thermal_set_cooling_mode(%struct.acpi_thermal* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i64, i64* @tzp, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* @tzp, align 8
  %41 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %46

43:                                               ; preds = %36
  %44 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %45 = call i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal* %44)
  br label %46

46:                                               ; preds = %43, %39
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %24, %17, %7
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @acpi_thermal_aml_dependency_fix(%struct.acpi_thermal*) #1

declare dso_local i32 @acpi_thermal_get_trip_points(%struct.acpi_thermal*) #1

declare dso_local i32 @acpi_thermal_get_temperature(%struct.acpi_thermal*) #1

declare dso_local i32 @acpi_thermal_set_cooling_mode(%struct.acpi_thermal*, i32) #1

declare dso_local i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
