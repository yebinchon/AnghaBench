; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_update_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_update_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_policy = type { i32 }

@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@cpufreq_suspended = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_update_policy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cpufreq_policy* @cpufreq_cpu_acquire(i32 %4)
  store %struct.cpufreq_policy* %5, %struct.cpufreq_policy** %3, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %7 = icmp ne %struct.cpufreq_policy* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = call i64 (...) @has_target()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i64, i64* @cpufreq_suspended, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %22 = call i32 @cpufreq_verify_current_freq(%struct.cpufreq_policy* %21, i32 0)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %17
  br label %32

29:                                               ; preds = %20, %14, %9
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %31 = call i32 @refresh_frequency_limits(%struct.cpufreq_policy* %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %34 = call i32 @cpufreq_cpu_release(%struct.cpufreq_policy* %33)
  br label %35

35:                                               ; preds = %32, %8
  ret void
}

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_acquire(i32) #1

declare dso_local i64 @has_target(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpufreq_verify_current_freq(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @refresh_frequency_limits(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_cpu_release(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
