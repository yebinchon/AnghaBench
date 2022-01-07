; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_extract_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_extract_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.TYPE_4__*, %struct.acpi_cpufreq_data* }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_cpufreq_data = type { i32 }
%struct.acpi_processor_performance = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i64)* @extract_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_io(%struct.cpufreq_policy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_cpufreq_data*, align 8
  %7 = alloca %struct.acpi_processor_performance*, align 8
  %8 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 1
  %11 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %10, align 8
  store %struct.acpi_cpufreq_data* %11, %struct.acpi_cpufreq_data** %6, align 8
  %12 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %13 = call %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data* %12)
  store %struct.acpi_processor_performance* %13, %struct.acpi_processor_performance** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %41, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %17 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %23 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %21, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
