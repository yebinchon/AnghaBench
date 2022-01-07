; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_processor_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_processor_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_processor = type { i32 }

@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_processor_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_processor_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_stop(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_processor*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %6)
  store %struct.acpi_device* %7, %struct.acpi_device** %4, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %16 = load i32, i32* @acpi_processor_notify, align 4
  %17 = call i32 @acpi_remove_notify_handler(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %19 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %18)
  store %struct.acpi_processor* %19, %struct.acpi_processor** %5, align 8
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %21 = icmp ne %struct.acpi_processor* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %31

23:                                               ; preds = %11
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %25 = call i32 @acpi_processor_power_exit(%struct.acpi_processor* %24)
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %27 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %28 = call i32 @acpi_pss_perf_exit(%struct.acpi_processor* %26, %struct.acpi_device* %27)
  %29 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %30 = call i32 @acpi_cppc_processor_exit(%struct.acpi_processor* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %22, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_processor_power_exit(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_pss_perf_exit(%struct.acpi_processor*, %struct.acpi_device*) #1

declare dso_local i32 @acpi_cppc_processor_exit(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
