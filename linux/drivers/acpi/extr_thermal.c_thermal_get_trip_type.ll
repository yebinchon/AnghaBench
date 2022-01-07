; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_trip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_trip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_HOT = common dso_local global i32 0, align 4
@THERMAL_TRIP_PASSIVE = common dso_local global i32 0, align 4
@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@THERMAL_TRIP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @thermal_get_trip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_get_trip_type(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.acpi_thermal*, align 8
  %9 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.acpi_thermal*, %struct.acpi_thermal** %11, align 8
  store %struct.acpi_thermal* %12, %struct.acpi_thermal** %8, align 8
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %14 = icmp ne %struct.acpi_thermal* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %106

21:                                               ; preds = %15
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %23 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %106

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %21
  %39 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %40 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @THERMAL_TRIP_HOT, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %106

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %38
  %56 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %57 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @THERMAL_TRIP_PASSIVE, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %106

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %55
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %100, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %79 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %77, %73
  %90 = phi i1 [ false, %73 ], [ %88, %77 ]
  br i1 %90, label %91, label %103

91:                                               ; preds = %89
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @THERMAL_TRIP_ACTIVE, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %106

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %73

103:                                              ; preds = %89
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %94, %66, %49, %32, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
