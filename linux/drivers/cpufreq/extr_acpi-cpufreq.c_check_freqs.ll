; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_check_freqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_check_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.acpi_cpufreq_data* }
%struct.acpi_cpufreq_data = type { i32 }
%struct.cpumask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, %struct.cpumask*, i32)* @check_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_freqs(%struct.cpufreq_policy* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_cpufreq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %12, align 8
  store %struct.acpi_cpufreq_data* %13, %struct.acpi_cpufreq_data** %8, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp ult i32 %15, 100
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %19 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %20 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %8, align 8
  %21 = call i32 @get_cur_val(%struct.cpumask* %19, %struct.acpi_cpufreq_data* %20)
  %22 = call i32 @extract_freq(%struct.cpufreq_policy* %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %33

27:                                               ; preds = %17
  %28 = call i32 @udelay(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %14

32:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @extract_freq(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @get_cur_val(%struct.cpumask*, %struct.acpi_cpufreq_data*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
