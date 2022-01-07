; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_fast_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_fast_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, %struct.cpufreq_frequency_table*, %struct.acpi_cpufreq_data* }
%struct.cpufreq_frequency_table = type { i32, i32 }
%struct.acpi_cpufreq_data = type { i32 (i32*, i32)*, i64 }
%struct.acpi_processor_performance = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @acpi_cpufreq_fast_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpufreq_fast_switch(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_cpufreq_data*, align 8
  %7 = alloca %struct.acpi_processor_performance*, align 8
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 3
  %14 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %13, align 8
  store %struct.acpi_cpufreq_data* %14, %struct.acpi_cpufreq_data** %6, align 8
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cpufreq_table_find_index_dl(%struct.cpufreq_policy* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 2
  %31 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %31, i64 %33
  store %struct.cpufreq_frequency_table* %34, %struct.cpufreq_frequency_table** %8, align 8
  %35 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %36 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %39 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %42 = call %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data* %41)
  store %struct.acpi_processor_performance* %42, %struct.acpi_processor_performance** %7, align 8
  %43 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %28
  %49 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %50 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @unlikely(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %56 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %79

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %28
  %61 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %62 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %61, i32 0, i32 0
  %63 = load i32 (i32*, i32)*, i32 (i32*, i32)** %62, align 8
  %64 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %65 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %64, i32 0, i32 2
  %66 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %67 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %63(i32* %65, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %77 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %60, %57
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @cpufreq_table_find_index_dl(%struct.cpufreq_policy*, i32) #1

declare dso_local %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data*) #1

declare dso_local i64 @unlikely(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
