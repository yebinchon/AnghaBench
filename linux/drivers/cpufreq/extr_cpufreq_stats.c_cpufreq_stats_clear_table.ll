; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stats_clear_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stats_clear_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_stats = type { i32, i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_stats*)* @cpufreq_stats_clear_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_stats_clear_table(%struct.cpufreq_stats* %0) #0 {
  %2 = alloca %struct.cpufreq_stats*, align 8
  %3 = alloca i32, align 4
  store %struct.cpufreq_stats* %0, %struct.cpufreq_stats** %2, align 8
  %4 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %8 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %11 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i32 %12, i32 0, i32 %16)
  %18 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %19 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = mul i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32 %20, i32 0, i32 %26)
  %28 = call i32 (...) @get_jiffies_64()
  %29 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %30 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %32 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %34 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
