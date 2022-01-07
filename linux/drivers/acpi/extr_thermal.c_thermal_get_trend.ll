; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_trend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_trend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_ACTIVE = common dso_local global i32 0, align 4
@THERMAL_TREND_RAISING = common dso_local global i32 0, align 4
@THERMAL_TREND_DROPPING = common dso_local global i32 0, align 4
@THERMAL_TREND_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @thermal_get_trend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_get_trend(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.acpi_thermal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 0
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %14, align 8
  store %struct.acpi_thermal* %15, %struct.acpi_thermal** %8, align 8
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @thermal_get_trip_type(%struct.thermal_zone_device* %16, i32 %17, i32* %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @THERMAL_TRIP_ACTIVE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %29 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %32 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32 %30, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @thermal_get_trip_temp(%struct.thermal_zone_device* %35, i32 %36, i32* %11)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %98

42:                                               ; preds = %27
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @THERMAL_TREND_RAISING, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %98

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %98

52:                                               ; preds = %23
  %53 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %54 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %59 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %62 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = mul nsw i32 %57, %64
  %66 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %67 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %72 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %75 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  %80 = mul nsw i32 %70, %79
  %81 = add nsw i32 %65, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %52
  %85 = load i32, i32* @THERMAL_TREND_RAISING, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %97

87:                                               ; preds = %52
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @THERMAL_TREND_DROPPING, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %84
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %49, %46, %39, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @thermal_get_trip_type(%struct.thermal_zone_device*, i32, i32*) #1

declare dso_local i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32, i32) #1

declare dso_local i64 @thermal_get_trip_temp(%struct.thermal_zone_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
