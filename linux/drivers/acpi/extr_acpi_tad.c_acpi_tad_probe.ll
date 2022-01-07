; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_acpi_tad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.acpi_tad_driver_data = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"_GCP\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to get capabilities\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TAD_AC_WAKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported capabilities\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_PRW\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Missing _PRW\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DPM_FLAG_SMART_SUSPEND = common dso_local global i32 0, align 4
@DPM_FLAG_LEAVE_SUSPENDED = common dso_local global i32 0, align 4
@acpi_tad_attr_group = common dso_local global i32 0, align 4
@ACPI_TAD_DC_WAKE = common dso_local global i64 0, align 8
@acpi_tad_dc_attr_group = common dso_local global i32 0, align 4
@ACPI_TAD_RT = common dso_local global i64 0, align 8
@acpi_tad_time_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @acpi_tad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_tad_driver_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @ACPI_HANDLE(%struct.device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @acpi_evaluate_integer(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_info(%struct.device* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %1
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ACPI_TAD_AC_WAKE, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %109

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @acpi_has_method(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_info(%struct.device* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %109

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.acpi_tad_driver_data* @devm_kzalloc(%struct.device* %44, i32 8, i32 %45)
  store %struct.acpi_tad_driver_data* %46, %struct.acpi_tad_driver_data** %6, align 8
  %47 = load %struct.acpi_tad_driver_data*, %struct.acpi_tad_driver_data** %6, align 8
  %48 = icmp ne %struct.acpi_tad_driver_data* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %109

52:                                               ; preds = %43
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.acpi_tad_driver_data*, %struct.acpi_tad_driver_data** %6, align 8
  %55 = getelementptr inbounds %struct.acpi_tad_driver_data, %struct.acpi_tad_driver_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.acpi_tad_driver_data*, %struct.acpi_tad_driver_data** %6, align 8
  %58 = call i32 @dev_set_drvdata(%struct.device* %56, %struct.acpi_tad_driver_data* %57)
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @device_init_wakeup(%struct.device* %59, i32 1)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* @DPM_FLAG_SMART_SUSPEND, align 4
  %63 = load i32, i32* @DPM_FLAG_LEAVE_SUSPENDED, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @dev_pm_set_driver_flags(%struct.device* %61, i32 %64)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @pm_runtime_set_active(%struct.device* %66)
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @pm_runtime_enable(%struct.device* %68)
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @pm_runtime_suspend(%struct.device* %70)
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = call i32 @sysfs_create_group(i32* %73, i32* @acpi_tad_attr_group)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  br label %105

78:                                               ; preds = %52
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @ACPI_TAD_DC_WAKE, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = getelementptr inbounds %struct.device, %struct.device* %84, i32 0, i32 0
  %86 = call i32 @sysfs_create_group(i32* %85, i32* @acpi_tad_dc_attr_group)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %105

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @ACPI_TAD_RT, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = getelementptr inbounds %struct.device, %struct.device* %97, i32 0, i32 0
  %99 = call i32 @sysfs_create_group(i32* %98, i32* @acpi_tad_time_attr_group)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %105

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %91
  store i32 0, i32* %2, align 4
  br label %109

105:                                              ; preds = %102, %89, %77
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = call i32 @acpi_tad_remove(%struct.platform_device* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %104, %49, %38, %29, %19
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @acpi_has_method(i32, i8*) #1

declare dso_local %struct.acpi_tad_driver_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.acpi_tad_driver_data*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_set_driver_flags(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_suspend(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @acpi_tad_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
