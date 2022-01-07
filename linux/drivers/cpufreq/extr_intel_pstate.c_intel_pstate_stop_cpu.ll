; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_stop_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_stop_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"CPU %d exiting\0A\00", align 1
@hwp_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @intel_pstate_stop_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_stop_cpu(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %3 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %4 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @intel_pstate_clear_update_util_hook(i32 %9)
  %11 = load i64, i64* @hwp_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %15 = call i32 @intel_pstate_hwp_save_state(%struct.cpufreq_policy* %14)
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @intel_pstate_hwp_force_min_perf(i32 %18)
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %22 = call i32 @intel_cpufreq_stop_cpu(%struct.cpufreq_policy* %21)
  br label %23

23:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @intel_pstate_clear_update_util_hook(i32) #1

declare dso_local i32 @intel_pstate_hwp_save_state(%struct.cpufreq_policy*) #1

declare dso_local i32 @intel_pstate_hwp_force_min_perf(i32) #1

declare dso_local i32 @intel_cpufreq_stop_cpu(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
