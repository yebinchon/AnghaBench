; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor.c_cpufreq_dbs_governor_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor.c_cpufreq_dbs_governor_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.policy_dbs_info* }
%struct.policy_dbs_info = type { i32, %struct.dbs_data* }
%struct.dbs_data = type { i32 }
%struct.dbs_governor = type { i32 (%struct.dbs_data*)*, i32* }

@gov_dbs_data_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_dbs_governor_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.dbs_governor*, align 8
  %4 = alloca %struct.policy_dbs_info*, align 8
  %5 = alloca %struct.dbs_data*, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %8 = call %struct.dbs_governor* @dbs_governor_of(%struct.cpufreq_policy* %7)
  store %struct.dbs_governor* %8, %struct.dbs_governor** %3, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %10, align 8
  store %struct.policy_dbs_info* %11, %struct.policy_dbs_info** %4, align 8
  %12 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %13 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %12, i32 0, i32 1
  %14 = load %struct.dbs_data*, %struct.dbs_data** %13, align 8
  store %struct.dbs_data* %14, %struct.dbs_data** %5, align 8
  %15 = call i32 @mutex_lock(i32* @gov_dbs_data_mutex)
  %16 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %17 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %16, i32 0, i32 0
  %18 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %19 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %18, i32 0, i32 0
  %20 = call i32 @gov_attr_set_put(i32* %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 0
  store %struct.policy_dbs_info* null, %struct.policy_dbs_info** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %1
  %26 = call i32 (...) @have_governor_per_policy()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.dbs_governor*, %struct.dbs_governor** %3, align 8
  %30 = getelementptr inbounds %struct.dbs_governor, %struct.dbs_governor* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.dbs_governor*, %struct.dbs_governor** %3, align 8
  %33 = getelementptr inbounds %struct.dbs_governor, %struct.dbs_governor* %32, i32 0, i32 0
  %34 = load i32 (%struct.dbs_data*)*, i32 (%struct.dbs_data*)** %33, align 8
  %35 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %36 = call i32 %34(%struct.dbs_data* %35)
  %37 = load %struct.dbs_data*, %struct.dbs_data** %5, align 8
  %38 = call i32 @kfree(%struct.dbs_data* %37)
  br label %39

39:                                               ; preds = %31, %1
  %40 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %4, align 8
  %41 = load %struct.dbs_governor*, %struct.dbs_governor** %3, align 8
  %42 = call i32 @free_policy_dbs_info(%struct.policy_dbs_info* %40, %struct.dbs_governor* %41)
  %43 = call i32 @mutex_unlock(i32* @gov_dbs_data_mutex)
  ret void
}

declare dso_local %struct.dbs_governor* @dbs_governor_of(%struct.cpufreq_policy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gov_attr_set_put(i32*, i32*) #1

declare dso_local i32 @have_governor_per_policy(...) #1

declare dso_local i32 @kfree(%struct.dbs_data*) #1

declare dso_local i32 @free_policy_dbs_info(%struct.policy_dbs_info*, %struct.dbs_governor*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
