; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_unicore2-cpufreq.c_ucv2_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_unicore2-cpufreq.c_ucv2_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32 }
%struct.cpufreq_freqs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @ucv2_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucv2_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpufreq_freqs, align 4
  %8 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %16 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %15, %struct.cpufreq_freqs* %7)
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 %20, 1000
  %22 = call i32 @clk_set_rate(i32 %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %23, %struct.cpufreq_freqs* %7, i32 %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
