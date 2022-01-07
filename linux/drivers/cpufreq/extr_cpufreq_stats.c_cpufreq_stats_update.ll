; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_stats = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_stats*)* @cpufreq_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_stats_update(%struct.cpufreq_stats* %0) #0 {
  %2 = alloca %struct.cpufreq_stats*, align 8
  %3 = alloca i64, align 8
  store %struct.cpufreq_stats* %0, %struct.cpufreq_stats** %2, align 8
  %4 = call i64 (...) @get_jiffies_64()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %7 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %5, %8
  %10 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %11 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %14 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, %9
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %2, align 8
  %23 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  ret void
}

declare dso_local i64 @get_jiffies_64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
