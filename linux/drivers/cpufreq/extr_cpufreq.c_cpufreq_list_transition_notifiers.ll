; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_list_transition_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_list_transition_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.notifier_block* }
%struct.notifier_block = type { i32, %struct.notifier_block* }

@.str = private unnamed_addr constant [34 x i8] c"Registered transition notifiers:\0A\00", align 1
@cpufreq_transition_notifier_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%pS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpufreq_list_transition_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_list_transition_notifiers() #0 {
  %1 = alloca %struct.notifier_block*, align 8
  %2 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpufreq_transition_notifier_list, i32 0, i32 0))
  %4 = load %struct.notifier_block*, %struct.notifier_block** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpufreq_transition_notifier_list, i32 0, i32 1), align 8
  store %struct.notifier_block* %4, %struct.notifier_block** %1, align 8
  br label %5

5:                                                ; preds = %13, %0
  %6 = load %struct.notifier_block*, %struct.notifier_block** %1, align 8
  %7 = icmp ne %struct.notifier_block* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct.notifier_block*, %struct.notifier_block** %1, align 8
  %10 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %8
  %14 = load %struct.notifier_block*, %struct.notifier_block** %1, align 8
  %15 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %14, i32 0, i32 1
  %16 = load %struct.notifier_block*, %struct.notifier_block** %15, align 8
  store %struct.notifier_block* %16, %struct.notifier_block** %1, align 8
  br label %5

17:                                               ; preds = %5
  %18 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpufreq_transition_notifier_list, i32 0, i32 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
