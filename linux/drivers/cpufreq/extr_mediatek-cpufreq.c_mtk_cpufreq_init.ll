; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_mediatek-cpufreq.c_mtk_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_mediatek-cpufreq.c_mtk_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, %struct.mtk_cpu_dvfs_info*, %struct.cpufreq_frequency_table*, i32 }
%struct.mtk_cpu_dvfs_info = type { i32, i32, i32 }
%struct.cpufreq_frequency_table = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"dvfs info for cpu%d is not initialized.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to init cpufreq table for cpu%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @mtk_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cpufreq_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.mtk_cpu_dvfs_info*, align 8
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.mtk_cpu_dvfs_info* @mtk_cpu_dvfs_info_lookup(i32 %9)
  store %struct.mtk_cpu_dvfs_info* %10, %struct.mtk_cpu_dvfs_info** %4, align 8
  %11 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %12 = icmp ne %struct.mtk_cpu_dvfs_info* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_pm_opp_init_cpufreq_table(i32 %23, %struct.cpufreq_frequency_table** %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %20
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %38, i32 0, i32 1
  %40 = call i32 @cpumask_copy(i32 %37, i32* %39)
  %41 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %42 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %43 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %42, i32 0, i32 3
  store %struct.cpufreq_frequency_table* %41, %struct.cpufreq_frequency_table** %43, align 8
  %44 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 2
  store %struct.mtk_cpu_dvfs_info* %44, %struct.mtk_cpu_dvfs_info** %46, align 8
  %47 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %51 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %53 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_pm_opp_of_register_em(i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %34, %27, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.mtk_cpu_dvfs_info* @mtk_cpu_dvfs_info_lookup(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @dev_pm_opp_init_cpufreq_table(i32, %struct.cpufreq_frequency_table**) #1

declare dso_local i32 @cpumask_copy(i32, i32*) #1

declare dso_local i32 @dev_pm_opp_of_register_em(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
