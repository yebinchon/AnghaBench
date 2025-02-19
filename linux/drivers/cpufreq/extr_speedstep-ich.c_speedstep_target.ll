; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-ich.c_speedstep_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@_speedstep_set_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @speedstep_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @cpu_online_mask, align 4
  %10 = call i32 @cpumask_any_and(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @_speedstep_set_state, align 4
  %13 = call i32 @smp_call_function_single(i32 %11, i32 %12, i32* %4, i32 1)
  ret i32 0
}

declare dso_local i32 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
