; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_thermal.c_processor_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_thermal.c_processor_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_processor = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @processor_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processor_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_processor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %10, i32 0, i32 0
  %12 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  store %struct.acpi_device* %12, %struct.acpi_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %14 = icmp ne %struct.acpi_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %20 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %19)
  store %struct.acpi_processor* %20, %struct.acpi_processor** %7, align 8
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %22 = icmp ne %struct.acpi_processor* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %18
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cpufreq_get_max_state(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %33 = call i64 @acpi_processor_max_state(%struct.acpi_processor* %32)
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %26
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ule i64 %39, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %57 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %56, i64 0, i32 0)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %49, %43
  %59 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %60 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @cpufreq_set_cur_state(i32 %61, i32 %63)
  br label %77

65:                                               ; preds = %38
  %66 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %67 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @cpufreq_set_cur_state(i32 %68, i32 %69)
  %71 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %72, %74
  %76 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %71, i64 %75, i32 0)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %65, %58
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %35, %23, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @cpufreq_get_max_state(i32) #1

declare dso_local i64 @acpi_processor_max_state(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor*, i64, i32) #1

declare dso_local i32 @cpufreq_set_cur_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
