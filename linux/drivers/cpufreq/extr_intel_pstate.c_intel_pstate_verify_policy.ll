; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_verify_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_verify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32 }
%struct.cpufreq_policy = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@CPUFREQ_POLICY_POWERSAVE = common dso_local global i64 0, align 8
@CPUFREQ_POLICY_PERFORMANCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @intel_pstate_verify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_verify_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpudata*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %5 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %5, i64 %8
  %10 = load %struct.cpudata*, %struct.cpudata** %9, align 8
  store %struct.cpudata* %10, %struct.cpudata** %4, align 8
  %11 = call i32 (...) @update_turbo_state()
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %18 = call i32 @intel_pstate_get_max_freq(%struct.cpudata* %17)
  %19 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %12, i32 %16, i32 %18)
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CPUFREQ_POLICY_POWERSAVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CPUFREQ_POLICY_PERFORMANCE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %25, %1
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %36 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %37 = call i32 @intel_pstate_adjust_policy_max(%struct.cpufreq_policy* %35, %struct.cpudata* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @update_turbo_state(...) #1

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @intel_pstate_get_max_freq(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_adjust_policy_max(%struct.cpufreq_policy*, %struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
