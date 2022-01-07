; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor.c_cpufreq_dbs_governor_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor.c_cpufreq_dbs_governor_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.policy_dbs_info* }
%struct.policy_dbs_info = type { i32 }

@gov_dbs_data_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_dbs_governor_limits(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.policy_dbs_info*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = call i32 @mutex_lock(i32* @gov_dbs_data_mutex)
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 0
  %7 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %6, align 8
  store %struct.policy_dbs_info* %7, %struct.policy_dbs_info** %3, align 8
  %8 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %9 = icmp ne %struct.policy_dbs_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %13 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %16 = call i32 @cpufreq_policy_apply_limits(%struct.cpufreq_policy* %15)
  %17 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %18 = call i32 @gov_update_sample_delay(%struct.policy_dbs_info* %17, i32 0)
  %19 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %20 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %22

22:                                               ; preds = %11, %10
  %23 = call i32 @mutex_unlock(i32* @gov_dbs_data_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpufreq_policy_apply_limits(%struct.cpufreq_policy*) #1

declare dso_local i32 @gov_update_sample_delay(%struct.policy_dbs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
