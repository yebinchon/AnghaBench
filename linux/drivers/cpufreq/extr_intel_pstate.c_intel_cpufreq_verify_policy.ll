; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_verify_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_cpufreq_verify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32 }
%struct.cpufreq_policy = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @intel_cpufreq_verify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_cpufreq_verify_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.cpudata*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %4, i64 %7
  %9 = load %struct.cpudata*, %struct.cpudata** %8, align 8
  store %struct.cpudata* %9, %struct.cpudata** %3, align 8
  %10 = call i32 (...) @update_turbo_state()
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %17 = call i32 @intel_pstate_get_max_freq(%struct.cpudata* %16)
  %18 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %11, i32 %15, i32 %17)
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %20 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %21 = call i32 @intel_pstate_adjust_policy_max(%struct.cpufreq_policy* %19, %struct.cpudata* %20)
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %23 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %24 = call i32 @intel_pstate_update_perf_limits(%struct.cpufreq_policy* %22, %struct.cpudata* %23)
  ret i32 0
}

declare dso_local i32 @update_turbo_state(...) #1

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @intel_pstate_get_max_freq(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_adjust_policy_max(%struct.cpufreq_policy*, %struct.cpudata*) #1

declare dso_local i32 @intel_pstate_update_perf_limits(%struct.cpufreq_policy*, %struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
