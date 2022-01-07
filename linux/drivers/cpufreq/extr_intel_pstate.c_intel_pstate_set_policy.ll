; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_set_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i64 }
%struct.cpufreq_policy = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"set_policy cpuinfo.max %u policy->max %u\0A\00", align 1
@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@intel_pstate_limits_lock = common dso_local global i32 0, align 4
@CPUFREQ_POLICY_PERFORMANCE = common dso_local global i64 0, align 8
@hwp_active = common dso_local global i64 0, align 8
@hwp_boost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @intel_pstate_set_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_set_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpudata*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %22, i64 %25
  %27 = load %struct.cpudata*, %struct.cpudata** %26, align 8
  store %struct.cpudata* %27, %struct.cpudata** %4, align 8
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %32 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = call i32 @mutex_lock(i32* @intel_pstate_limits_lock)
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %35 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %36 = call i32 @intel_pstate_update_perf_limits(%struct.cpufreq_policy* %34, %struct.cpudata* %35)
  %37 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %38 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CPUFREQ_POLICY_PERFORMANCE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %13
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @intel_pstate_clear_update_util_hook(i64 %45)
  %47 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %48 = call i32 @intel_pstate_max_within_limits(%struct.cpudata* %47)
  br label %54

49:                                               ; preds = %13
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %51 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @intel_pstate_set_update_util_hook(i64 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i64, i64* @hwp_active, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32, i32* @hwp_boost, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %62 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @intel_pstate_clear_update_util_hook(i64 %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %67 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @intel_pstate_hwp_set(i64 %68)
  br label %70

70:                                               ; preds = %65, %54
  %71 = call i32 @mutex_unlock(i32* @intel_pstate_limits_lock)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_pstate_update_perf_limits(%struct.cpufreq_policy*, %struct.cpudata*) #1

declare dso_local i32 @intel_pstate_clear_update_util_hook(i64) #1

declare dso_local i32 @intel_pstate_max_within_limits(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_set_update_util_hook(i64) #1

declare dso_local i32 @intel_pstate_hwp_set(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
