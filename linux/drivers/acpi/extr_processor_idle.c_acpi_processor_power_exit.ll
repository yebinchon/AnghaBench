; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_acpi_processor_power_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_acpi_processor_power_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cpuidle_device = type { i32 }

@acpi_cpuidle_device = common dso_local global i32 0, align 4
@acpi_processor_registered = common dso_local global i64 0, align 8
@acpi_idle_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_power_exit(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca %struct.cpuidle_device*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %5 = load i32, i32* @acpi_cpuidle_device, align 4
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cpuidle_device* @per_cpu(i32 %5, i32 %8)
  store %struct.cpuidle_device* %9, %struct.cpuidle_device** %4, align 8
  %10 = call i64 (...) @disabled_by_idle_boot_param()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %21 = call i32 @cpuidle_unregister_device(%struct.cpuidle_device* %20)
  %22 = load i64, i64* @acpi_processor_registered, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* @acpi_processor_registered, align 8
  %24 = load i64, i64* @acpi_processor_registered, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @cpuidle_unregister_driver(i32* @acpi_idle_driver)
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.cpuidle_device* @per_cpu(i32, i32) #1

declare dso_local i64 @disabled_by_idle_boot_param(...) #1

declare dso_local i32 @cpuidle_unregister_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
