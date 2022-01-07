; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_register_thermal_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_register_thermal_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_27__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_24__*, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"acpitz\00", align 1
@acpi_thermal_zone_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"thermal_zone\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"registered as thermal_zone%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_thermal*)* @acpi_thermal_register_thermal_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_register_thermal_zone(%struct.acpi_thermal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_thermal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %29
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %45, %41
  %58 = phi i1 [ false, %41 ], [ %56, %45 ]
  br i1 %58, label %59, label %65

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %41

65:                                               ; preds = %57
  %66 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %76 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %80, 100
  %82 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 100
  %86 = call i8* @thermal_zone_device_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %74, i32 0, %struct.acpi_thermal* %75, i32* @acpi_thermal_zone_ops, i32* null, i32 %81, i32 %85)
  %87 = bitcast i8* %86 to %struct.TYPE_18__*
  %88 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %89 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %88, i32 0, i32 2
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %89, align 8
  br label %101

90:                                               ; preds = %65
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %93 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %94 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 100
  %97 = call i8* @thermal_zone_device_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %91, i32 0, %struct.acpi_thermal* %92, i32* @acpi_thermal_zone_ops, i32* null, i32 0, i32 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_18__*
  %99 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %100 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %99, i32 0, i32 2
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %100, align 8
  br label %101

101:                                              ; preds = %90, %73
  %102 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %103 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %102, i32 0, i32 2
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = call i64 @IS_ERR(%struct.TYPE_18__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %171

110:                                              ; preds = %101
  %111 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %112 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %111, i32 0, i32 3
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %117 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %116, i32 0, i32 2
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = call i32 @sysfs_create_link(i32* %115, i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %171

126:                                              ; preds = %110
  %127 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %128 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %127, i32 0, i32 2
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %133 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %132, i32 0, i32 3
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = call i32 @sysfs_create_link(i32* %131, i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %126
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %171

142:                                              ; preds = %126
  %143 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %144 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %143, i32 0, i32 3
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %149 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %148, i32 0, i32 2
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = call i32 @acpi_bus_attach_private_data(i32 %147, %struct.TYPE_18__* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @ACPI_FAILURE(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %171

158:                                              ; preds = %142
  %159 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %160 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  %161 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %162 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %161, i32 0, i32 3
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %166 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %165, i32 0, i32 2
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_info(%struct.TYPE_17__* %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %158, %155, %140, %124, %107
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @thermal_zone_device_register(i8*, i32, i32, %struct.acpi_thermal*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_18__*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @acpi_bus_attach_private_data(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
