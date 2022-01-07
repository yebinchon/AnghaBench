; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_enable_fast_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_enable_fast_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32, i32 }

@cpufreq_fast_switch_lock = common dso_local global i32 0, align 4
@cpufreq_fast_switch_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"CPU%u: Fast frequency switching not enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_enable_fast_switch(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %3 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %4 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %3, i32 0, i32 3
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @cpufreq_fast_switch_lock)
  %13 = load i64, i64* @cpufreq_fast_switch_count, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i64, i64* @cpufreq_fast_switch_count, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @cpufreq_fast_switch_count, align 8
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @cpufreq_list_transition_notifiers()
  br label %26

26:                                               ; preds = %20, %15
  %27 = call i32 @mutex_unlock(i32* @cpufreq_fast_switch_lock)
  br label %28

28:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @cpufreq_list_transition_notifiers(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
