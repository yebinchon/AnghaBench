; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c___acpi_processor_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c___acpi_processor_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.acpi_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@CONFIG_ACPI_CPU_FREQ_PSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CPPC data invalid or not present\0A\00", align 1
@acpi_idle_driver = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_processor_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @__acpi_processor_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__acpi_processor_start(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_processor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.acpi_processor* %8, %struct.acpi_processor** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %10 = icmp ne %struct.acpi_processor* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %72

21:                                               ; preds = %14
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %23 = call i32 @acpi_cppc_processor_probe(%struct.acpi_processor* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @CONFIG_ACPI_CPU_FREQ_PSS, align 4
  %28 = call i32 @IS_ENABLED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 1
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %26, %21
  %35 = call i32* (...) @cpuidle_get_driver()
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32* (...) @cpuidle_get_driver()
  %39 = icmp eq i32* %38, @acpi_idle_driver
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %42 = call i32 @acpi_processor_power_init(%struct.acpi_processor* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %45 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %46 = call i32 @acpi_pss_perf_init(%struct.acpi_processor* %44, %struct.acpi_device* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %68

50:                                               ; preds = %43
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %55 = load i32, i32* @acpi_processor_notify, align 4
  %56 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %57 = call i32 @acpi_install_notify_handler(i32 %53, i32 %54, i32 %55, %struct.acpi_device* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @ACPI_SUCCESS(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %50
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %66 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %67 = call i32 @acpi_pss_perf_exit(%struct.acpi_processor* %65, %struct.acpi_device* %66)
  br label %68

68:                                               ; preds = %62, %49
  %69 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %70 = call i32 @acpi_processor_power_exit(%struct.acpi_processor* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %61, %20, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_cppc_processor_probe(%struct.acpi_processor*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @cpuidle_get_driver(...) #1

declare dso_local i32 @acpi_processor_power_init(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_pss_perf_init(%struct.acpi_processor*, %struct.acpi_device*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.acpi_device*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_pss_perf_exit(%struct.acpi_processor*, %struct.acpi_device*) #1

declare dso_local i32 @acpi_processor_power_exit(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
