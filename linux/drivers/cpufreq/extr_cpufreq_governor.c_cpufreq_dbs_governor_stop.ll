; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor.c_cpufreq_dbs_governor_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor.c_cpufreq_dbs_governor_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.policy_dbs_info* }
%struct.policy_dbs_info = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_dbs_governor_stop(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.policy_dbs_info*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 0
  %6 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %5, align 8
  store %struct.policy_dbs_info* %6, %struct.policy_dbs_info** %3, align 8
  %7 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %8 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gov_clear_update_util(i32 %9)
  %11 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %12 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %11, i32 0, i32 3
  %13 = call i32 @irq_work_sync(i32* %12)
  %14 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %15 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %14, i32 0, i32 2
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %18 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %17, i32 0, i32 1
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %21 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  ret void
}

declare dso_local i32 @gov_clear_update_util(i32) #1

declare dso_local i32 @irq_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
