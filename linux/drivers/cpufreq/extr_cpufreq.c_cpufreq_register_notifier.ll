; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpufreq_fast_switch_lock = common dso_local global i32 0, align 4
@cpufreq_fast_switch_count = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cpufreq_transition_notifier_list = common dso_local global i32 0, align 4
@cpufreq_policy_notifier_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_register_notifier(%struct.notifier_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 (...) @cpufreq_disabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %35 [
    i32 128, label %14
    i32 129, label %32
  ]

14:                                               ; preds = %12
  %15 = call i32 @mutex_lock(i32* @cpufreq_fast_switch_lock)
  %16 = load i32, i32* @cpufreq_fast_switch_count, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @mutex_unlock(i32* @cpufreq_fast_switch_lock)
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %24 = call i32 @srcu_notifier_chain_register(i32* @cpufreq_transition_notifier_list, %struct.notifier_block* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @cpufreq_fast_switch_count, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @cpufreq_fast_switch_count, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = call i32 @mutex_unlock(i32* @cpufreq_fast_switch_lock)
  br label %38

32:                                               ; preds = %12
  %33 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %34 = call i32 @blocking_notifier_chain_register(i32* @cpufreq_policy_notifier_list, %struct.notifier_block* %33)
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %12
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %32, %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %18, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @cpufreq_disabled(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @srcu_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
