; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_processor_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_processor_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.cpufreq_policy = type { i32 }

@CPUFREQ_CREATE_POLICY = common dso_local global i64 0, align 8
@CPUFREQ_REMOVE_POLICY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @acpi_processor_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpufreq_policy*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.cpufreq_policy*
  store %struct.cpufreq_policy* %9, %struct.cpufreq_policy** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CPUFREQ_CREATE_POLICY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %15 = call i32 @acpi_thermal_cpufreq_init(%struct.cpufreq_policy* %14)
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %17 = call i32 @acpi_processor_ppc_init(%struct.cpufreq_policy* %16)
  br label %28

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @CPUFREQ_REMOVE_POLICY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %24 = call i32 @acpi_processor_ppc_exit(%struct.cpufreq_policy* %23)
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %26 = call i32 @acpi_thermal_cpufreq_exit(%struct.cpufreq_policy* %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %13
  ret i32 0
}

declare dso_local i32 @acpi_thermal_cpufreq_init(%struct.cpufreq_policy*) #1

declare dso_local i32 @acpi_processor_ppc_init(%struct.cpufreq_policy*) #1

declare dso_local i32 @acpi_processor_ppc_exit(%struct.cpufreq_policy*) #1

declare dso_local i32 @acpi_thermal_cpufreq_exit(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
