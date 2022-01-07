; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_acpi_cpufreq_cpu_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_acpi_cpufreq_cpu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { i32 }
%struct.cpufreq_policy = type { i64, %struct.cpufreq_acpi_io* }

@acpi_io_data = common dso_local global %struct.cpufreq_acpi_io** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"acpi_cpufreq_cpu_exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @acpi_cpufreq_cpu_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpufreq_cpu_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.cpufreq_acpi_io*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %4, i64 %7
  %9 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %8, align 8
  store %struct.cpufreq_acpi_io* %9, %struct.cpufreq_acpi_io** %3, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %3, align 8
  %12 = icmp ne %struct.cpufreq_acpi_io* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %14, i64 %17
  store %struct.cpufreq_acpi_io* null, %struct.cpufreq_acpi_io** %18, align 8
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @acpi_processor_unregister_performance(i64 %21)
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 1
  %25 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %24, align 8
  %26 = call i32 @kfree(%struct.cpufreq_acpi_io* %25)
  %27 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %3, align 8
  %28 = call i32 @kfree(%struct.cpufreq_acpi_io* %27)
  br label %29

29:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @acpi_processor_unregister_performance(i64) #1

declare dso_local i32 @kfree(%struct.cpufreq_acpi_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
