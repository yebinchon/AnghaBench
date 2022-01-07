; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k6.c_powernow_k6_cpu_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k6.c_powernow_k6_cpu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i64, i64, i32 }

@clock_ratio = common dso_local global %struct.TYPE_2__* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@max_multiplier = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @powernow_k6_cpu_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_k6_cpu_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_freqs, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_ratio, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_ratio, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @max_multiplier, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %14
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %25 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %4, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_ratio, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %4, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %4, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %37 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %36, %struct.cpufreq_freqs* %4)
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @powernow_k6_target(%struct.cpufreq_policy* %38, i32 %39)
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %42 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %41, %struct.cpufreq_freqs* %4, i32 0)
  br label %47

43:                                               ; preds = %14
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %23, %5
  ret i32 0
}

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i32 @powernow_k6_target(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
