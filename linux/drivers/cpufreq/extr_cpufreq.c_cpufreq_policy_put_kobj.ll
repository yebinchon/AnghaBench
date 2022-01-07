; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_policy_put_kobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_policy_put_kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, %struct.completion, %struct.kobject }
%struct.completion = type { i32 }
%struct.kobject = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"waiting for dropping of refcount\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wait complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*)* @cpufreq_policy_put_kobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_policy_put_kobj(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.completion*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 0
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %9 = call i32 @cpufreq_stats_free_table(%struct.cpufreq_policy* %8)
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 2
  store %struct.kobject* %11, %struct.kobject** %3, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 1
  store %struct.completion* %13, %struct.completion** %4, align 8
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = call i32 @up_write(i32* %15)
  %17 = load %struct.kobject*, %struct.kobject** %3, align 8
  %18 = call i32 @kobject_put(%struct.kobject* %17)
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.completion*, %struct.completion** %4, align 8
  %21 = call i32 @wait_for_completion(%struct.completion* %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @cpufreq_stats_free_table(%struct.cpufreq_policy*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
