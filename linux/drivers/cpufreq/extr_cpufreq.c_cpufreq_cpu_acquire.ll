; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_cpu_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_cpu_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpufreq_policy* @cpufreq_cpu_acquire(i32 %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %5)
  store %struct.cpufreq_policy* %6, %struct.cpufreq_policy** %4, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %8 = icmp ne %struct.cpufreq_policy* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.cpufreq_policy* null, %struct.cpufreq_policy** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %15 = call i64 @policy_is_inactive(%struct.cpufreq_policy* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %19 = call i32 @cpufreq_cpu_release(%struct.cpufreq_policy* %18)
  store %struct.cpufreq_policy* null, %struct.cpufreq_policy** %2, align 8
  br label %22

20:                                               ; preds = %10
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_policy* %21, %struct.cpufreq_policy** %2, align 8
  br label %22

22:                                               ; preds = %20, %17, %9
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  ret %struct.cpufreq_policy* %23
}

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @policy_is_inactive(%struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_cpu_release(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
