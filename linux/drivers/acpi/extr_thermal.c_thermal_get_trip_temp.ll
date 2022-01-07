; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_thermal_get_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @thermal_get_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_get_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
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
  br label %142

21:                                               ; preds = %15
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %23 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32 %37, i32 %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %142

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %21
  %47 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %48 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %59 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %64 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32 %62, i32 %65)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %142

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %46
  %72 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %73 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %84 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %89 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32 %87, i32 %90)
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %4, align 4
  br label %142

93:                                               ; preds = %79
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %71
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %136, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %103 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %101, %97
  %114 = phi i1 [ false, %97 ], [ %112, %101 ]
  br i1 %114, label %115, label %139

115:                                              ; preds = %113
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %115
  %119 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %120 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %129 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32 %127, i32 %130)
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  store i32 0, i32* %4, align 4
  br label %142

133:                                              ; preds = %115
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %97

139:                                              ; preds = %113
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %118, %82, %57, %32, %18
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
