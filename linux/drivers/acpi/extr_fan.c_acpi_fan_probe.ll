; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_acpi_fan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.thermal_cooling_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_fan = type { i32, %struct.thermal_cooling_device* }
%struct.acpi_device = type { %struct.TYPE_7__, %struct.acpi_fan* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No memory for fan\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set initial power state\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PNP0C0B\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Fan\00", align 1
@fan_cooling_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"registered as cooling_device%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Failed to create sysfs link 'thermal_cooling'\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to create sysfs link 'device'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @acpi_fan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.acpi_fan*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_7__* %10)
  store %struct.acpi_device* %11, %struct.acpi_device** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.acpi_fan* @devm_kzalloc(%struct.TYPE_7__* %13, i32 16, i32 %14)
  store %struct.acpi_fan* %15, %struct.acpi_fan** %6, align 8
  %16 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %17 = icmp ne %struct.acpi_fan* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1
  store %struct.acpi_fan* %25, %struct.acpi_fan** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.acpi_fan* %29)
  %31 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %32 = call i64 @acpi_fan_is_acpi4(%struct.acpi_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %36 = call i64 @acpi_fan_get_fif(%struct.acpi_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %40 = call i64 @acpi_fan_get_fps(%struct.acpi_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %115

43:                                               ; preds = %38
  %44 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %45 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %56

46:                                               ; preds = %24
  %47 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %48 = call i32 @acpi_device_update_power(%struct.acpi_device* %47, i32* null)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %115

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @strncmp(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %66 = call i8* @acpi_device_bid(%struct.acpi_device* %65)
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %70 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* %68, %struct.acpi_device* %69, i32* @fan_cooling_ops)
  store %struct.thermal_cooling_device* %70, %struct.thermal_cooling_device** %5, align 8
  %71 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %72 = call i64 @IS_ERR(%struct.thermal_cooling_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %75)
  store i32 %76, i32* %4, align 4
  br label %115

77:                                               ; preds = %67
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %81 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(%struct.TYPE_7__* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %85 = load %struct.acpi_fan*, %struct.acpi_fan** %6, align 8
  %86 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %85, i32 0, i32 1
  store %struct.thermal_cooling_device* %84, %struct.thermal_cooling_device** %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %91 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @sysfs_create_link(i32* %89, i32* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %77
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %77
  %101 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %102 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @sysfs_create_link(i32* %103, i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(%struct.TYPE_7__* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %100
  br label %115

115:                                              ; preds = %114, %74, %51, %42
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_7__*) #1

declare dso_local %struct.acpi_fan* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.acpi_fan*) #1

declare dso_local i64 @acpi_fan_is_acpi4(%struct.acpi_device*) #1

declare dso_local i64 @acpi_fan_get_fif(%struct.acpi_device*) #1

declare dso_local i64 @acpi_fan_get_fps(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_update_power(%struct.acpi_device*, i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, %struct.acpi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
