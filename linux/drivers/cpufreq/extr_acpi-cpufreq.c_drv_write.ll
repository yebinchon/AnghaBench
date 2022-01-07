; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_drv_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_drv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpufreq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.acpi_processor_performance = type { i32 }
%struct.drv_cmd = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_cpufreq_data*, %struct.cpumask*, i32)* @drv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_write(%struct.acpi_cpufreq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_cpufreq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_processor_performance*, align 8
  %8 = alloca %struct.drv_cmd, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_cpufreq_data* %0, %struct.acpi_cpufreq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %11 = call %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data* %10)
  store %struct.acpi_processor_performance* %11, %struct.acpi_processor_performance** %7, align 8
  %12 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %8, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %8, i32 0, i32 1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %8, i32 0, i32 2
  %20 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %20, i32 0, i32 0
  store i32* %21, i32** %19, align 8
  %22 = call i32 (...) @get_cpu()
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %25 = call i64 @cpumask_test_cpu(i32 %23, %struct.cpumask* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @do_drv_write(%struct.drv_cmd* %8)
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %31 = call i32 @smp_call_function_many(%struct.cpumask* %30, i32 (%struct.drv_cmd*)* @do_drv_write, %struct.drv_cmd* %8, i32 1)
  %32 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @do_drv_write(%struct.drv_cmd*) #1

declare dso_local i32 @smp_call_function_many(%struct.cpumask*, i32 (%struct.drv_cmd*)*, %struct.drv_cmd*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
