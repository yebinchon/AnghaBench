; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.cpufreq_policy = type { i64 }

@hwp_active = common dso_local global i32 0, align 4
@intel_pstate_limits_lock = common dso_local global i32 0, align 4
@all_cpu_data = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @intel_pstate_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_resume(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %4 = load i32, i32* @hwp_active, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @intel_pstate_limits_lock)
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @all_cpu_data, align 8
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @intel_pstate_hwp_enable(%struct.TYPE_3__* %19)
  br label %21

21:                                               ; preds = %13, %7
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @all_cpu_data, align 8
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @intel_pstate_hwp_set(i64 %31)
  %33 = call i32 @mutex_unlock(i32* @intel_pstate_limits_lock)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_pstate_hwp_enable(%struct.TYPE_3__*) #1

declare dso_local i32 @intel_pstate_hwp_set(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
