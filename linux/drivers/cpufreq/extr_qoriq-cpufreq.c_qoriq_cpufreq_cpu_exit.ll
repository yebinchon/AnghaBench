; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_qoriq_cpufreq_cpu_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_qoriq_cpufreq_cpu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.cpu_data* }
%struct.cpu_data = type { %struct.cpu_data*, %struct.cpu_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @qoriq_cpufreq_cpu_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_cpufreq_cpu_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.cpu_data*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 0
  %6 = load %struct.cpu_data*, %struct.cpu_data** %5, align 8
  store %struct.cpu_data* %6, %struct.cpu_data** %3, align 8
  %7 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %7, i32 0, i32 1
  %9 = load %struct.cpu_data*, %struct.cpu_data** %8, align 8
  %10 = call i32 @kfree(%struct.cpu_data* %9)
  %11 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %11, i32 0, i32 0
  %13 = load %struct.cpu_data*, %struct.cpu_data** %12, align 8
  %14 = call i32 @kfree(%struct.cpu_data* %13)
  %15 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %16 = call i32 @kfree(%struct.cpu_data* %15)
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 0
  store %struct.cpu_data* null, %struct.cpu_data** %18, align 8
  ret i32 0
}

declare dso_local i32 @kfree(%struct.cpu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
