; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_freq_transition_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_freq_transition_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i64, i32, i32, i32 }
%struct.cpufreq_freqs = type { i32 }

@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@CPUFREQ_ASYNC_NOTIFICATION = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %0, %struct.cpufreq_freqs* %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpufreq_freqs*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store %struct.cpufreq_freqs* %1, %struct.cpufreq_freqs** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CPUFREQ_ASYNC_NOTIFICATION, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @current, align 8
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  br label %21

21:                                               ; preds = %40, %17
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %23 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @wait_event(i32 %24, i32 %30)
  %32 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %32, i32 0, i32 2
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %36 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %21
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %42 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i64, i64* @current, align 8
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %51 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %54 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %55 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %56 = call i32 @cpufreq_notify_transition(%struct.cpufreq_policy* %53, %struct.cpufreq_freqs* %54, i32 %55)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
