; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_guess_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_guess_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpufreq_data = type { i32 }
%struct.acpi_processor_performance = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cpu_khz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_cpufreq_data*, i32)* @acpi_cpufreq_guess_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_cpufreq_guess_freq(%struct.acpi_cpufreq_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_cpufreq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_processor_performance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.acpi_cpufreq_data* %0, %struct.acpi_cpufreq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %11 = call %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data* %10)
  store %struct.acpi_processor_performance* %11, %struct.acpi_processor_performance** %6, align 8
  %12 = load i32, i32* @cpu_khz, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %16 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %56, %14
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* @cpu_khz, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %46, %47
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %53 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %3, align 8
  br label %78

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %61 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %65 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %3, align 8
  br label %78

67:                                               ; preds = %2
  %68 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %69 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %71 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 1000
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %67, %59, %50
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local %struct.acpi_processor_performance* @to_perf_data(%struct.acpi_cpufreq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
